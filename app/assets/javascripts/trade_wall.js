
var loaded = function() {
  $('.trade-button').click(function() {
    this.value = 'Pending trade...';
  });
};

//Reg syntax for page reload, turbolinks syntax for routes
$(document).ready(loaded);
$(document).on('page:load', loaded);

