$(document).on "turbolinks:load", ->

  navbar_top = $("#navbar-top")
  pathname = window.location.pathname

  if(pathname == "/")
    navbar_top.hide()