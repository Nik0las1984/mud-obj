
/*
    Generic tabs
 */

(function() {
  var $, Tab,
    bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  $ = jQuery;

  Tab = (function() {
    function Tab(el) {
      this.showTabContent = bind(this.showTabContent, this);
      this.selectTab = bind(this.selectTab, this);
      this.unselectAllTabs = bind(this.unselectAllTabs, this);
      this.hideAllTabsContent = bind(this.hideAllTabsContent, this);
      this.tabSwitch = bind(this.tabSwitch, this);
      this.el = $(el);
      this.setUp();
    }

    Tab.prototype.setUp = function() {
      this.el.on('click', this.tabSwitch);
      return this.el.on('click', this.stopClick);
    };

    Tab.prototype.tabSwitch = function() {
      this.hideAllTabsContent();
      if (this.el.hasClass("is-selected")) {
        this.el.removeClass("is-selected");
      } else {
        this.unselectAllTabs();
        this.selectTab();
        this.showTabContent();
      }
    };

    Tab.prototype.hideAllTabsContent = function() {
      var $tabs_container, $tabs_content;
      $tabs_container = this.el.closest(".js-tabs-container");
      $tabs_content = $tabs_container.find(".js-tab-content");
      return $tabs_content.hide();
    };

    Tab.prototype.unselectAllTabs = function() {
      var $tabs, $tabs_container;
      $tabs_container = this.el.closest(".js-tabs-container");
      $tabs = $tabs_container.find(".js-tab");
      return $tabs.removeClass("is-selected");
    };

    Tab.prototype.selectTab = function() {
      return this.el.addClass("is-selected");
    };

    Tab.prototype.showTabContent = function() {
      var tab_content;
      tab_content = this.el.data("related");
      return $(tab_content).show();
    };

    Tab.prototype.stopClick = function(e) {
      e.preventDefault();
      e.stopPropagation();
    };

    return Tab;

  })();

  $.extend({
    tab: function() {
      return $('.js-tab').each(function() {
        if (!$(this).data('plugin_tab')) {
          return $(this).data('plugin_tab', new Tab(this));
        }
      });
    }
  });

  $.tab.Tab = Tab;

}).call(this);
