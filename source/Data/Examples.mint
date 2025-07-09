module Data {
  const EXAMPLES =
    defer {
      "html" =>
        {
          "HTML",
          {
            "hello" => {
              "Hello",
              defer @inline(/assets/examples/Html/Hello.mint)
            },
            "shapes" =>
              {"Shapes", defer @inline(/assets/examples/Html/Shapes.mint)},
            "groceries" =>
              {"Groceries", defer @inline(/assets/examples/Html/Groceries.mint)}
          }
        },
      "user-input" =>
        {
          "User Input",
          {
            "buttons" =>
              {
                "Buttons",
                defer @inline(/assets/examples/UserInput/Buttons.mint)
              },
            "text-fields" =>
              {
                "Text Fields",
                defer @inline(/assets/examples/UserInput/TextFields.mint)
              },
            "forms" =>
              {"Forms", defer @inline(/assets/examples/UserInput/Forms.mint)}
          }
        },
      "random" =>
        {
          {
            "Random",
            {
              "numbers" =>
                {"Numbers", defer @inline(/assets/examples/Random/Numbers.mint)},
              "cards" =>
                {"Cards", defer @inline(/assets/examples/Random/Cards.mint)},
              "positions" =>
                {
                  "Positions",
                  defer @inline(/assets/examples/Random/Positions.mint)
                }
            }
          }
        },
      "http" =>
        {
          "Http",
          {
            "book" => {"Book", defer @inline(/assets/examples/Http/Book.mint)},
            "quotes" =>
              {"Quotes", defer @inline(/assets/examples/Http/Quotes.mint)}
          }
        },
      "time" =>
        {
          "Time",
          {
            "time" => {"Time", defer @inline(/assets/examples/Time/Time.mint)},
            "clock" => {
              "Clock",
              defer @inline(/assets/examples/Time/Clock.mint)
            }
          }
        },
      "file" =>
        {
          "File",
          {
            "select" =>
              {"Select", defer @inline(/assets/examples/File/Select.mint)},
            "drag-and-drop" =>
              {
                "Drag and Drop",
                defer @inline(/assets/examples/File/DragAndDrop.mint)
              },
            "image-previews" =>
              {
                "Image Previews",
                defer @inline(/assets/examples/File/ImagePreviews.mint)
              }
          }
        },
      "7guis" =>
        {
          "7GUIs",
          {
            "counter" =>
              {"Counter", defer @inline(/assets/examples/7GUIs/Counter.mint)},
            "temperature-converter" =>
              {
                "Temperature Converter",
                defer @inline(/assets/examples/7GUIs/TemperatureConverter.mint)
              },
            "flight-booker" =>
              {
                "Flight Booker",
                defer @inline(/assets/examples/7GUIs/FlightBooker.mint)
              },
            "timer" =>
              {"Timer", defer @inline(/assets/examples/7GUIs/Timer.mint)},
            "crud" => {"CRUD", defer @inline(/assets/examples/7GUIs/CRUD.mint)},
            "circle-drawer" =>
              {
                "Circle Drawer",
                defer @inline(/assets/examples/7GUIs/CircleDrawer.mint)
              },
            "cells" =>
              {
                "Cells",
                defer [
                  @inline(/assets/examples/7GUIs/Cells/Types.mint),
                  @inline(/assets/examples/7GUIs/Cells/Parser.mint),
                  @inline(/assets/examples/7GUIs/Cells/Formula.mint),
                  @inline(/assets/examples/7GUIs/Cells/Sheet.mint),
                  @inline(/assets/examples/7GUIs/Cells/Main.mint)
                ]
                |> String.join("\n")
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
                defer @inline(/assets/examples/Providers/OutsideClick.mint)
              },
            "animation-frame" =>
              {
                "AnimationFrame",
                defer @inline(/assets/examples/Providers/AnimationFrame.mint)
              },
            "element-size" =>
              {
                "ElementSize",
                defer @inline(/assets/examples/Providers/ElementSize.mint)
              },
            "intersection" =>
              {
                "Intersection",
                defer @inline(/assets/examples/Providers/Intersection.mint)
              },
            "keyboard" =>
              {
                "Keyboard",
                defer @inline(/assets/examples/Providers/Keyboard.mint)
              },
            "media-query" =>
              {
                "MediaQuery",
                defer @inline(/assets/examples/Providers/MediaQuery.mint)
              },
            "mouse" =>
              {"Mouse", defer @inline(/assets/examples/Providers/Mouse.mint)},
            "mutation" =>
              {
                "Mutation",
                defer @inline(/assets/examples/Providers/Mutation.mint)
              },
            "pointer" =>
              {
                "Pointer",
                defer @inline(/assets/examples/Providers/Pointer.mint)
              },
            "resize" =>
              {"Resize", defer @inline(/assets/examples/Providers/Resize.mint)},
            "scroll" =>
              {"Scroll", defer @inline(/assets/examples/Providers/Scroll.mint)},
            "shortcuts" =>
              {
                "Shortcuts",
                defer @inline(/assets/examples/Providers/Shortcuts.mint)
              },
            "tab-focus" =>
              {
                "TabFocus",
                defer @inline(/assets/examples/Providers/TabFocus.mint)
              },
            "tick" =>
              {"Tick", defer @inline(/assets/examples/Providers/Tick.mint)},
            "url" => {"Url", defer @inline(/assets/examples/Providers/Url.mint)},
            "websocket" =>
              {
                "WebSocket",
                defer @inline(/assets/examples/Providers/WebSocket.mint)
              }
          }
        }
    }
}
