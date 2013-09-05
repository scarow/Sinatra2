$(document).ready(function() {
  $('form').on('submit', function(e){
    e.preventDefault();
    $.ajax({
      type: this.method,
      url: this.action,
      data: $(this).serialize()
    }).done(function(response){
      $('.container').append(response);
    }).fail(function(){
      console.log("failed");
    });
  });
});
