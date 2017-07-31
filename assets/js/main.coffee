$(document).on 'click', 'a', (event) ->
  event.preventDefault()
  $('html, body').stop().animate {
    scrollTop: $($.attr(this, 'href')).offset().top
    easing: 'swing'
  }, 500
  return