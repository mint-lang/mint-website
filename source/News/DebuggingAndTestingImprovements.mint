module News {
  const DEBUGGING_AND_TESTING_IMPROVEMENTS =
    {
      subtitle: "Mint 0.21.0 Released",
      time: Time.utc(2024, 12, 1),
      author: "Gusztáv Szikszai",
      title: "Debugging and Testing Improvements",
      contents:
        defer <<#MARKDOWN(highlight)
      Mint is a type-safe programming language for writing single page
      applications. Today, Mint `0.21.0` has been published, so let's go
      over all that's new.

      In this release we focused on improving debugging and testing and there
      are also some nice quality of life changes. In this release [12 issues]
      have been closed (all of them older than a year) by [15 pull requests].

      [12 issues]: https://github.com/mint-lang/mint/issues?q=sort%3Aupdated-desc%20is%3Aissue%20state%3Aclosed%20milestone%3A0.21.0
      [15 pull requests]: https://github.com/mint-lang/mint/pulls?q=sort%3Aupdated-desc+is%3Apr+is%3Aclosed+milestone%3A0.21.0

      ## Debugging improvements

      The main new feature which helps with debugging is the source map support,
      also pretty printing Mint values have landed.

      ### Source maps

      For those who don't know, source maps create a mapping between the
      original source code (Mint code) and the generated code (JavaScript).
      The browser developer tools can use those mappings among other thigns
      to display the actual source code and allow you to put debugging
      breakpoints in it.

      #{<img src={@asset(../../assets/news/source-mappings.jpg)}/>}

      The [PR] to add source maps to the language was opened more than 3 years
      ago, so it was a relief to finally ship it. The refactor of the compiler
      made it easier to implement.

      [PR]: https://github.com/mint-lang/mint/pull/356

      ### Pretty Printing Mint Objects

      Before this release when you logged a Mint object - for example
      `Maybe.Just("Hello World")` - it would look like this:

      ```
      Object { length: 1, _0: "Hello World" }
      ```

      Which is the runtime representation of the value. It made it hard to know
      what the type or constructor the object is.

      Now if you log an object using the `dbg` keyword (or the `Debug.inspect`
      function) it will pretty print it to the console. The ability to log the
      raw value like before can be achieved by adding an exclamation mark at
      the end of the keyword `dbg!`

      ```mint
      dbg Maybe.Just("Hello World")
      // Maybe.Just("Hello World")

      dbg! Maybe.Just("Hello World")
      // Object { length: 1, _0: "Hello World" }
      ```

      ## Testing improvements

      Global components now are rendered in tests and can be used like usual:

      ```mint
      global component GlobalTest {
        fun render : Html {
          <div class="global-component"/>
        }
      }

      suite "Global Component" {
        test "It renders on the page" {
          Dom.getElementBySelector(".global-component") != Maybe.Nothing
        }
      }
      ```

      Also, HTML elements and components can be referenced from tests:


      ```mint
      suite "Test with HTML reference" {
        test "it works" {
          <button as button/>
          |> Test.Html.start
          |> Test.Context.map((item : Dom.Element) { button != Maybe.Nothing })
        }
      }
      ```

      ## Quality of life changes

      Previously whitespace was a requirement for operators, now that
      requirement is lifted:

      ```mint
      // These would error out in 0.20.0 but not in 0.21.0
      0<10
      10>0
      "Hello"|>dbg
      ```

      Comments are now supported inside arrays, tuples and between pipes:

      ```mint
      // These would error out in 0.20.0 but not in 0.21.0
      [
        "Item 1",
        // Comment,
        "Item 2",
        // Comment
      ]

      {
        "Item 1",
        // Comment,
        "Item 2",
        // Comment
      }

      "Item 1"
      // Comment
      |> dbg
      ```

      It is now possible to reference assets from the root of the project (
      where the `mint.json` is located):

      ```mint
      // The usual relative from the source file (source/Main.mint).
      @asset(../assets/image.jpg)

      // Now it is possible to reference it from the root (anywhere else).
      @asset(/assets/image.jpg)
      ```

      These changes will make it easier to quickly iterate over the code.

      ---

      These were just the highlights of the release, make sure to read the full
      [release notes](https://github.com/mint-lang/mint/releases/tag/0.21.0).
      MARKDOWN
    }
}
