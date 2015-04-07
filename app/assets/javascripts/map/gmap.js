function initialize() {

  var FlatironBrooklyn = new google.maps.LatLng(40.697325, -73.986014);

  var mapOptions = {
    center: FlatironBrooklyn,
    zoom: 14
  };
  var map = new google.maps.Map(document.getElementById('map-canvas'),
    mapOptions);

  var marker = new google.maps.Marker({
    position: FlatironBrooklyn,
    map: map,
    title: 'Flatiron Brooklyn'
  })
}
