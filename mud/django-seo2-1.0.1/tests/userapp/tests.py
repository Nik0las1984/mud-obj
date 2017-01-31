"""
Test suite for SEO framework.

It is divided into 7 sections:

* Data selection (Unit tests)
* Value resolution (Unit tests)
* Formatting (Unit tests)
* Definition (System tests)
* Meta options (System tests)
* Templates (System tests)
* Random (series of various uncategorised tests)


TESTS TO WRITE:
For better coverage:
    - valid_tags given as a string
    - Meta.seo_models = appname.modelname (ie with a dot)
    + if "head" is True, tag is automatically included in the head,
      if "false" then no
    + if "name" is included, that is the name of the given tag, otherwise,
      the field name is used
    + if verbose_name is used, pass on to field (through field_kwargs)
    + if the field argument given, that Django field type is used (NB default
      field argument incompatibility?)
    + if editable is set to False, no Django model field is created. The
      value is always from populate_from
    + if choices is given it is passed onto the field, (expanded if just a
      list of strings)
    + groups: these elements are grouped together in the admin and can be
      output together in the template
    + use_sites: add a 'site' field to each model. Non-matching sites are
      removed, null is allowed, meaning all sites match.
    + sites conflicting sites, when two entries exist for different sites,
      the explicit (local) one wins. (Even better: both are used, in the
      appropriate order)
    + models: list of models and/or apps which are available for model
      instance metadata
    - verbose_name(_plural): this is passed onto Django
"""

from __future__ import unicode_literals

import hashlib

from django.core.urlresolvers import reverse
from django.test import TestCase

try:
    from django.test import TransactionTestCase
except ImportError:
    TransactionTestCase = TestCase
from django.test.client import FakePayload
from django.contrib.contenttypes.models import ContentType
from django.contrib.sites.models import Site
from django.contrib.auth.models import User
from django.conf import settings
from django.db import IntegrityError, transaction
from django.core.handlers.wsgi import WSGIRequest
from django.template import Template, RequestContext, TemplateSyntaxError
from django.core.cache import cache
from django.utils.encoding import iri_to_uri
from django.core.management import call_command
from six import text_type

from djangoseo.base import registry, get_metadata as seo_get_metadata
from userapp.models import Page, Product, Category, NoPath, Tag
from userapp.seo import (Coverage, WithSites, WithI18n, WithRedirect,
                         WithRedirectSites, WithCache, WithCacheSites,
                         WithCacheI18n, WithBackends)


def get_metadata(path):
    return seo_get_metadata(path, name="Coverage")


