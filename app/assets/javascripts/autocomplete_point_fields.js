$(function () {
  $.get("/point_types.json", function (typeList) {
    $("#point_type").autocomplete({
      source: typeList, delay: 0, minLength: 0, autoFocus: true
    });

    $("#point_type").focus(function () {
      $(this).autocomplete("search", "");
    });
  });
  
  $.get("/sayges.json", function (saygeList) {
    $("#to_user").autocomplete({
      source: saygeList, delay: 0, autoFocus: true
    });
  });
});