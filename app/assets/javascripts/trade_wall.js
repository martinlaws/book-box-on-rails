
var loaded = function() {
  $('.trade-button').click(function() {
    var $this = $(this);

    setTimeout(function() {
      $this.replaceWith("<div>Pending trade ...</div>")
    }, 100);
  });
};

//Reg syntax for page reload, turbolinks syntax for routes
$(document).ready(loaded);
$(document).on('page:load', loaded);
