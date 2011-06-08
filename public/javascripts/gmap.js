var map;
var geocoder;
var lat = 10.3111111;
var lng = 123.8916667;
var infowindow = new google.maps.InfoWindow();

function initialize(lat, lng, add) {
  var latlng = new google.maps.LatLng(lat, lng);
  var options = {
    zoom: 15,
    center: latlng,
    mapTypeId: google.maps.MapTypeId.SATELLITE,
  }
  
  map = new google.maps.Map(document.getElementById("map_canvas"), options);
    
  var marker = new google.maps.Marker({
      position: latlng,
      //draggable: true,
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