class DataSelection(TestCase):
    """
    Data selection (unit tests). Test how metadata objects are discovered.
    """

    def setUp(self):
        # Model instance metadata
        self.product = Product.objects.create()
        self.product_content_type = ContentType.objects.get_for_model(Product)
        # NB if signals aren't working, the following will fail.
        self.product_metadata = Coverage._meta.get_model(
            'modelinstance').objects.get(
            _content_type=self.product_content_type,
            _object_id=self.product.id)
        self.product_metadata.title = "ModelInstance title"
        self.product_metadata.keywords = "ModelInstance keywords"
        self.product_metadata.save()

        self.page = Page.objects.create(title="Page Title", type="abc")
        self.page_content_type = ContentType.objects.get_for_model(Page)
        self.page_metadata = Coverage._meta.get_model(
            'modelinstance').objects.get(_content_type=self.page_content_type,
                                         _object_id=self.page.id)
        self.page_metadata.title = "Page title"
        self.page_metadata.keywords = "Page keywords"
        self.page_metadata.save()

        # Model metadata
        self.model_metadata = Coverage._meta.get_model('model').objects.create(
            _content_type=self.product_content_type, title="Model title",
            keywords="Model keywords")

        # Path metadata
        self.path_metadata = Coverage._meta.get_model('path').objects.create(
            _path="/path/", title="Path title", keywords="Path keywords")

        # View metadata
        self.view_metadata = Coverage._meta.get_model('view').objects.create(
            _view="userapp_my_view", title="View title",
            keywords="View keywords")

    def test_path(self):
        """Checks that a direct path listing is always found first."""
        path = self.product.get_absolute_url()
        self.assertNotEqual(get_metadata(path).title.value, 'Path title')
        self.assertEqual(get_metadata(path).title.value, 'ModelInstance title')
        self.path_metadata._path = path
        self.path_metadata.save()
        self.assertEqual(get_metadata(path).title.value, 'Path title')

    def test_model_instance(self):
        # With no matching instances, the default should be used
        page = Page(title="Title", type="newpage")
        path = page.get_absolute_url()
        self.assertEqual(get_metadata(path).title.value, "example.com")

        # Check that a new metadata instance is created
        old_count = Coverage._meta.get_model(
            'modelinstance').objects.all().count()
        page.save()
        new_count = Coverage._meta.get_model(
            'modelinstance').objects.all().count()
        self.assertEqual(new_count, old_count + 1)

        # Check that the correct data is loaded
        assert 'New Page title' not in text_type(get_metadata(path).title)
        Coverage._meta.get_model('modelinstance').objects.filter(
            _content_type=self.page_content_type, _object_id=page.id).update(
            title="New Page title")
        self.assertEqual(get_metadata(path).title.value, 'New Page title')

    def test_model(self):
        path = self.product.get_absolute_url()

        # Model metadata only works if there is no instance metadata
        self.assertEqual(get_metadata(path).title.value, 'ModelInstance title')
        self.assertEqual(get_metadata(path).keywords.value,
                         'ModelInstance keywords')

        # Remove the instance metadata
        self.product_metadata.keywords = ''
        self.product_metadata.save()

        self.assertEqual(get_metadata(path).keywords.value, 'Model keywords')

    def test_view(self):
        path = '/my/view/text/'
        path_metadata = Coverage._meta.get_model('path').objects.create(
            _path=path, title="Path title")
        self.assertEqual(get_metadata(path).title.value, 'Path title')
        path_metadata.delete()
        self.assertEqual(get_metadata(path).title.value, 'View title')

    def test_sites(self):
        """
        Tests the django.contrib.sites support.
        A separate metadata definition is used, WithSites, which has turned
        on sites support.
        """
        path = "/abc/"
        site = Site.objects.get_current()
        path_metadata = WithSites._meta.get_model('path').objects.create(
            _site=site, title="Site Path title", _path=path)
        self.assertEqual(seo_get_metadata(path, name="WithSites").title.value,
                         'Site Path title')
        # Metadata with site=null should work
        path_metadata._site_id = None
        path_metadata.save()
        self.assertEqual(seo_get_metadata(path, name="WithSites").title.value,
                         'Site Path title')
        # Metadata with an explicitly wrong site should not work
        path_metadata._site_id = site.id + 1
        path_metadata.save()
        self.assertEqual(seo_get_metadata(path, name="WithSites").title.value,
                         None)

    def test_i18n(self):
        """
        Tests the i18n support, allowing a language to be associated with
        metadata entries.
        """
        path = "/abc/"
        language = 'de'
        path_metadata = WithI18n._meta.get_model('path').objects.create(
            _language=language, title="German Path title", _path=path)
        self.assertEqual(
            seo_get_metadata(path, name="WithI18n",
                             language=language).title.value,
            'German Path title')
        # Metadata with an explicitly wrong site should not work
        path_metadata._language = "en"
        path_metadata.save()
        self.assertEqual(
            seo_get_metadata(path, name="WithI18n",
                             language=language).title.value,
            None)

    #     # FUTURE feature
    #
    # def test_redirect(self):
    #     """
    #     Tests django.contrib.redirect support, automatically adding
    #     redirects for new paths.
    #     """
    #     old_path = "/abc/"
    #     new_path = "/new-path/"
    #
    #     # Check that the redirect doesn't already exist
    #     self.assertEqual(Redirect.objects.filter(old_path=old_path,
    #                                              new_path=new_path).count(),
    #                                              0)
    #
    #     path_metadata = WithRedirect._meta.get_model('path').objects.create(
    #         title="A Path title", _path=old_path)
    #     self.assertEqual(
    #         seo_get_metadata(old_path, name="WithRedirect").title.value,
    #         'A Path title')
    #
    #     # Rename the path
    #     path_metadata._path = new_path
    #     path_metadata.save()
    #     self.assertEqual(
    #         seo_get_metadata(old_path, name="WithRedirect").title.value,
    #                          None)
    #     self.assertEqual(
    #         seo_get_metadata(new_path, name="WithRedirect").title.value,
    #         'A Path title')
    #
    #     # Check that a redirect was created
    #     self.assertEqual(Redirect.objects.filter(old_path=old_path,
    #                                              new_path=new_path).count(),
    #                                              1)
    #
    # def test_redirect_with_sites(self):
    #     """
    #     Tests django.contrib.redirect support, automatically adding
    #     redirects for new paths.
    #     """
    #     old_path = "/abc/"
    #     new_path = "/new-path/"
    #     site = Site.objects.get_current()
    #
    #     # Check that the redirect doesn't already exist
    #     self.assertEqual(
    #         Redirect.objects.filter(old_path=old_path, new_path=new_path,
    #                                 site=site).count(), 0)
    #
    #     path_metadata = WithRedirectSites._meta.get_model(
    #         'path').objects.create(title="A Path title", _path=old_path,
    #                                _site=site)
    #     self.assertEqual(
    #         seo_get_metadata(old_path, name="WithRedirectSites").title.value,
    #         'A Path title')
    #
    #     # Rename the path
    #     path_metadata._path = new_path
    #     path_metadata.save()
    #     self.assertEqual(
    #         seo_get_metadata(old_path, name="WithRedirectSites").title.value,
    #         None)
    #     self.assertEqual(
    #         seo_get_metadata(new_path, name="WithRedirectSites").title.value,
    #         'A Path title')
    #
    #     # Check that a redirect was created
    #     self.assertEqual(
    #         Redirect.objects.filter(old_path=old_path, new_path=new_path,
    #                                 site=site).count(), 1)

    def test_missing_value(self):
        """
        Checks that nothing breaks when no value could be found.
        The value should be None, the output blank (if that is appropriate
        for the field).
        """
        path = "/abc/"
        self.assertEqual(seo_get_metadata(path, name="WithSites").title.value,
                         None)
        self.assertEqual(
            text_type(seo_get_metadata(path, name="WithSites").title), "")

    def test_path_conflict(self):
        """
        Check the crazy scenario where an existing metadata object has the
        same path.
        """
        old_path = self.product_metadata._path
        self.product_metadata._path = '/products/2/'
        self.product_metadata.save()
        self.assertEqual(self.product_metadata._object_id, self.product.pk)

        # Create a new product that will take the same path
        new_product = Product.objects.create()
        Coverage._meta.get_model('modelinstance').objects.filter(
            _content_type=self.product_content_type,
            _object_id=new_product.id).update(title="New Title")

        # This test will not work if we have the id wrong
        if new_product.id != 2:
            raise Exception(
                "Test Error: the product ID is not as expected, this test "
                "cannot work.")

        # Check that the existing path was corrected
        product_metadata = Coverage._meta.get_model(
            'modelinstance').objects.get(id=self.product_metadata.id)
        self.assertEqual(old_path, product_metadata._path)

        # Check the new data is available under the correct path
        metadata = get_metadata(path="/products/2/")
        self.assertEqual(metadata.title.value, "New Title")

    def test_useful_error_messages(self):
        """
        Tests that the system gracefully handles a developer error
        (eg exception in get_absolute_url).
        """
        from django.core.urlresolvers import NoReverseMatch
        try:
            # this causes get_absolute_url() to fail
            self.page.type = "a type with spaces!"
            self.page.save()
            self.fail("No exception raised on developer error.")
        except NoReverseMatch:
            pass

    def test_missing_meta(self):
        """
        Check that no exceptions are raised when the metadata object is
        missing.
        """
        try:
            self.page_metadata.delete()
            self.page.title = "A New Page Title"
            self.page.save()
            Coverage._meta.get_model('modelinstance').objects.get(
                _content_type=self.page_content_type,
                _object_id=self.page.id).delete()
            self.page.type = "a-new-type"
            self.page.save()
            Coverage._meta.get_model('modelinstance').objects.get(
                _content_type=self.page_content_type,
                _object_id=self.page.id).delete()
            self.page.delete()
        except Exception as e:
            self.fail("Exception raised inappropriately: %r" % e)

    def test_path_change(self):
        """Check the ability to change the path of metadata."""
        self.page.type = "new-type"
        self.page.save()
        metadata_1 = Coverage._meta.get_model('modelinstance').objects.get(
            _path=self.page.get_absolute_url())
        metadata_2 = Coverage._meta.get_model('modelinstance').objects.get(
            _content_type=self.page_content_type, _object_id=self.page.id)
        self.assertEqual(metadata_1.id, metadata_2.id)

        self.assertEqual(
            get_metadata(path=self.page.get_absolute_url()).title.value,
            'Page title')

    def test_delete_object(self):
        """
        Tests that an object can be deleted, and the metadata is
        deleted with it.
        """
        num_metadata = Coverage._meta.get_model(
            'modelinstance').objects.all().count()
        old_path = self.page.get_absolute_url()
        self.page.delete()
        self.assertEqual(
            Coverage._meta.get_model('modelinstance').objects.all().count(),
            num_metadata - 1)
        self.assertEqual(
            Coverage._meta.get_model('modelinstance').objects.filter(
                _path=old_path).count(), 0)

    def test_group(self):
        """Checks that groups can be accessed directly."""
        path = self.path_metadata._path
        self.path_metadata.raw1 = "<title>Raw 1</title>"
        self.path_metadata.raw2 = "<title>Raw 1</title>"
        self.path_metadata.help_text1 = "Help Text 1"
        self.path_metadata.help_text3 = "Help Text 3"
        self.path_metadata.help_text4 = "Help Text 4"
        self.path_metadata.save()

        self.assertEqual(get_metadata(path).advanced,
                         '<title>Raw 1</title>\n<title>Raw 1</title>')
        self.assertEqual(get_metadata(path).help_text,
                         '''<help_text1>Help Text 1</help_text1>

<help_text3>Help Text 3</help_text3>
<help_text4>Help Text 4</help_text4>''')

    def test_wrong_name(self):
        """Missing attribute should raise an AttributeError."""
        path = self.path_metadata._path
        metadata = get_metadata(path)
        try:
            metadata.this_does_not_exist
        except AttributeError:
            pass
        else:
            self.fail("AttributeError should be raised on missing "
                      "FormattedMetadata attribute.")


