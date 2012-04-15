$(function () {
  $.get("/point_types.json", function (typeList) {
    $("#point_type").autocomplete({ source: typeList, delay: 0 });
  });
  
  $.get("/sayges", function (saygeList) {
    $("#to_user").autocomplete({ source: saygeList, delay: 0 });
  });
});