	// find the div and initialize the map - in my view (indexhtml)
	// ajax request to server for JSON of markers - 
	// place markers on map using googlemaps API
	// github jSON AJAX - research on the API infoz


	$(document).ready(function(){
		var handler = Gmaps.build('Google');
		handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
			var markers = handler.addMarkers([
			{
				"lat": 44.981165,
				"lng": -93.279225,
				"picture": {
					"url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
					"width":  36,
					"height": 36
				},
				"infowindow": "hello!"
			}
			]);
			handler.bounds.extendWith(markers);
			handler.fitMapToBounds();
		});
	});