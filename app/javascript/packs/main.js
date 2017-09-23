/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'hello_vue' %> and
// <%= stylesheet_pack_tag 'hello_vue' %> to the head of your layout file,
// like app/views/layouts/application.html.erb.
// All it does is render <div>Hello Vue</div> at the bottom of the page.

import GMaps from 'gmaps'
import $ from 'jquery'

window.gmapsLoaded = function () {
  window.map = new GMaps({
    el: '#map',
    lat: 51.5033,
    lng: 0.1195
  })
}

