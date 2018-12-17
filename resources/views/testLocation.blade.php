{{-- <!DOCTYPE html>
<html>
  <head>
    <title>Simple Map using native ECMAScript modules</title>
    <link rel="stylesheet" href="https://openlayers.org/en/v5.0.0-beta.12/css/ol.css" type="text/css">
    <!-- The line below is only needed for old environments like Internet Explorer and Android 4.x -->
    <script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=requestAnimationFrame,Element.prototype.classList,URL"></script>
  </head>
  <body>
    <div id="map" class="map"></div>
    <script type=module>
      import Map from 'https://dev.jspm.io/npm:ol@5.0.0-beta.12/Map.js';
      import View from 'https://dev.jspm.io/npm:ol@5.0.0-beta.12/View.js';
      import TileLayer from 'https://dev.jspm.io/npm:ol@5.0.0-beta.12/layer/Tile.js';
      import OSM from 'https://dev.jspm.io/npm:ol@5.0.0-beta.12/source/OSM.js';

      const map = new Map({
        layers: [
          new TileLayer({
            source: new OSM()
          })
        ],
        target: 'map',
        view: new View({
          center: [0, 0],
          zoom: 2
        })
      });
    </script>
  </body>
</html> --}}



{{-- <!DOCTYPE html>
<html>
  <head>
    <title>Geolocation</title>
    <link rel="stylesheet" href="https://openlayers.org/en/v5.3.0/css/ol.css" type="text/css">
    <!-- The line below is only needed for old environments like Internet Explorer and Android 4.x -->
    <script type="module" src="https://cdn.polyfill.io/v2/polyfill.min.js?features=requestAnimationFrame,Element.prototype.classList,URL"></script>
    <meta charset="UTF-8">
  </head>
  <body>
    <div id="map" class="map"></div>
    <div id="info" style="display: none;"></div>
    <label for="track">
      track position
      <input id="track" type="checkbox"/>
    </label>
    <p>
      position accuracy : <code id="accuracy"></code>&nbsp;&nbsp;
      altitude : <code id="altitude"></code>&nbsp;&nbsp;
      altitude accuracy : <code id="altitudeAccuracy"></code>&nbsp;&nbsp;
      heading : <code id="heading"></code>&nbsp;&nbsp;
      speed : <code id="speed"></code>
    </p>
    <script type="module">
      import Feature from 'https://dev.jspm.io/npm:ol@5.3.0/Feature.js';
      import Geolocation from 'https://dev.jspm.io/npm:ol@5.3.0/Geolocation.js';
      import Map from 'https://dev.jspm.io/npm:ol@5.3.0/Map.js';
      import View from 'https://dev.jspm.io/npm:ol@5.3.0/View.js';
      import Point from 'https://dev.jspm.io/npm:ol@5.3.0/geom/Point.js';
      import {Tile as TileLayer, Vector as VectorLayer} from 'https://dev.jspm.io/npm:ol@5.3.0/layer.js';
      import {OSM, Vector as VectorSource} from 'https://dev.jspm.io/npm:ol@5.3.0/source.js';
      import {Circle as CircleStyle, Fill, Stroke, Style} from 'https://dev.jspm.io/npm:ol@5.3.0/style.js';

      var view = new View({
        center: [0, 0],
        zoom: 2
      });

      var map = new Map({
        layers: [
          new TileLayer({
            source: new OSM()
          })
        ],
        target: 'map',
        view: view
      });

      var geolocation = new Geolocation({
        // enableHighAccuracy must be set to true to have the heading value.
        trackingOptions: {
          enableHighAccuracy: true
        },
        projection: view.getProjection()
      });

      function el(id) {
        return document.getElementById(id);
      }

      el('track').addEventListener('change', function() {
        geolocation.setTracking(this.checked);
      });

      // update the HTML page when the position changes.
      geolocation.on('change', function() {
        el('accuracy').innerText = geolocation.getAccuracy() + ' [m]';
        el('altitude').innerText = geolocation.getAltitude() + ' [m]';
        el('altitudeAccuracy').innerText = geolocation.getAltitudeAccuracy() + ' [m]';
        el('heading').innerText = geolocation.getHeading() + ' [rad]';
        el('speed').innerText = geolocation.getSpeed() + ' [m/s]';
      });

      // handle geolocation error.
      geolocation.on('error', function(error) {
        var info = document.getElementById('info');
        info.innerHTML = error.message;
        info.style.display = '';
      });

      var accuracyFeature = new Feature();
      geolocation.on('change:accuracyGeometry', function() {
        accuracyFeature.setGeometry(geolocation.getAccuracyGeometry());
      });

      var positionFeature = new Feature();
      positionFeature.setStyle(new Style({
        image: new CircleStyle({
          radius: 6,
          fill: new Fill({
            color: '#3399CC'
          }),
          stroke: new Stroke({
            color: '#fff',
            width: 2
          })
        })
      }));

      geolocation.on('change:position', function() {
        var coordinates = geolocation.getPosition();
        positionFeature.setGeometry(coordinates ?
          new Point(coordinates) : null);
      });

      new VectorLayer({
        map: map,
        source: new VectorSource({
          features: [accuracyFeature, positionFeature]
        })
      });
    </script>
  </body>
</html> --}}

<!DOCTYPE html>
<html>
  <head>
    <title>Simple Map</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 8
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBOYROYFc-XcfFCMmw5MVlOZc1Tuh_HC2U&callback=initMap"
    async defer></script>
  </body>
</html>