class ValueResolution(TestCase):
    """Value resolution (unit tests)."""

    def setUp(self):
        InstanceMetadata = Coverage._meta.get_model('modelinstance')
        ModelMetadata = Coverage._meta.get_model('model')
        ViewMetadata = Coverage._meta.get_model('view')

        self.page1 = Page.objects.create(title="MD Page One Title",
                                         type="page-one-type",
                                         content="Page one content.")
        self.page2 = Page.objects.create(type="page-two-type",
                                         content="Page two content.")

        self.page_content_type = ContentType.objects.get_for_model(Page)

        self.metadata1 = InstanceMetadata.objects.get(
            _content_type=self.page_content_type, _object_id=self.page1.id)
        self.metadata1.keywords = "MD Keywords"
        self.metadata1.save()
        self.metadata2 = InstanceMetadata.objects.get(
            _content_type=self.page_content_type, _object_id=self.page2.id)

        self.model_metadata = ModelMetadata(
            _content_type=self.page_content_type)
        self.model_metadata.title = "MMD { Title"
        self.model_metadata.keywords = "MMD Keywords, {{ page.type }}, " \
                                       "more keywords"
        self.model_metadata.description = "MMD Description for {{ page }} " \
                                          "and {{ page }}"
        self.model_metadata.save()

        self.context1 = get_metadata(path=self.page1.get_absolute_url())
        self.context2 = get_metadata(path=self.page2.get_absolute_url())

        self.view_metadata = ViewMetadata.objects.create(
            _view="userapp_my_view")
        self.view_metadata.title = "MD {{ text }} Title"
        self.view_metadata.keywords = "MD {{ text }} Keywords"
        self.view_metadata.description = "MD {{ text }} Description"
        self.view_metadata.save()

    def test_direct_data(self):
        """Check data is used directly when it is given."""
        self.assertEqual(self.context1.keywords.value, 'MD Keywords')

    def test_populate_from_literal(self):
        # Explicit literal
        self.assertEqual(self.context1.populate_from3.value, 'efg')
        # Implicit literal is not evaluated (None)
        self.assertEqual(self.context1.populate_from4.value, None)
        self.assertEqual(self.context1.populate_from5.value, None)

    def test_populate_from_callable(self):
        # Callable given as a string
        self.assertEqual(self.context1.populate_from1.value, 'wxy')
        # Callable given as callable (method)
        self.assertEqual(self.context1.populate_from7.value,
                         'model instance content: Page one content.')

    def test_populate_from_field(self):
        # Data direct from another field
        self.assertEqual(self.context1.populate_from6.value, 'MD Keywords')
        # Data direct from another field's populate_from
        self.assertEqual(self.context1.populate_from2.value, None)

    def test_fallback_order(self):
        path = self.page1.get_absolute_url()
        # Collect instances from all four metadata model for the same path
        # Each will have a title (ie field with populate_from) and a heading
        # (ie field without populate_from)
        path_md = Coverage._meta.get_model('path').objects.create(
            _path=path,
            title='path title',
            heading="path heading")
        modelinstance_md = self.metadata1
        model_md = self.model_metadata
        view_md = Coverage._meta.get_model('view').objects.create(
            _view='userapp_page_detail', title='view title',
            heading="view heading")
        # Correct some values
        modelinstance_md.title = "model instance title"
        modelinstance_md.heading = "model instance heading"
        modelinstance_md.save()
        model_md.title = "model title"
        model_md.heading = "model heading"
        model_md.save()

        # A convenience function for future checks
        def check_values(title, heading, heading2):
            self.assertEqual(get_metadata(path=path).title.value, title)
            self.assertEqual(get_metadata(path=path).heading.value, heading)
            self.assertEqual(get_metadata(path=path).populate_from2.value,
                             heading2)

        # Path is always found first
        check_values("path title", "path heading", "path heading")

        # populate_from is from the path model first
        path_md.title = ""
        path_md.save()
        check_values("example.com", "path heading", "path heading")

        # a field without populate_from just needs to be blank to fallback
        # (heading)
        # a field with populate_from needs to be deleted (title) or have
        # populate_from resolve to blank (populate_from2)
        path_md.heading = ""
        path_md.save()
        check_values("example.com", "model instance heading",
                     "model instance heading")

        path_md.delete()
        check_values("model instance title", "model instance heading",
                     "model instance heading")

        modelinstance_md.title = ""
        modelinstance_md.heading = ""
        modelinstance_md.save()
        check_values("example.com", "model heading", "model heading")

        modelinstance_md.delete()
        model_md.delete()
        check_values("view title", "view heading", "view heading")

        # Nothing matches, no metadata shown
        # TODO: Should populate_from be tried?
        view_md.delete()
        check_values("example.com", None, None)

    def test_fallback_order2(self):
        """Checks a conflict between populate_from and model metadata."""
        path = self.page1.get_absolute_url()
        modelinstance_md = self.metadata1

        self.assertEqual(get_metadata(path=path).populate_from3.value, "efg")
        modelinstance_md.populate_from3 = "not efg"
        modelinstance_md.save()
        self.assertEqual(get_metadata(path=path).populate_from3.value,
                         "not efg")

    def test_model_variable_substitution(self):
        """Simple check to see if model variable substitution is happening."""
        self.assertEqual(self.context2.keywords.value,
                         'MMD Keywords, page-two-type, more keywords')
        self.assertEqual(self.context1.description.value,
                         'MMD Description for MD Page One Title and MD Page '
                         'One Title')
        self.assertEqual(self.context2.description.value,
                         'MMD Description for Page two content. and Page two '
                         'content.')

    def test_view_variable_substitution(self):
        """Simple check to see if view variable substitution is happening."""
        response = self.client.get(reverse('userapp_my_view', args=["abc123"]))
        self.assertContains(response, '<title>MD abc123 Title</title>')
        self.assertContains(response,
                            '<meta name="keywords" content="MD abc123 '
                            'Keywords" />')
        self.assertContains(response,
                            '<meta name="hs:metatag" content="MD abc123 '
                            'Description" />')

    def test_not_request_context(self):
        """Tests the view metadata on a view that is not a request context."""
        self.view_metadata._view = "userapp_my_other_view"
        self.view_metadata.save()
        try:
            self.client.get(
                reverse('userapp_my_other_view', args=["abc123"]))
            self.fail("No error raised when RequestContext not used.")
        except TemplateSyntaxError:
            pass


