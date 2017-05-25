App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console 'received message now about to append'
    $('#messages').append(data['message'])
 
  speak: (message) ->
    @perform 'speak', message: message

$(document).ready () ->
  $("#send_message").click (event) ->
    text = $("#input_message").val()
    App.room.speak text