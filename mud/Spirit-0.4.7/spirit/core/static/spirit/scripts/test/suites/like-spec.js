(function() {
  describe("like plugin tests", function() {
    var Like, data, like, likes, post;
    likes = null;
    like = null;
    Like = null;
    post = null;
    data = null;
    beforeEach(function() {
      var fixtures;
      fixtures = jasmine.getFixtures();
      fixtures.fixturesPath = 'base/test/fixtures/';
      loadFixtures('like.html');
      post = spyOn($, 'post');
      post.and.callFake(function(req) {
        var d;
        d = $.Deferred();
        d.resolve(data);
        return d.promise();
      });
      data = {
        url_delete: "/foo/delete/"
      };
      likes = $('.js-like').like({
        csrfToken: "foobar",
        likeText: "foo like ({count})",
        removeLikeText: "foo remove like ({count})"
      });
      like = likes.first().data('plugin_like');
      return Like = $.fn.like.Like;
    });
    it("doesnt break selector chaining", function() {
      expect(likes).toEqual($('.js-like'));
      return expect(likes.length).toEqual(2);
    });
    it("can create the like", function() {
      expect($.post.calls.any()).toEqual(false);
      likes.first().trigger('click');
      expect($.post.calls.any()).toEqual(true);
      return expect($.post.calls.argsFor(0)).toEqual([
        '/foo/create/', {
          csrfmiddlewaretoken: "foobar"
        }
      ]);
    });
    it("can create and remove the like", function() {
      data = {
        url_delete: "/foo/delete/"
      };
      likes.first().trigger('click');
      expect($.post.calls.argsFor(0)).toEqual([
        '/foo/create/', {
          csrfmiddlewaretoken: "foobar"
        }
      ]);
      expect(likes.first().text()).toEqual("foo remove like (1)");
      data = {
        url_create: "/foo/create/"
      };
      likes.first().trigger('click');
      expect($.post.calls.argsFor(1)).toEqual([
        '/foo/delete/', {
          csrfmiddlewaretoken: "foobar"
        }
      ]);
      expect(likes.first().text()).toEqual("foo like (0)");
      data = {
        url_delete: "/foo/delete/"
      };
      likes.first().trigger('click');
      expect($.post.calls.argsFor(2)).toEqual([
        '/foo/create/', {
          csrfmiddlewaretoken: "foobar"
        }
      ]);
      return expect(likes.first().text()).toEqual("foo remove like (1)");
    });
    it("will tell about an api change", function() {
      data = {
        unknown: null
      };
      likes.first().trigger('click');
      return expect(likes.first().text()).toEqual("api error");
    });
    it("prevents from multiple posts while sending", function() {
      var always, d;
      expect($.post.calls.any()).toEqual(false);
      d = $.Deferred();
      post.and.callFake((function(_this) {
        return function(req) {
          d.resolve(data);
          return d.promise();
        };
      })(this));
      always = spyOn(post(), 'always');
      post.calls.reset();
      likes.first().trigger('click');
      expect($.post.calls.any()).toEqual(true);
      expect(always.calls.any()).toEqual(true);
      post.calls.reset();
      likes.first().trigger('click');
      return expect($.post.calls.any()).toEqual(false);
    });
    return it("prevents the default click behaviour", function() {
      var event, preventDefault, stopPropagation;
      event = {
        type: 'click',
        stopPropagation: (function() {}),
        preventDefault: (function() {})
      };
      stopPropagation = spyOn(event, 'stopPropagation');
      preventDefault = spyOn(event, 'preventDefault');
      likes.first().trigger(event);
      expect(stopPropagation).toHaveBeenCalled();
      return expect(preventDefault).toHaveBeenCalled();
    });
  });

}).call(this);

//# sourceMappingURL=like-spec.js.map
