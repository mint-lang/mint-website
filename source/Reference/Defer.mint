module References {
  const DEFER =
    <<#MARKDOWN(highlight)
    # defer

    The `defer` expression marks a piece of code to be loaded at a later time.
    It is used to split the compiled code into different files.

    Lets say that there is a part of the application which needs to be loaded
    later because it's not used right away so loading it upfront does not make
    sense, for example the list of all countries:

    ```mint
    module Data {
      const COUNTRIES = defer ["Afghanistan", "Albania", "Algeria"]
    }
    ```

    By marking the expression with `defer` you tell the compiler to compile that
    array into a different file. The type of `COUNTRIES` will be
    `Deferred(Array(String))`.

    To use the list in a `<select>` tag for example you need to load it at
    some point with the `await` keyword:

    ```mint

    component CountrySelector {
      state countries : Array(String) = []

      fun componentDidMount {
        let countries = await Data.COUNTRIES
        next { countries: countries }
      }

      fun render {
        <select>
          for country of countries {
            <option>country</option>
          }
        </select>
      }
    }
    ```

    An alternative for the above would be to have the list of countries in a
    JSON file and then load it in with a HTTP request, then parse and decode
    it manually but this way is easier because the compiler handles everything.
    MARKDOWN
    |> ContentInstrumenter.instrument
}
