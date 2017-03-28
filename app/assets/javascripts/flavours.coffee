$(document).on 'turbolinks:load', ->
  if $('#vanilla').length > 0
    deleteCookie('flavour')
  @flavour = getCookie('flavour')
  $('body').addClass("flavour-#{@flavour}")
  
  $('#vanilla, #chocolate, #strawberry, #pistachio').click (e) ->
    @flavour = $(e.currentTarget).attr('id')
    setCookie('flavour', @flavour, 1)

