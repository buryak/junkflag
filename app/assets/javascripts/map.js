$(document).ready(function(){
	var mapOptions = {
		center: new google.maps.LatLng(37.7831, -122.4039),
		zoom: 12,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	var map = new google.maps.Map(document.getElementById('map'), mapOptions);

	var markerOptions = {
		position: new google.maps.LatLng(37.7831, -122.4039)
	};
	var marker = new google.maps.Marker(markerOptions);
	marker.setMap(map);
});





// $(document).ready(function(){
// 	var handler = Gmaps.build('Google');
// 	var markers; 
// 	handler.buildMap({ 
// 		provider: {}, 
// 		internal: {id: 'map'}}, 
// 		function(){
// 			$.ajax({
// 				url: '/items', 
// 				dataType: 'json',
// 				method: 'GET'	
// 			}).done(function( data ) {
// 				markers = handler.addMarkers( data );
// 			});
// 		});
// 	handler.bounds.extendWith(markers);
// 	handler.fitMapToBounds();
// });



