// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

console.log("this is a test");


$(document).on("turbolinks:load", function() {

window.initMap = function (){
        if ( mapInit || $("#map").length === 0 ) { return false; }
        var boogaloo = {lat: -34.20579, lng: 150.857358};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 11,
          center: boogaloo
        });
        var marker = new google.maps.Marker({
          position: boogaloo,
          map: map
        });
          mapInit = true;
      };

      var mapInit=false;
      mapInit = false;
        if ( $("#map").length !== 0 ) {
          window.initMap();
        }


var acc = document.getElementsByClassName("accordion");
console.log(acc);
var i;
for (i = 0; i < acc.length; i++) {
  acc[i].onclick = function() {
    console.log("testing");
    this.classList.toggle("active");
    /* Toggle between hiding and showing the active panel */
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
  };
}


// CAROUSEL SLIDER FROM SLICK
  $('.autoplay').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    variableWidth: true,
    autoplay: true,
    autoplaySpeed: 3000
  });

  $('.slick-prev').html('<');
  $('.slick-next').html('>');

});

function navBarFunction() {
    var navigationBar = document.getElementById("myNavBar");
    if (navigationBar.className === "navBar") {
        navigationBar.className += " responsive";
    } else {
        navigationBar.className = "navBar";
    }
}
