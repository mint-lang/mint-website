module Data {
  const EXAMPLES =
    defer {
      "html" =>
        {
          "HTML",
          {
            "hello" => {"Hello", @asset(/assets/examples/Html/Hello.mint)},
            "shapes" => {"Shapes", @asset(/assets/examples/Html/Shapes.mint)},
            "groceries" =>
              {"Groceries", @asset(/assets/examples/Html/Groceries.mint)}
          }
        },
      "user-input" =>
        {
          "User Input",
          {
            "buttons" =>
              {"Buttons", @asset(/assets/examples/UserInput/Buttons.mint)},
            "text-fields" =>
              {
                "Text Fields",
                @asset(/assets/examples/UserInput/TextFields.mint)
              },
            "forms" => {"Forms", @asset(/assets/examples/UserInput/Forms.mint)}
          }
        },
      "random" =>
        {
          {
            "Random",
            {
              "numbers" =>
                {"Numbers", @asset(/assets/examples/Random/Numbers.mint)},
              "cards" => {"Cards", @asset(/assets/examples/Random/Cards.mint)},
              "positions" =>
                {"Positions", @asset(/assets/examples/Random/Positions.mint)}
            }
          }
        },
      "http" =>
        {
          "Http",
          {
            "book" => {"Book", @asset(/assets/examples/Http/Book.mint)},
            "quotes" => {"Quotes", @asset(/assets/examples/Http/Quotes.mint)}
          }
        },
      "time" =>
        {
          "Time",
          {
            "time" => {"Time", @asset(/assets/examples/Time/Time.mint)},
            "clock" => {"Clock", @asset(/assets/examples/Time/Clock.mint)}
          }
        },
      "file" =>
        {
          "File",
          {
            "select" => {"Select", @asset(/assets/examples/File/Select.mint)},
            "drag-and-drop" =>
              {"Drag and Drop", @asset(/assets/examples/File/DragAndDrop.mint)},
            "image-previews" =>
              {
                "Image Previews",
                @asset(/assets/examples/File/ImagePreviews.mint)
              }
          }
        },
      "7guis" =>
        {
          "7GUIs",
          {
            "counter" => {
              "Counter",
              @asset(/assets/examples/7GUIs/Counter.mint)
            },
            "temperature-converter" =>
              {
                "Temperature Converter",
                @asset(/assets/examples/7GUIs/TemperatureConverter.mint)
              },
            "flight-booker" =>
              {
                "Flight Booker",
                @asset(/assets/examples/7GUIs/FlightBooker.mint)
              },
            "timer" => {"Timer", @asset(/assets/examples/7GUIs/Timer.mint)},
            "crud" => {"CRUD", @asset(/assets/examples/7GUIs/CRUD.mint)},
            "circle-drawer" =>
              {
                "Circle Drawer",
                @asset(/assets/examples/7GUIs/CircleDrawer.mint)
              }
          }
        },
      "providers" =>
        {
          "Providers",
          {
            "outside-click" =>
              {
                "OutsideClick",
                @asset(/assets/examples/Providers/OutsideClick.mint)
              },
            "animation-frame" =>
              {
                "AnimationFrame",
                @asset(/assets/examples/Providers/AnimationFrame.mint)
              },
            "element-size" =>
              {
                "ElementSize",
                @asset(/assets/examples/Providers/ElementSize.mint)
              },
            "intersection" =>
              {
                "Intersection",
                @asset(/assets/examples/Providers/Intersection.mint)
              },
            "keyboard" =>
              {"Keyboard", @asset(/assets/examples/Providers/Keyboard.mint)},
            "media-query" =>
              {"MediaQuery", @asset(/assets/examples/Providers/MediaQuery.mint)},
            "mouse" => {"Mouse", @asset(/assets/examples/Providers/Mouse.mint)},
            "mutation" =>
              {"Mutation", @asset(/assets/examples/Providers/Mutation.mint)},
            "pointer" =>
              {"Pointer", @asset(/assets/examples/Providers/Pointer.mint)},
            "resize" =>
              {"Resize", @asset(/assets/examples/Providers/Resize.mint)},
            "scroll" =>
              {"Scroll", @asset(/assets/examples/Providers/Scroll.mint)},
            "shortcuts" =>
              {"Shortcuts", @asset(/assets/examples/Providers/Shortcuts.mint)},
            "tab-focus" =>
              {"TabFocus", @asset(/assets/examples/Providers/TabFocus.mint)},
            "tick" => {"Tick", @asset(/assets/examples/Providers/Tick.mint)},
            "url" => {"Url", @asset(/assets/examples/Providers/Url.mint)},
            "websocket" =>
              {"WebSocket", @asset(/assets/examples/Providers/WebSocket.mint)}
          }
        }
    }
}
