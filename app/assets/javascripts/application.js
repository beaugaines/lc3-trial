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

  // disable context menu for long tap
  window.oncontextmenu = function(event) {
    event.preventDefault();
    event.stopPropagation();
    return false;
  };

  function launchHighlightModal() {
    const selectedText = window.getSelection().toString();

    if(selectedText.length > 0) {
      $(".selected-text").html(selectedText);
      $("#highlight_content").val(selectedText);
      $("#highlight-form").modal("show");
    }
  };

  const textField = document.querySelector('.text-content');

  textField.addEventListener('mouseup', function(e) {
    launchHighlightModal();
  });

  textField.addEventListener('touchend', function(e) {
    launchHighlightModal();
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
