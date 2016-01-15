var loaded = function() {
  $('.availability').click(function() {
    if (this.value == 'Make Unavailable') {
      this.value = 'Repost'
    } else {
      this.value = 'Make Unavailable'
    };
  });
};

//Reg syntax for page reload, turbolinks syntax for routes
$(document).ready(loaded);
$(document).on('page:load', loaded);
