
/*
  A bunch of generic functions, this are used by other plugins.
 */

(function() {
  var $;

  $ = jQuery;

  $.extend({
    format: function(str, kwargs) {
      var key, value;
      for (key in kwargs) {
        value = kwargs[key];
        str = str.replace("{" + key + "}", String(value));
      }
      return str;
    }
  });

}).call(this);
