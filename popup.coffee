# Activate [strict mode](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Strict_mode)
"use strict"

# The popup setup function
# Use `$('#my-toggle-element').popup('#my-popup-element')`
$.fn.popup = (target) ->
  target = $(target)

  # Handler for toggle element (bound to `this`)
  @click () ->
    if target.hasClass 'shown'
      target.removeClass 'shown'
      # Remove any shades that might exist
      $('#popup-shade').remove()
    else
      target.addClass 'shown'
      # Grey-out when in window mode
      if target.hasClass 'window'
        $('body').append $ '<div id="popup-shade">'

  # Handler for close button
  target.find('.popup-close').click () ->
    target.removeClass 'shown'
    # Remove any shades that might exist
    $('#popup-shade').remove()

  # Enable chaining
  return this


$(document).ready () ->
  # Handle any elements with attribute `data-popup-for="..."`
  $('[data-popup-for]').each () ->
    trigger = $(this)
    # Selector for the targets (`data-popup-name="..."`)
    target = "[data-popup-name='#{trigger.attr 'data-popup-for'}'"
    # Run $().popup
    trigger.popup target
