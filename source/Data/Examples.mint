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
            "circle-drawer" =>
              {
                "Circle Drawer",
                @asset(/assets/examples/7GUIs/CircleDrawer.mint)
              }
          }
        }
    }
}
