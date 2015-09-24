init_map = ->
  var_location = new (google.maps.LatLng)(-36.8406, 174.74)
  var_mapoptions =
    center: var_location
    zoom: 11
  var_marker = new (google.maps.Marker)(
    position: var_location
    map: var_map
    title: 'Venice')
  var_map = new (google.maps.Map)(document.getElementById('map-container'), var_mapoptions)
  var_marker.setMap var_map
  return



window.ready = ->
  google.maps.event.addDomListener window, 'load', init_map

$(document).ready(ready)
$(document).on('page:load', ready)
