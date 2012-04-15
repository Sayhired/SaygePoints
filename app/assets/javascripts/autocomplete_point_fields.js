$(function () {
  $.get("/point_types.json", function (typeList) {
    $("#point_type").autocomplete({ source: typeList, delay: 0 });
  });
});