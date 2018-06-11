// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require local-time
//= require_tree .

$(document).ready(function() {
  $(".text-content").mouseup(function() {
    const selectedText = window.getSelection().toString();

    $(".selected-text").html(selectedText);
    $("#highlight_content").val(selectedText);
    $("#highlight-form").modal("show");
  });

  $("#new_highlight").on("submit", function() {
    $("#highlight-form").modal("hide");
  });

  $("#highlight-form").on("shown.bs.modal", function() {
    $("#highlight_notes").focus();
  });

  $("#highlight-form").on("hidden.bs.modal", function() {
    $(".selected-text").html("");
    $("#highlight_content").val("");
    $("#highlight_notes").val("");
  });
});
