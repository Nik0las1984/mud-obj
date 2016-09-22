(function() {
  describe("editor image upload plugin tests", function() {
    var data, editorImageUpload, file, inputFile, post, textarea;
    textarea = null;
    editorImageUpload = null;
    data = null;
    inputFile = null;
    file = null;
    post = null;
    beforeEach(function() {
      var fixtures;
      fixtures = jasmine.getFixtures();
      fixtures.fixturesPath = 'base/test/fixtures/';
      loadFixtures('editor.html');
      post = spyOn($, 'ajax');
      post.and.callFake(function(req) {
        var d;
        d = $.Deferred();
        d.resolve(data);
        return d.promise();
      });
      data = {
        url: "/path/image.jpg"
      };
      file = {
        name: "foo.jpg"
      };
      textarea = $('#id_comment').editor_image_upload({
        csrfToken: "foo csrf_token",
        target: "/foo/",
        placeholderText: "foo uploading {image_name}"
      });
      editorImageUpload = textarea.first().data('plugin_editor_image_upload');
      return inputFile = editorImageUpload.inputFile;
    });
    it("doesnt break selector chaining", function() {
      expect(textarea).toEqual($('#id_comment'));
      return expect(textarea.length).toEqual(1);
    });
    it("does nothing if the browser is not supported", function() {
      var inputFile2, org_formData, textarea2, trigger;
      org_formData = window.FormData;
      window.FormData = null;
      try {
        $(".js-box-image").off('click');
        textarea2 = $('#id_comment2').editor_image_upload();
        inputFile2 = textarea2.data('plugin_editor_image_upload').inputFile;
        trigger = spyOn(inputFile2, 'trigger');
        $(".js-box-image").trigger('click');
        return expect(trigger).not.toHaveBeenCalled();
      } finally {
        window.FormData = org_formData;
      }
    });
    it("opens the file choose dialog", function() {
      var trigger;
      trigger = spyOn(inputFile, 'trigger');
      $(".js-box-image").trigger('click');
      return expect(trigger).toHaveBeenCalled();
    });
    it("uploads the image", function() {
      var formDataMock;
      expect($.ajax.calls.any()).toEqual(false);
      formDataMock = jasmine.createSpyObj('formDataMock', ['append']);
      spyOn(window, "FormData").and.returnValue(formDataMock);
      spyOn(inputFile, 'get').and.returnValue({
        files: [file]
      });
      inputFile.trigger('change');
      expect($.ajax.calls.any()).toEqual(true);
      expect($.ajax.calls.argsFor(0)).toEqual([
        {
          url: '/foo/',
          data: formDataMock,
          processData: false,
          contentType: false,
          type: 'POST'
        }
      ]);
      expect(formDataMock.append).toHaveBeenCalledWith('csrfmiddlewaretoken', 'foo csrf_token');
      return expect(formDataMock.append).toHaveBeenCalledWith('image', {
        name: 'foo.jpg'
      });
    });
    it("adds the placeholder", function() {
      var ajaxMock;
      textarea.val("foobar");
      ajaxMock = jasmine.createSpyObj('ajax', ['done', 'fail']);
      post.and.returnValue(ajaxMock);
      spyOn(inputFile, 'get').and.returnValue({
        files: [file]
      });
      inputFile.trigger('change');
      return expect(textarea.val()).toEqual("foobar![foo uploading foo.jpg]()");
    });
    it("changes the placeholder on upload success", function() {
      textarea.val("foobar");
      spyOn(inputFile, 'get').and.returnValue({
        files: [file]
      });
      inputFile.trigger('change');
      return expect(textarea.val()).toEqual("foobar![foo.jpg](/path/image.jpg)");
    });
    it("changes the placeholder on upload error", function() {
      textarea.val("foobar");
      data = {
        error: {
          foo: "foo error"
        }
      };
      spyOn(inputFile, 'get').and.returnValue({
        files: [file]
      });
      inputFile.trigger('change');
      return expect(textarea.val()).toEqual("foobar![{\"error\":{\"foo\":\"foo error\"}}]()");
    });
    return it("changes the placeholder on upload failure", function() {
      var d;
      textarea.val("foobar");
      d = $.Deferred();
      post.and.callFake(function(req) {
        d.reject(null, "foo statusError", "bar error");
        return d.promise();
      });
      spyOn(inputFile, 'get').and.returnValue({
        files: [file]
      });
      inputFile.trigger('change');
      return expect(textarea.val()).toEqual("foobar![error: foo statusError bar error]()");
    });
  });

}).call(this);

//# sourceMappingURL=editor_image_upload-spec.js.map
