(function() {
  describe("tab plugin tests", function() {
    var Tab, tabs;
    tabs = null;
    Tab = null;
    beforeEach(function() {
      var fixtures;
      fixtures = jasmine.getFixtures();
      fixtures.fixturesPath = 'base/test/fixtures/';
      loadFixtures('tab.html');
      tabs = $.tab();
      return Tab = $.tab.Tab;
    });
    it("doesnt break selector chaining", function() {
      expect(tabs).toEqual($('.js-tab'));
      return expect(tabs.length).toEqual(3);
    });
    it("selects the clicked tab", function() {
      tabs.first().trigger('click');
      expect(tabs.first().hasClass("is-selected")).toEqual(true);
      tabs.last().trigger('click');
      expect(tabs.last().hasClass("is-selected")).toEqual(true);
      return expect(tabs.first().hasClass("is-selected")).toEqual(false);
    });
    it("unselects the clicked tab if is selected", function() {
      tabs.first().trigger('click');
      expect(tabs.first().hasClass("is-selected")).toEqual(true);
      tabs.first().trigger('click');
      return expect(tabs.first().hasClass("is-selected")).toEqual(false);
    });
    it("shows the clicked tab content", function() {
      var tab_content_first, tab_content_last;
      tab_content_first = tabs.first().data("related");
      expect($(tab_content_first).is(":visible")).toEqual(false);
      tabs.first().trigger('click');
      expect($(tab_content_first).is(":visible")).toEqual(true);
      tab_content_last = tabs.last().data("related");
      expect($(tab_content_last).is(":visible")).toEqual(false);
      tabs.last().trigger('click');
      expect($(tab_content_last).is(":visible")).toEqual(true);
      return expect($(tab_content_first).is(":visible")).toEqual(false);
    });
    it("hides the clicked tab content if is selected", function() {
      var tab_content_first;
      tab_content_first = tabs.first().data("related");
      expect($(tab_content_first).is(":visible")).toEqual(false);
      tabs.first().trigger('click');
      expect($(tab_content_first).is(":visible")).toEqual(true);
      tabs.first().trigger('click');
      return expect($(tab_content_first).is(":visible")).toEqual(false);
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
      tabs.first().trigger(event);
      expect(stopPropagation).toHaveBeenCalled();
      return expect(preventDefault).toHaveBeenCalled();
    });
  });

}).call(this);

//# sourceMappingURL=tab-spec.js.map
