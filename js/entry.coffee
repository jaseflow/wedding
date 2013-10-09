
jQuery ->

  $('#rsvp-form').submit (e) ->
    e.preventDefault()
    $('.slider__canvas').css('-webkit-transform','translateX(-100%)')

  $('#back-button').click ->
    $('.slider__canvas').css('-webkit-transform','translateX(0)')