
/*
    Notifications ajax tab
    requires: util.js, tab.js
 */

(function() {
  var $, Notification,
    bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  $ = jQuery;

  Notification = (function() {
    Notification.prototype.defaults = {
      notificationUrl: "#ajax",
      notificationListUrl: "#show-all",
      mentionTxt: "{user} mention you on {topic}",
      commentTxt: "{user} has commented on {topic}",
      showAll: "Show all",
      empty: "Nothing to show",
      unread: "unread"
    };

    function Notification(el, options) {
      this.ajaxDone = bind(this.ajaxDone, this);
      this.addErrorTxt = bind(this.addErrorTxt, this);
      this.addIsEmptyTxt = bind(this.addIsEmptyTxt, this);
      this.addNotifications = bind(this.addNotifications, this);
      this.tabSwitch = bind(this.tabSwitch, this);
      this.el = $(el);
      this.options = $.extend({}, this.defaults, options);
      this.tabNotificationContent = $(this.el.data("related"));
      this.setUp();
    }

    Notification.prototype.setUp = function() {
      this.el.one('click', this.tabSwitch);
      return this.el.one('click', this.stopClick);
    };

    Notification.prototype.tabSwitch = function() {
      var get;
      get = $.getJSON(this.options.notificationUrl);
      get.done((function(_this) {
        return function(data, status, jqXHR) {
          if (data.n.length > 0) {
            return _this.addNotifications(data);
          } else {
            return _this.addIsEmptyTxt();
          }
        };
      })(this));
      get.fail((function(_this) {
        return function(jqxhr, textStatus, error) {
          return _this.addErrorTxt(textStatus, error);
        };
      })(this));
      get.always((function(_this) {
        return function() {
          return _this.ajaxDone();
        };
      })(this));
    };

    Notification.prototype.addNotifications = function(data) {
      var showAllLink, unread;
      unread = "<span class=\"row-unread\">" + this.options.unread + "</span>";
      $.each(data.n, (function(_this) {
        return function(i, obj) {
          var link, txt;
          if (obj.action === 1) {
            txt = _this.options.mentionTxt;
          } else {
            txt = _this.options.commentTxt;
          }
          if (!obj.is_read) {
            txt = txt + " " + unread;
          }
          link = "<a href=\"" + obj.url + "\">" + obj.title + "</a>";
          txt = $.format(txt, {
            user: obj.user,
            topic: link
          });
          return _this.tabNotificationContent.append("<div>" + txt + "</div>");
        };
      })(this));
      showAllLink = "<a href=\"" + this.options.notificationListUrl + "\">" + this.options.showAll + "</a>";
      return this.tabNotificationContent.append("<div>" + showAllLink + "</div>");
    };

    Notification.prototype.addIsEmptyTxt = function() {
      return this.tabNotificationContent.append("<div>" + this.options.empty + "</div>");
    };

    Notification.prototype.addErrorTxt = function(textStatus, error) {
      return this.tabNotificationContent.append("<div>Error: " + textStatus + ", " + error + "</div>");
    };

    Notification.prototype.ajaxDone = function() {
      this.el.addClass("js-tab");
      $.tab();
      return this.el.trigger('click');
    };

    Notification.prototype.stopClick = function(e) {
      e.preventDefault();
      e.stopPropagation();
    };

    return Notification;

  })();

  $.extend({
    notification: function(options) {
      return $('.js-tab-notification').each(function() {
        if (!$(this).data('plugin_notification')) {
          return $(this).data('plugin_notification', new Notification(this, options));
        }
      });
    }
  });

  $.notification.Notification = Notification;

}).call(this);
