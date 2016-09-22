
/*
    Make post on anchor click
 */

(function() {
  var $, Postify,
    bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  $ = jQuery;

  Postify = (function() {
    Postify.prototype.defaults = {
      csrfToken: "csrf_token"
    };

    function Postify(el, options) {
      this.makePost = bind(this.makePost, this);
      this.el = $(el);
      this.options = $.extend({}, this.defaults, options);
      this.setUp();
    }

    Postify.prototype.setUp = function() {
      this.el.on('click', this.makePost);
      return this.el.on('click', this.stopClick);
    };

    Postify.prototype.makePost = function() {
      var $form;
      $form = $("<form/>", {
        action: this.el.attr('href'),
        method: "post"
      }).hide().appendTo($('body'));
      $("<input/>", {
        name: "csrfmiddlewaretoken",
        type: "hidden",
        value: this.options.csrfToken
      }).appendTo($form);
      this.formSubmit($form);
    };

    Postify.prototype.formSubmit = function($form) {
      return $form.submit();
    };

    Postify.prototype.stopClick = function(e) {
      e.preventDefault();
      e.stopPropagation();
    };

    return Postify;

  })();

  $.fn.extend({
    postify: function(options) {
      return this.each(function() {
        if (!$(this).data('plugin_postify')) {
          return $(this).data('plugin_postify', new Postify(this, options));
        }
      });
    }
  });

  $.fn.postify.Postify = Postify;

}).call(this);
