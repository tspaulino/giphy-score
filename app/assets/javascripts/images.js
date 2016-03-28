// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  $('#imageModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    var giphy_id = button.data("giphy-id");
    var modal = $(this);
    modal.find("#image_giphy_id").val(giphy_id);
  });
});
