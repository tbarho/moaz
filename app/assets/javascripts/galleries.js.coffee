# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#pictures').sortable(
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
  );
  $('#slides').cycle({
    fx: 'scrollHorz',
    next: '#next',
    prev: '#prev',
    timeout: 0,
    easing: 'easeInOutBack'
  });
