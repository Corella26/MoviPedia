$(document).ready(function(){
  $("#tableInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#movieTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});