class Formatting(TestCase):
    """Formatting (unit tests)."""

    def setUp(self):
        self.path_metadata = Coverage._meta.get_model('path')(
            _path="/",
            title="The <strong>Title</strong>",
            heading="The <em>Heading</em>",
            keywords='Some, keywords", with\n other, chars\'',
            description="A \n description with \" interesting\' chars.",
            raw1='<meta name="author" content="seo" /><hr /> '
                 'No text outside tags please.',
            raw2='<meta name="author" content="seo" />'
                 '<script>make_chaos();</script>')
        self.path_metadata.save()

        self.metadata = get_metadata(path="/")

    def test_html(self):
        """Tests html generation is performed correctly."""
        exp = ("<title>The <strong>Title</strong></title>\n"
               "<hs:tag>The <em>Heading</em></hs:tag>\n"
               '<meta name="keywords" content="Some, keywords&quot;, with,  '
               'other, chars&#39;" />\n'
               '<meta name="hs:metatag" content="A   description with &quot; '
               'interesting&#39; chars." />\n'
               '<meta name="author" content="seo" />\n'
               '<meta name="author" content="seo" />')
        assert text_type(self.metadata).strip() == exp.strip(), \
            "Incorrect html:\n" + text_type(
                self.metadata) + "\n\n" + text_type(exp)

    def test_description(self):
        """Tests the tag2 is cleaned correctly."""
        exp = "A   description with &quot; interesting&#39; chars."
        self.assertEqual(self.metadata.description.value, exp)
        exp = '<meta name="hs:metatag" content="%s" />' % exp
        self.assertEqual(text_type(self.metadata.description), exp)

    def test_keywords(self):
        """Tests keywords are cleaned correctly."""
        exp = "Some, keywords&quot;, with,  other, chars&#39;"
        self.assertEqual(self.metadata.keywords.value, exp)
        exp = '<meta name="keywords" content="%s" />' % exp
        self.assertEqual(text_type(self.metadata.keywords), exp)

    def test_inline_tags(self):
        """Tests the title is cleaned correctly."""
        exp = 'The <strong>Title</strong>'
        self.assertEqual(self.metadata.title.value, exp)
        exp = '<title>%s</title>' % exp
        self.assertEqual(text_type(self.metadata.title), exp)

    def test_inline_tags2(self):
        """Tests the title is cleaned correctly."""
        self.path_metadata.title = "The <strong id=\"mytitle\">Title</strong>"
        self.path_metadata.save()
        metadata = get_metadata(self.path_metadata._path)
        exp = 'The <strong id=\"mytitle\">Title</strong>'
        self.assertEqual(metadata.title.value, exp)
        exp = '<title>%s</title>' % exp
        self.assertEqual(text_type(metadata.title), exp)

    def test_inline_tags3(self):
        """Tests the title is cleaned correctly."""
        self.path_metadata.title = "The < strong >Title</ strong >"
        self.path_metadata.save()
        metadata = get_metadata(self.path_metadata._path)
        exp = 'The < strong >Title</ strong >'
        self.assertEqual(metadata.title.value, exp)
        exp = '<title>%s</title>' % exp
        self.assertEqual(text_type(metadata.title), exp)

    def test_inline_tags4(self):
        """Tests the title is cleaned correctly."""
        self.path_metadata.title = "The <strong class=\"with&quot;inside\">" \
                                   "Title</strong>"
        self.path_metadata.save()
        metadata = get_metadata(self.path_metadata._path)
        exp = 'The <strong class="with&quot;inside">Title</strong>'
        self.assertEqual(metadata.title.value, exp)
        exp = '<title>%s</title>' % exp
        self.assertEqual(text_type(metadata.title), exp)

    def test_inline_tags5(self):
        """Tests the title is cleaned correctly."""
        self.path_metadata.title = "The Title <!-- with a comment -->"
        self.path_metadata.save()
        metadata = get_metadata(self.path_metadata._path)
        exp = 'The Title <!-- with a comment -->'
        self.assertEqual(metadata.title.value, exp)
        exp = '<title>%s</title>' % exp
        self.assertEqual(text_type(metadata.title), exp)

    def test_forbidden_tags(self):
        """Tests the title is cleaned correctly."""
        self.path_metadata.title = "The <div>Title</div>"
        self.path_metadata.save()
        metadata = get_metadata(self.path_metadata._path)
        exp = 'The &lt;div&gt;Title&lt;/div&gt;'
        self.assertEqual(metadata.title.value, exp)
        exp = '<title>%s</title>' % exp
        self.assertEqual(text_type(metadata.title), exp)

    def test_raw1(self):
        """Tests that raw fields in head are cleaned correctly."""
        exp = '<meta name="author" content="seo" />'
        self.assertEqual(self.metadata.raw1.value, exp)
        self.assertEqual(text_type(self.metadata.raw1), exp)

    def test_raw2(self):
        """Tests that raw fields in head are cleaned correctly."""
        exp = '<meta name="author" content="seo" />'
        self.assertEqual(self.metadata.raw2.value, exp)
        self.assertEqual(text_type(self.metadata.raw2), exp)

    def test_raw3(self):
        """Checks that raw fields aren't cleaned too enthusiastically."""
        self.path_metadata.raw1 = '<title>Raw title 1</title>'
        self.path_metadata.raw2 = '<title>Raw title 2</title>'
        self.path_metadata.save()
        metadata = get_metadata(path="/")

        exp = '<title>Raw title 1</title>'
        self.assertEqual(metadata.raw1.value, exp)
        self.assertEqual(text_type(metadata.raw1), exp)
        exp = '<title>Raw title 2</title>'
        self.assertEqual(metadata.raw2.value, exp)
        self.assertEqual(text_type(metadata.raw2), exp)


