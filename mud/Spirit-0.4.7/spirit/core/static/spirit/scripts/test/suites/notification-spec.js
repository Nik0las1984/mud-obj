(function() {
  describe("notification plugin tests", function() {
    var Notification, data, get, notification, tab;
    tab = null;
    notification = null;
    Notification = null;
    get = null;
    data = null;
    beforeEach(function() {
      var fixtures;
      fixtures = jasmine.getFixtures();
      fixtures.fixturesPath = 'base/test/fixtures/';
      loadFixtures('notification.html');
      get = spyOn($, 'getJSON');
      get.and.callFake(function(req) {
        var d;
        d = $.Deferred();
        d.resolve(data);
        return d.promise();
      });
      data = {
        n: [
          {
            user: "username",
            action: 1,
            title: "title",
            url: "/foobar/",
            is_read: true
          }
        ]
      };
      tab = $.notification({
        notificationUrl: "/foo/",
        notificationListUrl: "/foo/list/",
        mentionTxt: "{user} foo you on {topic}",
        commentTxt: "{user} has bar on {topic}",
        showAll: "foo Show all",
        empty: "foo empty",
        unread: "foo unread"
      });
      notification = tab.first().data('plugin_notification');
      return Notification = $.notification.Notification;
    });
    it("doesnt break selector chaining", function() {
      return expect(tab).toEqual($('.js-tab-notification'));
    });
    it("gets the notifications", function() {
      expect(get.calls.any()).toEqual(false);
      tab.first().trigger("click");
      expect(get.calls.any()).toEqual(true);
      expect(get.calls.count()).toEqual(1);
      expect(get.calls.argsFor(0)).toEqual(['/foo/']);
      tab.first().trigger("click");
      return expect(get.calls.count()).toEqual(1);
    });
    it("shows the notifications, mentions", function() {
      tab.first().trigger("click");
      expect(get.calls.any()).toEqual(true);
      return expect($(".js-notifications-content").html()).toEqual('<div>username foo you on <a href="/foobar/">title</a></div><div><a href="/foo/list/">foo Show all</a></div>');
    });
    it("shows the notifications, comments", function() {
      data.n[0].action = 2;
      tab.first().trigger("click");
      expect(get.calls.any()).toEqual(true);
      return expect($(".js-notifications-content").html()).toEqual('<div>username has bar on <a href="/foobar/">title</a></div><div><a href="/foo/list/">foo Show all</a></div>');
    });
    it("shows the notifications, unread", function() {
      data.n[0].is_read = false;
      tab.first().trigger("click");
      expect(get.calls.any()).toEqual(true);
      return expect($(".js-notifications-content").html()).toEqual('<div>username foo you on <a href="/foobar/">title</a> <span class="row-unread">foo unread</span></div><div><a href="/foo/list/">foo Show all</a></div>');
    });
    it("shows the notifications, error", function() {
      get.and.callFake(function(req) {
        var d;
        d = $.Deferred();
        d.reject("foobar", "200", "foo error");
        return d.promise();
      });
      tab.first().trigger("click");
      expect(get.calls.any()).toEqual(true);
      return expect($(".js-notifications-content").html()).toEqual('<div>Error: 200, foo error</div>');
    });
    it("shows tab content and is selected on click", function() {
      expect(tab.first().hasClass("is-selected")).toEqual(false);
      expect($(".js-notifications-content").is(":visible")).toEqual(false);
      tab.first().trigger("click");
      expect(tab.first().hasClass("is-selected")).toEqual(true);
      return expect($(".js-notifications-content").is(":visible")).toEqual(true);
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
      tab.first().trigger(event);
      expect(stopPropagation).toHaveBeenCalled();
      return expect(preventDefault).toHaveBeenCalled();
    });
  });

}).call(this);

//# sourceMappingURL=notification-spec.js.map
