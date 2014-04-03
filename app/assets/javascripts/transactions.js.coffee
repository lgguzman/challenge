# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  $('.accordion').accordion( heightStyle: "content", header: "h3")
  $('.accordion').css(
    'position' : 'absolute',
    'top' : '20%')   
  $('input[type=submit], a, button').button()
  
