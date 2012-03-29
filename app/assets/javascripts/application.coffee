//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require ./highstock/highstock.js
//= require ./highstock/modules/exporting.js

jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