class Definition(TransactionTestCase):
    """
    Definition (System tests)
    + if "head" is True, tag is automatically included in the head
    + if "name" is included, that is the name of the given tag, otherwise,
      the field name is used
    + if verbose_name is used, pass on to field (through field_kwargs)
    + if the field argument given, that Django field type is used
    + if editable is set to False, no Django model field is created. The
      value is always from populate_from
    + if choices is given it is passed onto the field, (expanded if just a
      list of strings)
    """

    def test_backends(self):
        self.assertEqual(list(Coverage._meta.models),
                         ['path', 'modelinstance', 'model', 'view'])
        self.assertEqual(list(WithBackends._meta.models), ['view', 'path'])

    def test_help_text_direct(self):
        self.assert_help_text('help_text1', "Some help text 1.")

    def test_help_text_class(self):
        self.assert_help_text('help_text2', "Updated help text2.")

    def test_help_text_field(self):
        self.assert_help_text('help_text6', "Some help text 6.")
        self.assert_help_text('help_text5', "If empty, tag two will be used.")

    def test_help_text_callable(self):
        self.assert_help_text('help_text3', "Some help text 3.")
        self.assert_help_text('help_text4', "If empty, Always xyz")

    def test_help_text_literal(self):
        self.assert_help_text('populate_from3',
                              "If empty, \"efg\" will be used.")

    def assert_help_text(self, name, text):
        self.assertEqual(
            Coverage._meta.get_model('path')._meta.get_field(name).help_text,
            text)
        self.assertEqual(
            Coverage._meta.get_model('modelinstance')._meta.get_field(
                name).help_text, text)
        self.assertEqual(
            Coverage._meta.get_model('model')._meta.get_field(name).help_text,
            text)
        self.assertEqual(
            Coverage._meta.get_model('view')._meta.get_field(name).help_text,
            text)

    def test_uniqueness(self):
        # Check a path for uniqueness
        Coverage._meta.get_model('path').objects.create(_path="/unique/")
        try:
            Coverage._meta.get_model('path').objects.create(_path="/unique/")
            self.fail("Exception not raised when duplicate path created")
        except IntegrityError:
            transaction.rollback()

        # Check that uniqueness handles sites correctly
        current_site = Site.objects.get_current()
        another_site = Site.objects.create(id=current_site.id + 1)
        WithSites._meta.get_model('path').objects.create(_site=current_site,
                                                         _path="/unique/")
        WithSites._meta.get_model('path').objects.create(
            _site=another_site, _path="/unique/")
        try:
            WithSites._meta.get_model('path').objects.create(
                _site=current_site, _path="/unique/")
            self.fail("Exception not raised when duplicate path/site "
                      "combination created")
        except IntegrityError:
            transaction.rollback()


