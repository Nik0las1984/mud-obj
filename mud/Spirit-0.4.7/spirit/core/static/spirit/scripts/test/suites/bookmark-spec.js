(function() {
  describe("bookmark plugin tests", function() {
    var Bookmark, Mark, comments, mark, post;
    comments = null;
    mark = null;
    Bookmark = null;
    Mark = null;
    post = null;
    beforeEach(function() {
      var fixtures;
      fixtures = jasmine.getFixtures();
      fixtures.fixturesPath = 'base/test/fixtures/';
      loadFixtures('bookmark.html');
      post = spyOn($, 'post');
      post.and.callFake(function(req) {
        var d;
        d = $.Deferred();
        d.resolve();
        return d.promise();
      });
      comments = $('.comment').bookmark({
        csrfToken: "foobar",
        target: "/foo/"
      });
      mark = comments.first().data('plugin_bookmark').mark;
      Bookmark = $.fn.bookmark.Bookmark;
      return Mark = $.fn.bookmark.Mark;
    });
    it("doesnt break selector chaining", function() {
      expect(comments).toEqual($('.comment'));
      return expect(comments.length).toEqual(2);
    });
    it("sends the first comment number", function() {
      expect($.post.calls.any()).toEqual(true);
      return expect($.post.calls.argsFor(0)).toEqual([
        '/foo/', {
          csrfmiddlewaretoken: "foobar",
          comment_number: 1
        }
      ]);
    });
    it("stores the last comment number", function() {
      var bookmark;
      bookmark = comments.first().data('plugin_bookmark');
      return expect(bookmark.mark.commentNumber).toEqual(2);
    });
    it("stores the same mark in every comment", function() {
      var bookmark_1, bookmark_2;
      bookmark_1 = comments.first().data('plugin_bookmark');
      bookmark_2 = comments.last().data('plugin_bookmark');
      return expect(bookmark_1.mark).toEqual(bookmark_2.mark);
    });
    it("does not post on scroll up", function() {
      var bookmark_1, sendCommentNumber;
      bookmark_1 = comments.first().data('plugin_bookmark');
      sendCommentNumber = spyOn(bookmark_1, 'sendCommentNumber');
      bookmark_1.onWaypoint();
      expect(mark.commentNumber).toEqual(2);
      return expect(sendCommentNumber).not.toHaveBeenCalled();
    });
    it("does post on scroll down", function() {
      var bookmark_2, sendCommentNumber;
      comments.last().data('number', 999);
      bookmark_2 = comments.last().data('plugin_bookmark');
      sendCommentNumber = spyOn(bookmark_2, 'sendCommentNumber');
      bookmark_2.onWaypoint();
      expect(mark.commentNumber).toEqual(999);
      return expect(sendCommentNumber).toHaveBeenCalled();
    });
    it("gets the comment number from the address bar", function() {
      var newMark, org_location_hash;
      org_location_hash = window.location.hash;
      window.location.hash = "";
      try {
        window.location.hash = "http://example.com/foo/#c5";
        newMark = new Mark();
        expect(newMark.commentNumber).toEqual(4);
        window.location.hash = "http://example.com/foo/";
        newMark = new Mark();
        expect(newMark.commentNumber).toEqual(0);
        window.location.hash = "http://example.com/foo/#foobar5";
        newMark = new Mark();
        return expect(newMark.commentNumber).toEqual(0);
      } finally {
        window.location.hash = org_location_hash;
      }
    });
    it("sends only one comment number in a given time", function() {
      var always, bookmark_2, d;
      post.calls.reset();
      expect($.post.calls.any()).toEqual(false);
      bookmark_2 = comments.last().data('plugin_bookmark');
      mark.isSending = true;
      bookmark_2.sendCommentNumber();
      expect($.post.calls.any()).toEqual(false);
      d = $.Deferred();
      post.and.callFake((function(_this) {
        return function(req) {
          d.resolve();
          return d.promise();
        };
      })(this));
      always = spyOn(post(), 'always');
      post.calls.reset();
      mark.isSending = false;
      bookmark_2.sendCommentNumber();
      expect($.post.calls.any()).toEqual(true);
      expect(always.calls.any()).toEqual(true);
      return expect(mark.isSending).toEqual(true);
    });
    return it("sends current comment number after sending previous when current > previous", function() {
      var bookmark_2, d;
      post.calls.reset();
      expect($.post.calls.any()).toEqual(false);
      d = $.Deferred();
      post.and.callFake((function(_this) {
        return function(req) {
          return d.promise();
        };
      })(this));
      mark.commentNumber = 1;
      bookmark_2 = comments.last().data('plugin_bookmark');
      bookmark_2.onWaypoint();
      expect($.post.calls.count()).toEqual(1);
      expect($.post.calls.argsFor(0)).toEqual([
        '/foo/', {
          csrfmiddlewaretoken: "foobar",
          comment_number: 2
        }
      ]);
      mark.commentNumber++;
      d.resolve();
      expect($.post.calls.count()).toEqual(2);
      expect($.post.calls.argsFor(1)).toEqual([
        '/foo/', {
          csrfmiddlewaretoken: "foobar",
          comment_number: 3
        }
      ]);
      d.resolve();
      return expect($.post.calls.count()).toEqual(2);
    });
  });

}).call(this);

//# sourceMappingURL=bookmark-spec.js.map
