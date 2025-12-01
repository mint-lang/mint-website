module News {
  const CONTEXT =
    {
      subtitle: "Mint 0.27.0 Released",
      title: "Context",
      time: Time.utc(2025, 8, 14),
      author: "Gusztáv Szikszai",
      contents:
        defer {
          let contextExample =
            <SimpleIde
              orientation="vertical"
              editorHeight="400px"
              previewHeight="80px"
              contents={
                <<~MINT
                type Theme {
                  setMode : Function(String, Promise(Void)),
                  mode : String,
                } context {
                  setMode: (value : String) { Promise.resolve(void) },
                  mode: ""
                }

                component Button {
                  context theme : Theme

                  style root {
                    border-radius: 3px;
                    padding: 10px;
                    border: 0;

                    case theme.mode {
                      "light" =>
                        background: #EEE;
                        color: #333;
                      =>
                        background: #333;
                        color: #FFF;
                    }
                  }

                  fun handleClick {
                    theme.setMode(
                      if theme.mode == "light" {
                        "dark"
                      } else {
                        "light"
                      })
                  }

                  fun render {
                    <button::root onClick={handleClick}>
                      "I'm a button! Click me to change the mode!"
                    </button>
                  }
                }

                component Main {
                  state mode : String = "light"

                  provide Theme {
                    setMode: -> mode,
                    mode: mode
                  }

                  fun render {
                    <Button/>
                  }
                }
                MINT
              }
            />

          <<#MARKDOWN(highlight)
          Mint is a type-safe programming language for writing single page
          applications. In this post, we will take a look at what's new in the
          release `0.27.0`.

          In this release we added a feature to pass values to child components
          using context, quality of life changes for `if` expressions and
          some bug fixes.

          ## Context

          [Context] allows you to pass values to child components without using
          properties in a type safe way, no matter how deep the child is in the
          component tree. You can think about it as a kind of dependency
          injection.

          They are usually used to pass theme or form data around.

          #{contextExample}

          [Context]: /reference/components/context

          ## Quality of life changes for `if`

          There are some instances where you want to check if a `Maybe` or a
          `Result` has a value. Currently you can [destructure] it to get the
          value:

          ```mint
          let value =
            Maybe.Just("Hello World!")

          if let Just(value) = value {
            // value is now unboxed
          }
          ```

          Now you don't need to destructure, the compiler will unbox the value
          for you:

          ```mint
          let value =
            Maybe.Just("Hello World!")

          if value {
            // value is now unboxed here
          }
          ```

          Also, you can pass a `Maybe`, `Result` or `Html` as the condition, and
          then it will check if they are truthy (`Maybe.Just`, `Result.Ok` or
          the `Html` has any content):

          ```mint
          if Html.isNotEmpty(value) { /* value is not empty */ }
          if value { /* value is not empty */ }

          if Maybe.isJust(value) { /* value is `Maybe.Just` */ }
          if value { /* value is `Maybe.Just` */ }

          if Maybe.isOk(value) { /* value is `Result.Ok` */ }
          if value { /* value is `Result.Ok` */ }
          ```

          The latter versions seem more intuitive to many, and I whished a lot
          of times for this feature and not have gotten around to implement it.

          [destructure]: /reference/control-flow/if#destructuring

          ## What's next?

          We continue on fixing bugs and issues that come up and working on
          GitHub issues before 1.0.0.

          ---

          These were just the highlights of the release, make sure to read the
          full release notes:
          [`0.27.0`](https://github.com/mint-lang/mint/releases/tag/0.27.0)
          MARKDOWN
        }
    }
}