class MetaOptions(TestCase):
    """
    Meta options (System tests)
    + groups: these elements are grouped together in the admin and can be
      output together in the template
    + use_sites: add a 'site' field to each model. Non-matching sites are
      removed, null is allowed, meaning all sites match.
    + use_i18n:
    + use_redirect:
    + use_cache:
    + seo_models: list of models and/or apps which are available for model
      instance metadata
    + seo_views: list of models and/or apps which are available for model
      instance metadata
    - verbose_name(_plural): this is passed onto Django
    + HelpText: Help text can be applied in bulk by using a special class,
      like 'Meta'
    """

    def test_use_cache(self):
        """
        Checks that cache is being used when use_cache is set.
        Will only work if cache backend is not dummy.
        """
        if 'dummy' not in settings.CACHE_BACKEND:
            path = '/'
            hexpath = hashlib.md5(iri_to_uri(path)).hexdigest()

            # text_type(seo_get_metadata(path, name="Coverage"))
            text_type(seo_get_metadata(path, name="WithCache"))

            self.assertEqual(
                cache.get('djangoseo.Coverage.%s.title' % hexpath), None)
            self.assertEqual(
                cache.get('djangoseo.WithCache.%s.title' % hexpath), "1234")
            self.assertEqual(
                cache.get('djangoseo.WithCache.%s.subtitle' % hexpath), "")

    def test_use_cache_site(self):
        """Checks that the cache plays nicely with sites."""
        if 'dummy' not in settings.CACHE_BACKEND:
            path = '/'
            site = Site.objects.get_current()
            hexpath = hashlib.md5(iri_to_uri(site.domain + path)).hexdigest()

            # text_type(seo_get_metadata(path, name="Coverage"))
            text_type(seo_get_metadata(path, name="WithCacheSites", site=site))

            self.assertEqual(
                cache.get('djangoseo.Coverage.%s.title' % hexpath), None)
            self.assertEqual(
                cache.get('djangoseo.WithCacheSites.%s.title' % hexpath),
                "1234")
            self.assertEqual(
                cache.get('djangoseo.WithCacheSites.%s.subtitle' % hexpath),
                "")

    def test_use_cache_i18n(self):
        """Checks that the cache plays nicely with i18n."""
        if 'dummy' not in settings.CACHE_BACKEND:
            path = '/'
            hexpath = hashlib.md5(iri_to_uri(path)).hexdigest()

            # text_type(seo_get_metadata(path, name="Coverage"))
            text_type(
                seo_get_metadata(path, name="WithCacheI18n", language='de'))

            self.assertEqual(
                cache.get('djangoseo.Coverage.%s.de.title' % hexpath), None)
            self.assertEqual(
                cache.get('djangoseo.WithCacheI18n.%s.en.title' % hexpath),
                None)
            self.assertEqual(
                cache.get('djangoseo.WithCacheI18n.%s.de.title' % hexpath),
                "1234")
            self.assertEqual(
                cache.get('djangoseo.WithCacheI18n.%s.de.subtitle' % hexpath),
                "")


