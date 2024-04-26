module References {
  const STATE_SETTER =
    <<#MARKDOWN(highlight)
    # State Setter

    A lot of time you want to set a state in reaction to some event, usually
    from inputs fields or other components like this:

    ```mint
    component Input {
      property onChange : Function(String, Promise(Void))
      property value : String

      fun render : Html {
        <input
          onInput={(event : Html.Event) { onChange(Dom.getValue(event.target)) }}
          value={value}/>
      }
    }

    component Item {
      state name : String = "Joe"

      fun render : Html {
        <Input
          onChange={(value : String) { next { name: value } }}
          value={name}/>
      }
    }
    ```

    Because this is so frequent, there is a syntax sugar for it:

    ```mint
    -> name

    // The above is basically just this
    (value : String) { next { name: value } }
    ```

    Here, it's used in the example above:

    ```mint
    component Item {
      state name : String = "Joe"

      fun render : Html {
        <Input
          onChange={-> name}
          value={name}/>
      }
    }
    ```
    MARKDOWN
}
