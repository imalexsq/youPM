// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function add_fields(link, assoc, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + assoc, "g")
  $(link).up().insert({
    before: content.replace(regexp, new_id)
  });
}

