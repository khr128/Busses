# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery(document).ready ->
  jQuery('.tab-pane#ipad').html JST['template/ipad']()
  jQuery('.tab-pane#iphone').html JST['template/iphone']()

  jQuery.ajax(
    url:"http://webservices.nextbus.com/service/publicXMLFeed?command=agencyList",
    success: (data, textStatus, jqXHR) ->
      jQuery("div#available_agencies").html(JST['template/availableAgencies'](firstAgency: data.documentElement.firstElementChild))
  )
