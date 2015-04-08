var geocoder;
var map;

function initialize() {
  geocoder = new google.maps.Geocoder();
  var latlng = new google.maps.LatLng(40.697325, -73.986014);
  var mapOptions = {
    zoom: 14,
    center: latlng
  }
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
}

function addPin(market) {
  var lat = market[1];
  var lon = market[2];
  var marketLatlng = new google.maps.LatLng(market[1], market[2]);

  var marker = new google.maps.Marker({
    map: map,
    position: marketLatlng,
    title: "blah",
    url: "http://www.google.com" 
  });

  google.maps.event.addListener(marker, "click", function(){
    window.open("https://www.google.com");
  });
}