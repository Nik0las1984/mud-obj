(function() {
  describe("move_comments plugin tests", function() {
    var MoveComment, plugin_move_comments, show_move_comments;
    show_move_comments = null;
    plugin_move_comments = null;
    MoveComment = null;
    beforeEach(function() {
      var fixtures;
      fixtures = jasmine.getFixtures();
      fixtures.fixturesPath = 'base/test/fixtures/';
      loadFixtures('move_comments.html');
      show_move_comments = $('.js-show-move-comments').move_comments({
        csrfToken: "foobar",
        target: "/foo/"
      });
      plugin_move_comments = show_move_comments.first().data('plugin_move_comments');
      return MoveComment = $.fn.move_comments.MoveComment;
    });
    it("doesnt break selector chaining", function() {
      expect(show_move_comments).toEqual($('.js-show-move-comments'));
      return expect(show_move_comments.length).toEqual(1);
    });
    it("shows the move form on click", function() {
      expect($(".move-comments").is(":visible")).toEqual(false);
      expect($(".move-comment-checkbox").length).toEqual(0);
      $('.js-show-move-comments').trigger('click');
      expect($(".move-comments").is(":visible")).toEqual(true);
      return expect($(".move-comment-checkbox").length).toEqual(2);
    });
    it("prevents the default click behaviour on show move comments", function() {
      var event, preventDefault, stopPropagation;
      event = {
        type: 'click',
        stopPropagation: (function() {}),
        preventDefault: (function() {})
      };
      stopPropagation = spyOn(event, 'stopPropagation');
      preventDefault = spyOn(event, 'preventDefault');
      show_move_comments.first().trigger(event);
      expect(stopPropagation).toHaveBeenCalled();
      return expect(preventDefault).toHaveBeenCalled();
    });
    it("prevents the default click behaviour on submit", function() {
      var event, preventDefault, stopPropagation;
      event = {
        type: 'click',
        stopPropagation: (function() {}),
        preventDefault: (function() {})
      };
      stopPropagation = spyOn(event, 'stopPropagation');
      preventDefault = spyOn(event, 'preventDefault');
      spyOn(plugin_move_comments, 'formSubmit');
      $(".js-move-comments").trigger(event);
      expect(stopPropagation).toHaveBeenCalled();
      return expect(preventDefault).toHaveBeenCalled();
    });
    return it("submits the form", function() {
      var formSubmit;
      formSubmit = spyOn(plugin_move_comments, 'formSubmit');
      $('.js-show-move-comments').trigger('click');
      $(".js-move-comments").trigger('click');
      expect(formSubmit).toHaveBeenCalled();
      expect($("form").last().attr('action')).toEqual("/foo/");
      expect($("form").last().is(":visible")).toEqual(false);
      expect($("input[name=csrfmiddlewaretoken]").val()).toEqual("foobar");
      expect($("input[name=topic]").val()).toEqual("10");
      return expect($("form").last().find("input[name=comments]").length).toEqual(2);
    });
  });

}).call(this);

//# sourceMappingURL=move_comments-spec.js.map