class Templates(TestCase):
    """
    Templates (System tests)

    To write:
    - {% get_metadata ClassName on site in language for path as var %}
      All at once!
    """

    def setUp(self):
        self.path = "/abc/"
        Coverage._meta.get_model('path').objects.create(
            _path=self.path,
            title="A Title",
            description="A Description",
            raw1="Some raw text")
        self.metadata = get_metadata(path=self.path)
        self.context = {}

    def test_basic(self):
        self.deregister_alternatives()
        self.compilesTo("{% get_metadata %}", text_type(self.metadata))
        self.compilesTo("{% get_metadata as var %}{{ var }}",
                        text_type(self.metadata))

    def test_for_path(self):
        self.deregister_alternatives()
        path = self.path
        self.path = "/another-path/"
        other_path = "/a-third-path/"
        # Where the path does not find a metadata object, defaults should be
        # returned
        self.compilesTo("{%% get_metadata for \"%s\" %%}" % other_path,
                        "<title>example.com</title>")
        self.compilesTo(
            "{%% get_metadata for \"%s\" as var %%}{{ var }}" % other_path,
            "<title>example.com</title>")

        self.compilesTo("{%% get_metadata for \"%s\" %%}" % path,
                        text_type(self.metadata))
        self.compilesTo(
            "{%% get_metadata for \"%s\" as var %%}{{ var }}" % path,
            text_type(self.metadata))

    def test_for_obj(self):
        self.deregister_alternatives()
        path = self.path
        self.path = "/another-path/"
        # Where the path does not find a metadata object, defaults should be
        # returned
        self.context = {'obj': {'get_absolute_url': lambda: "/a-third-path/"}}
        self.compilesTo("{% get_metadata for obj %}",
                        "<title>example.com</title>")
        self.compilesTo("{% get_metadata for obj as var %}{{ var }}",
                        "<title>example.com</title>")

        self.context = {'obj': {'get_absolute_url': lambda: path}}
        self.compilesTo("{% get_metadata for obj %}", text_type(self.metadata))
        self.compilesTo("{% get_metadata for obj as var %}{{ var }}",
                        text_type(self.metadata))

    def test_for_obj_no_metadata(self):
        """
        Checks that defaults are used when no metadata object (previously)
        exists.
        The relevant path is also removed so that the object's link to the
        database is used.
        """
        self.deregister_alternatives()

        # Remove all metadata
        Metadata = Coverage._meta.get_model('modelinstance')

        # Create a page with metadata (with a path that get_metadata
        # won't find)
        page = Page.objects.create(title="Page Title", type="nometadata",
                                   content="no meta data")
        content_type = ContentType.objects.get_for_model(Page)
        Metadata.objects.filter(
            _content_type=content_type,
            _object_id=page.pk).update(title="Page Title",
                                       _path="/different/")

        expected_output = '<title>Page Title</title>'

        # Check the output of the template is correct when the metadata exists
        self.context = {'obj': page}
        self.compilesTo("{% get_metadata for obj %}", expected_output)
        self.compilesTo("{% get_metadata for obj as var %}{{ var }}",
                        expected_output)
        self.compilesTo(
            "{% get_metadata for obj as var %}{{ var.populate_from7 }}",
            '<populate_from7>model instance content: no meta data</populate_'
            'from7>')

        # Check the output is correct when there is no metadata
        Metadata.objects.filter(_content_type=content_type,
                                _object_id=page.pk).delete()
        self.compilesTo("{% get_metadata for obj %}",
                        "<title>example.com</title>")
        self.compilesTo("{% get_metadata for obj as var %}{{ var }}",
                        "<title>example.com</title>")
        self.compilesTo(
            "{% get_metadata for obj as var %}{{ var.populate_from7 }}",
            '<populate_from7>model instance content: no meta data</populate_'
            'from7>')

    def test_for_obj_no_path(self):
        InstanceMetadata = Coverage._meta.get_model('modelinstance')
        self.deregister_alternatives()

        # NoPath objects can exist without a matching metadata instance
        obj1 = NoPath.objects.create()
        obj2 = NoPath.objects.create()
        content_type = ContentType.objects.get_for_model(NoPath)
        InstanceMetadata.objects.create(
            _content_type=content_type, _object_id=obj2.id,
            title="Correct Title")

        self.context = {'obj': obj2}
        expected_metadata = '<title>Correct Title</title>'
        self.compilesTo("{% get_metadata for obj %}", expected_metadata)
        self.compilesTo("{% get_metadata for obj as var %}{{ var }}",
                        expected_metadata)

        # Where the object does not link to a metadata object, defaults should
        # be returned
        self.context = {'obj': obj1}
        self.compilesTo("{% get_metadata for obj %}",
                        "<title>example.com</title>")
        self.compilesTo("{% get_metadata for obj as var %}{{ var }}",
                        "<title>example.com</title>")

    def test_wrong_class_name(self):
        self.compilesTo("{% get_metadata WithSites %}", "")
        self.compilesTo("{% get_metadata WithSites as var %}{{ var }}", "")

    def test_bad_class_name(self):
        try:
            self.compilesTo("{% get_metadata ThisDoesNotExist %}",
                            "This should have raised an exception")
        except TemplateSyntaxError:
            pass
        try:
            self.compilesTo(
                "{% get_metadata ThisDoesNotExist as var %}{{ var }}",
                "This should have raised an exception")
        except TemplateSyntaxError:
            pass

    def test_missing_class_name_when_required(self):
        try:
            self.compilesTo("{% get_metadata %}",
                            "This should have raised an exception")
        except TemplateSyntaxError:
            pass

    def test_bad_class_name_when_only_one(self):
        self.deregister_alternatives()
        try:
            self.compilesTo("{% get_metadata ThisDoesNotExist %}",
                            "This should have raised an exception")
        except TemplateSyntaxError:
            pass

    def test_class_name(self):
        self.compilesTo("{% get_metadata Coverage %}",
                        text_type(self.metadata))
        self.compilesTo("{% get_metadata Coverage as var %}{{ var }}",
                        text_type(self.metadata))
        path = self.path
        self.context = {'obj': {'get_absolute_url': lambda: path}}
        self.path = "/another-path/"
        self.compilesTo("{%% get_metadata Coverage for \"%s\" %%}" % path,
                        text_type(self.metadata))
        self.compilesTo(
            "{%% get_metadata Coverage for \"%s\" as var %%}{{ var }}" % path,
            text_type(self.metadata))
        self.compilesTo("{% get_metadata Coverage for obj %}",
                        text_type(self.metadata))
        self.compilesTo("{% get_metadata Coverage for obj as var %}{{ var }}",
                        text_type(self.metadata))

    def test_variable_group(self):
        self.deregister_alternatives()
        self.compilesTo("{% get_metadata as var %}{{ var.advanced }}",
                        text_type(self.metadata.raw1))

    def test_variable_field(self):
        self.deregister_alternatives()
        self.compilesTo("{% get_metadata as var %}{{ var.raw1 }}",
                        text_type(self.metadata.raw1))

    def test_variable_field_value(self):
        self.deregister_alternatives()
        self.compilesTo("{% get_metadata as var %}{{ var.raw1.value }}",
                        "Some raw text")

    def test_variable_field_name(self):
        self.deregister_alternatives()
        self.compilesTo("{% get_metadata as var %}{{ var.raw1.field.name }}",
                        "raw1")

    def test_language(self):
        WithI18n._meta.get_model('path').objects.create(_path=self.path,
                                                        title="A Title",
                                                        _language="de")
        metadata = seo_get_metadata(path=self.path, name="WithSites",
                                    language="de")
        self.compilesTo('{% get_metadata WithI18n in "de" %}',
                        text_type(metadata))
        self.compilesTo('{% get_metadata WithI18n in "en" %}', "")

    def test_site(self):
        new_site = Site.objects.create(domain="new-example.com",
                                       name="New example")
        WithSites._meta.get_model('path').objects.create(_path=self.path,
                                                         title="A Title",
                                                         _site=new_site)
        metadata = seo_get_metadata(path=self.path, name="WithSites",
                                    site=new_site)
        self.compilesTo('{% get_metadata WithI18n on "new-example.com" %}',
                        text_type(metadata))
        self.compilesTo('{% get_metadata WithI18n in "example.com" %}', "")

    def compilesTo(self, input, expected_output):
        """
        Asserts that the given template string compiles to the given output.
        """
        input = '{% load seo %}' + input
        environ = {
            'PATH_INFO': self.path,
            'REQUEST_METHOD': 'GET',
            'wsgi.input': FakePayload(''),
        }

        # Create a fake request for our purposes
        request = WSGIRequest(environ)
        context = RequestContext(request)
        context.update(self.context)
        self.assertEqual(Template(input).render(context).strip(),
                         expected_output.strip())

    def deregister_alternatives(self):
        """
        Deregister any alternative metadata classes for the sake of testing.
        This emulates the situation where there is only one metadata
        definition.
        """
        self._previous_registry = list(registry.items())
        for key in list(registry):
            del registry[key]
        registry['Coverage'] = Coverage

    def tearDown(self):
        # Reregister any missing classes
        if hasattr(self, '_previous_registry'):
            for key, val in self._previous_registry:
                if key not in registry:
                    registry[key] = val


