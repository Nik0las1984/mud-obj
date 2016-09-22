
/*
    Move comments to other topic
 */

(function() {
  var $, MoveComment,
    bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  $ = jQuery;

  MoveComment = (function() {
    MoveComment.prototype.defaults = {
      csrfToken: "csrf_token",
      target: "#post_url"
    };

    function MoveComment(el, options) {
      this.moveComments = bind(this.moveComments, this);
      this.addCommentSelection = bind(this.addCommentSelection, this);
      this.showMoveComments = bind(this.showMoveComments, this);
      this.el = $(el);
      this.options = $.extend({}, this.defaults, options);
      this.setUp();
    }

    MoveComment.prototype.setUp = function() {
      var $move_comments;
      this.el.on('click', this.showMoveComments);
      this.el.on('click', this.stopClick);
      $move_comments = $(".js-move-comments");
      $move_comments.on('click', this.moveComments);
      return $move_comments.on('click', this.stopClick);
    };

    MoveComment.prototype.showMoveComments = function() {
      if ($(".move-comments").is(":hidden")) {
        $(".move-comments").show();
        this.addCommentSelection();
      }
    };

    MoveComment.prototype.addCommentSelection = function() {
      var $checkbox, $li;
      $li = $("<li/>").appendTo(".comment-date");
      $checkbox = $("<input/>", {
        "class": "move-comment-checkbox",
        name: "comments",
        type: "checkbox",
        value: ""
      }).appendTo($li);
      return $checkbox.each(function() {
        var $commentId;
        $commentId = $(this).closest(".comment").data("pk");
        return $(this).val($commentId);
      });
    };

    MoveComment.prototype.moveComments = function() {
      var $form, topicId;
      $form = $("<form/>", {
        action: this.options.target,
        method: "post"
      }).hide().appendTo($('body'));
      $("<input/>", {
        name: "csrfmiddlewaretoken",
        type: "hidden",
        value: this.options.csrfToken
      }).appendTo($form);
      topicId = $("#id_move_comments_topic").val();
      $("<input/>", {
        name: "topic",
        type: "text",
        value: topicId
      }).appendTo($form);
      $(".move-comment-checkbox").clone().appendTo($form);
      this.formSubmit($form);
    };

    MoveComment.prototype.formSubmit = function($form) {
      return $form.submit();
    };

    MoveComment.prototype.stopClick = function(e) {
      e.preventDefault();
      e.stopPropagation();
    };

    return MoveComment;

  })();

  $.fn.extend({
    move_comments: function(options) {
      return this.each(function() {
        if (!$(this).data('plugin_move_comments')) {
          return $(this).data('plugin_move_comments', new MoveComment(this, options));
        }
      });
    }
  });

  $.fn.move_comments.MoveComment = MoveComment;

}).call(this);
