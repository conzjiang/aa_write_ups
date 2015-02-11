$(function () {
  $("a").on("click", function (e) {
    var step = this.hash;
    $(step).addClass("highlight");

    $(step).on("webkitAnimationEnd", function () {
      $(step).removeClass("highlight");
    });
  });
});