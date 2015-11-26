window.ready = ->
  map = L.map('map-container').setView([-36.8406, 174.74], 12)
  L.tileLayer('http://b.tile.openstreetmap.org/{z}/{x}/{y}.png',
    maxZoom: 18
    ).addTo map



$(document).ready(ready)
$(document).on('page:load', ready)
