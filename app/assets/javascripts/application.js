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

// document.getElementById("test").onclick = function() {
//   console.log("this worked!");
// };

$(document).on("turbolinks:load", function() {
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
});
// // Get the button, and when the user clicks on it, execute myFunction
// document.getElementById("myBtn").onclick = function() {myFunction()};
//
// /* myFunction toggles between adding and removing the show class, which is used to hide and show the dropdown content */
// function myFunction() {
//   document.getElementById("myDropdown").classList.toggle("show");
// }
