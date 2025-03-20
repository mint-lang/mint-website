module Lessons {
  const LANGUAGE_LOCALE =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              locale en {
                label: "Click to change the locale!",
                greeting: "Hello World!"
              }

              locale hu {
                label: "Kattintson a nyelv megváltoztatásához!",
                greeting: "Hello Világ!"
              }

              component Main {
                fun changeLocale {
                  case Locale.get() or "en" {
                    "hu" => Locale.set("en")
                    => Locale.set("hu")
                  }
                }

                fun render : Html {
                  <div>
                    :greeting

                    <button onClick={changeLocale}>
                      :label
                    </button>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        Bigger applications allow users to change the language of the user
        interface, which is called [localization]. In Mint, you can do that
        with the `locale` feature.

        [localization]: https://en.wikipedia.org/wiki/Internationalization_and_localization

        You can define translations for a language like this:

        ```mint
        locale en {
          greeting: "Hello World!"
        }
        ```

        With the above we defined a translation with a name we can refer it to
        later on like this:

        ```mint
        :greeting // This will display text: Hello World!
        ```

        The `Locale` module is for getting / setting the locale at runtime:

        ```mint
        // `Maybe(String)` returns the current locale
        Locale.get()

        // Sets the locale which will cause a re-render
        Locale.set("hu")
        ```
        MARKDOWN
    }
}
