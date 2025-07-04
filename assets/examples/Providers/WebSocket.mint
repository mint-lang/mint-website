component Main {
  state socket : Maybe(WebSocket) = Maybe.Nothing
  state messages : Array(String) = []

  use Provider.WebSocket {
    url: "wss://echo.websocket.org/",
    reconnectOnClose: false,
    onError: () { next { messages: Array.push(messages, "Error!") } },
    onClose: () { next { messages: Array.push(messages, "Close!") } },
    onOpen:
      (socket : WebSocket) {
        next {
          messages: Array.push(messages, "Opened!"),
          socket: Maybe.Just(socket)
        }
      },
    onMessage:
      (message : String) {
        next { messages: Array.push(messages, "Recieved: #{message}") }
      }
  }

  fun send {
    if let Just(item) = socket {
      next { messages: Array.push(messages, "Sent: Message!") }
      WebSocket.send(item, "Message!")
    }
  }

  fun render : Html {
    <div>
      <button onClick={send}>"Send a message"</button>

      for message of messages {
        <div>message</div>
      }
    </div>
  }
}
