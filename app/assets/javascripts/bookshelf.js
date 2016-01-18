var loaded = function() {

  //toggle availability
  $('.availability').click(function() {
    if (this.value == 'Make Unavailable') {
      this.value = 'Repost'
    } else {
      this.value = 'Make Unavailable'
    };
  });

  //accept trade
  $('.accept_trade').click(function() {
    var $this = $(this);

    setTimeout(function() {
      $this.closest('tr').remove();
    }, 100);
  });

  //decline trade
  $('.decline_trade').click(function() {
    var $this = $(this);

    setTimeout(function() {
      $this.closest('tr').remove();
    }, 100);
  });

};

//Reg syntax for page reload, turbolinks syntax for routes
$(document).ready(loaded);
$(document).on('page:load', loaded);
