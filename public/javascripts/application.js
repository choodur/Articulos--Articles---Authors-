// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $('#author_birthday').datepicker( {
    dateFormat: 'yy-mm-dd',
    changeMonth: true,
    changeYear: true,
    yearRange: '1975:2005'
  });
  
  $commentForm = $("#comment-form");
  $commentForm.hide();
  $("#add-comment").click(function(){
    $commentForm.fadeIn();
  });
  
  $("#welcome").hide();
  $("#quote").hide();
  $("#index-page").hide();
  
  $("#welcome").fadeIn(3000);
  $("#quote").fadeIn(5000);
  $("#index-page").fadeIn(8000);
  
});

var map;
var geocoder;
var lat = 10.3111111;
var lng = 123.8916667;
var infowindow = new google.maps.InfoWindow();

function initialize(lat, lng, add) {
  var latlng = new google.maps.LatLng(lat, lng);
  var options = {
    zoom: 3,
    center: latlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
  }
  
  map = new google.maps.Map(document.getElementById("map_canvas"), options);
    
  var marker = new google.maps.Marker({
      position: latlng,
      draggable: true,
      position: latlng
  });
  
  // To add the marker to the map, call setMap();
  marker.setMap(map);
  
        // add listener to marker
  google.maps.event.addListener(marker, "dragend", function() {
    var point = marker.getPosition();
    map.panTo(point);
    document.getElementById("place_latitude").value = point.lat();
    document.getElementById("place_longitude").value = point.lng();
  });
  
  infowindow.setContent(add);
  infowindow.open(map, marker);
}
