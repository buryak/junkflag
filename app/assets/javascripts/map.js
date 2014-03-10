
$(document).ready(function(){
	var handler = Gmaps.build('Google');
	var markers; 
	handler.buildMap({ 
		provider: {}, 
		internal: {id: 'map'}}, 
		function(){
			$.ajax({
				url: '/items', 
				dataType: 'json',
				method: 'GET'	
			}).done(function( data ) {
				markers = handler.addMarkers( data );
			});
		});
	handler.bounds.extendWith(markers);
	handler.fitMapToBounds();
});