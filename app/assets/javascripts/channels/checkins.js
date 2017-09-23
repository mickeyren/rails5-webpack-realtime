App.checkins = App.cable.subscriptions.create('CheckinChannel', {  
  received: function(data) {
    // map.addMarker({
    //   lat: 51.5079,
    //   lng: 0.0877,
    //   title: 'Lima',
    //   infoWindow: {
    //     content: '<p>Help me!</p>'
    //   }
    // });
    map.drawOverlay({
      lat: map.getCenter().lat(),
      lng: map.getCenter().lng(),
      content: '<div class="overlay">I am here right now<div class="overlay_arrow above"></div></div>',
      verticalAlign: 'top',
      horizontalAlign: 'center'
    });
  }  
});