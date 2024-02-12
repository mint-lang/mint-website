module References {
  const LOCALE =
    <<#MARKDOWN(highlight)
    # Locale

    The `locale` feature makes it easier to [localize](https://en.wikipedia.org/wiki/Internationalization_and_localization)
    applications. It works by allowing you to define tokens and values for
    languages and provides a literal to use as a reference to those tokens
    which are replaced by the value of the current language.

    The beauty of having language support for translations is that there are
    checks at compile time for:

    - having the same tokens in all defined languages
    - having the same type for a token in all languages
    - checking if a literal has a token defined for it
    - not having the same token defined in multiple places

    ## Defining translations

    You can define translations (tokens and values in a tree) for a language
    using the top level `locale` statement. The language is identified by
    [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) code.

    The keys are alphanumeric and the values can be any Mint expression.

    ```mint
    locale en {
      ui: {
        buttons: {
          ok: "OK",
          edit: (title : String) {
            "Edit \#{title}"
          }
        }
      }
    }

    locale hu {
      ui: {
        buttons: {
          ok: "Rendben",
          edit: (title : String) {
            "\#{title} Szerkesztése"
          }
        }
      }
    }
    ```

    Translations for a language can be split up and defined in multiple places.

    ```mint
    locale en {
      ui: {
        buttons: {
          ok: "OK"
        }
      }
    }

    locale en {
      ui: {
        buttons: {
          edit: (title : String) {
            "Edit \#{title}"
          }
        }
      }
    }
    ```

    ## Displaying translations

    To display an already defined token you can use the following syntax:

    ```mint
    component Main {
      fun render {
        <div>
          <button>:ui.button.ok</button>
          <button>:ui.button.edit("Title")</button>
        </div>
      }
    }
    ```

    ## Managing the current locale

    `Locale` is the module for managing the current locale (which translations
    are displayed for) at runtime:

    ```mint
    // Sets the locale to "en" and returns `true` since we
    // have translations for the English language.
    Locale.set("en")

    // Returns `false` since we don't have any translations
    // defined for the German language so it does nothing.
    Locale.set("de")

    // Returns the current locale as a `Maybe.Just(locale)`
    // if there is any defined. Returns `Maybe.Nothing` if
    // there are no locales defined.
    Locale.get() // Maybe.Just("en")
    ```

    After setting a new locale the application will show the new translations
    automatically.
    MARKDOWN
    |> ContentInstrumenter.instrument
}