class Random(TestCase):
    """
    - Caching
        - metadata lookups are avoided by caching previous rendering for
          certain amount of time
    """

    def setUp(self):
        self.Metadata = Coverage._meta.get_model('modelinstance')

        self.page = Page.objects.create(type="abc")
        self.content_type = ContentType.objects.get_for_model(Page)
        self.model_metadata = self.Metadata.objects.get(
            _content_type=self.content_type,
            _object_id=self.page.id)
        self.context = get_metadata(path=self.model_metadata._path)

    def test_default_fallback(self):
        """
        Tests the ability to use the current Site name as a default fallback.
        """
        from django.contrib.sites.models import Site
        site = Site.objects.get_current()
        self.assertEqual(site.name, self.context.title.value)

    def test_missing_path(self):
        """Checks that a model with a missing path is gracefully ignored."""
        num_metadata = self.Metadata.objects.all().count()
        try:
            NoPath.objects.create()
        except Exception as e:
            self.fail("Exception inappropriately raised: %r" % e)
        new_num_metadata = self.Metadata.objects.all().count()
        self.assertEqual(num_metadata, new_num_metadata)

    def test_management_populate(self):
        """
        Checks that populate_metadata command adds relevant metadata
        instances.
        """
        Metadata = Coverage._meta.get_model('modelinstance')
        self.page = Page.objects.create(type="def")

        # Check the number of existing metadata instances
        existing_metadata = Metadata.objects.count()
        if existing_metadata < 2:
            raise Exception("Test case requires at least 2 instances for "
                            "model instance metadata")

        # Remove one metadata, populate_metadata will add it again
        Metadata.objects.all()[0].delete()

        call_command('populate_metadata')

        # Check that we at least have as many as previously
        full_metadata = Metadata.objects.count()
        if full_metadata < existing_metadata:
            self.fail("No metadata objects created.")


class Admin(TestCase):
    def setUp(self):
        # Create and login a superuser for the admin
        user = User(username="admin", is_staff=True, is_superuser=True)
        user.set_password("admin")
        user.save()
        self.client.login(username="admin", password="admin")

    def test_inline_smoke(self):
        """
        Tests that no error is raised when viewing an inline in the admin.
        """
        path = '/admin/userapp/page/add/'
        try:
            response = self.client.get(path)
        except Exception as e:
            self.fail("Exception raised at '%s': %s" % (path, e))
        self.assertEqual(response.status_code, 200)

    def test_inline_add(self):
        path = '/admin/userapp/tag/add/'
        data = {
            "name": "Test",
            "djangoseo-coveragemodelinstance-_content_type-"
            "_object_id-0-title": "test",
            "djangoseo-coveragemodelinstance-_content_type-"
            "_object_id-TOTAL_FORMS": "1",
            "djangoseo-coveragemodelinstance-_content_type-"
            "_object_id-INITIAL_FORMS": "0",
            "djangoseo-coveragemodelinstance-_content_type-"
            "_object_id-MAX_NUM_FORMS": "1",
            "djangoseo-withsitesmodelinstance-_content_type-"
            "_object_id-TOTAL_FORMS": "1",
            "djangoseo-withsitesmodelinstance-_content_type-"
            "_object_id-INITIAL_FORMS": "0",
            "djangoseo-withsitesmodelinstance-_content_type-"
            "_object_id-MAX_NUM_FORMS": "1",
        }

        try:
            response = self.client.post(path, data, follow=True)
        except Exception as e:
            self.fail("Exception raised at '%s': %s" % (path, e))
        self.assertEqual(response.status_code, 200)

        path = '/admin/djangoseo/coveragemodel/add/'
        data = {
            "title": "Testing",
            "_content_type": '3',
        }

        try:
            response = self.client.post(path, data, follow=True)
        except Exception as e:
            self.fail("Exception raised at '%s': %s" % (path, e))
        self.assertEqual(response.status_code, 200)

    def test_inline_nonadmin(self):
        """
        Checks that a model that can be edited inline in the Admin
        automatically creates an instance when not using the Admin.
        """
        content_type = ContentType.objects.get_for_model(Tag)
        Metadata = Coverage._meta.get_model('modelinstance')

        tag = Tag(name="noinline")
        tag.save()
        try:
            Metadata.objects.get(_content_type=content_type, _object_id=tag.pk)
        except Metadata.DoesNotExist:
            self.fail("No metadata automatically created on .save()")

        # Try with create
        tag = Tag.objects.create(name="noinline2")
        try:
            Metadata.objects.get(_content_type=content_type, _object_id=tag.pk)
        except Metadata.DoesNotExist:
            self.fail(
                "No metadata automatically created after using .create()")

    def test_autoinline(self):
        for model in ('tag', 'page', 'product'):
            path = '/alt-admin/userapp/%s/add/' % model
            try:
                response = self.client.get(path)
            except Exception as e:
                self.fail("Exception raised at '%s': %s" % (path, e))
            self.assertContains(
                response,
                "seo-coveragemodelinstance-_content_type",
                status_code=200)
            self.assertNotContains(
                response,
                "seo-withsitesmodelinstance-_content_type")
            self.assertContains(
                response,
                "seo-withseomodelsmodelinstance-_content_type",
                status_code=200)
