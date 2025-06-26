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
        }
    }
}
