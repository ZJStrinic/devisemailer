// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";

//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .
//= require popper
//= require bootstrap-sprockets

$(document).on("turbo:load", () => {
  console.log("turbo")
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})