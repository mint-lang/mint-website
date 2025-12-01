module News {
  const QUALITY_OF_LIFE_IMPROVEMENTS =
    {
      title: "Quality of Life Improvements",
      subtitle: "Mint 0.28.0 Released",
      time: Time.utc(2024, 12, 1),
      author: "Szikszai Gusztáv",
      contents:
        defer {
          let sizeExample =
            <SimpleIde
              orientation="vertical"
              previewHeight="300px"
              editorHeight="400px"
              contents={
                <<~MINT
                component Main {
                  style element {
                    overflow: hidden;
                    resize: both;

                    height: 200px;
                    width: 400px;

                    justify-content: center;
                    align-items: center;
                    display: flex;

                    if isSmall {
                      background: red;
                    } else {
                      background: #CCC;
                    }
                  }

                  get isSmall {
                    if let Just(dimensions) = @size(element) {
                      dimensions.width < 200
                    } else {
                      false
                    }
                  }

                  fun render {
                    <div>
                      <div::element as element>
                        <span>
                          "Reize Me"

                          if let Just(dimensions) = @size(element) {
                            " \#{dimensions.width}x\#{dimensions.height}"
                          }
                        </span>
                      </div>
                    </div>
                  }
                }
                MINT
              }
            />

          <<#MARKDOWN(highlight)
  Mint is a type-safe programming language for writing single page
  applications. In this post, we will take a look at what's new in the release
  `0.28.0`.

  In this release there are a lot of quality of life improvements to type
  checking, addition of the `@size` directive, allowing connecting providers
  and modules to components, fallback value to blocks and some bug fixes.

  ## Type Checking Improvements

  There are a number of improvements to the type checking in this release.

  ### Variant Expansion

  Because Mint doesn’t have an import mechanism and all top-level entities are
  globally accessible, using many type variants can make code verbose because
  you always need to use fully qualified names for the variants, e.g.:
  `Type.Variant`.

  This reduces readability in sections where many variants
  appear close together, such as this example:

  ```mint
  <Ui.View flex={Ui.Flex.Fill} align={Ui.Align.Center} justify={Ui.Justify.Center}>
    <Ui.Text
      lineHeight={Ui.LineHeight.MultiLine}
      severity={Ui.Severity.Neutral}
      weight={Ui.FontWeight.Normal}
      tag={Ui.Text.Paragraph}
    >
      "Hello Mint!"
    </Ui.Text>
  </Ui.View>
  ```

  To solve this we needed to change the type system a bit to allow variants to
  expand into their parent types, and that's not always possible:

  ```mint
  type Ui.Flex {
    None
    Fill
  }

  type Ui.Align {
    Center
    Fill
  }

  // Here we don't know which parent type to expand into because
  // there might be many types with `Fill` as a variant so it's
  // ambiguous.
  let value = Fill
  ```
  But the good
  news is that it is possible in certain scenarios where the type is restricted:

  ```mint
  // Here we know that the type of `flex` is `Ui.Flex` so
  // it's safe to omit the name of the parent type because
  // `Fill` can only expand into `Ui.Flex`.
  property flex : Ui.Flex = Fill
  ```

  From this release the parent type's name can be omitted in specific places
  and the type checker will properly expand the variant, so the example above
  can be written like this:

  ```mint
  <Ui.View flex={Fill} align={Center} justify={Center}>
    <Ui.Text
      lineHeight={MultiLine}
      severity={Neutral}
      weight={Normal}
      tag={Paragraph}
    >
      "Hello Mint!"
    </Ui.Text>
  </Ui.View>
  ```

  Which is a lot more readable! If you find a place where you think
  this type of type expansion should be allowed, let me know by opening an
  issue!

  ### Implementation details

  Implementation wise the variants are embedded into the types so when
  unifying we can check them, which enables this behavior, but it makes
  type checking uni directional depending on which type restricts the other
  while before the order of types didn't matter and that is the reason why
  it cannot be enabled for all situations.

  Also, this feature is a stepping stone for having union types, but that
  needs a lot more work and thought!

  ## Unifying async and non-async branches

  Sometimes there are `if`s and `case`s where one branch does some async
  computation but the other(s) don't (but returning the same type):

  ```mint
  if condition {
    await someLongTask()
    Result.Ok(void)
  } else {
    Result.Err("Hello There!")
  }

  case status {
    Err(error) => Result.Err(error)

    Ok(value) => {
      await someLongTask()
      Result.Ok(void)
    }
  }
  ```

  The async branch have the type of `Promise(Result(String, Void))` while
  the non-async branch have the type of `Result(String, Void)` which results in
  a type error.

  Previously the solution was to use `Promise.resolve(...)` on the non-async
  branches or use `await` on the async branches, but that's not very developer
  friendly and involves unnecessary code.

  After this release, the example above will unify into
  `Promise(Result(String, Void))` as is.

  ## Awaiting array of promises

  Previously the `await` keyword only worked on a single `Promise(a)` but there
  a times when you would like to wait for a bunch of promises
  `Array(Promise(a))` and this is now possible:

  ```mint
  {
    let values =
      await for item of array {
        someLongTask(item)
      }

    dbg values
  }
  ```

  ## Size directive

  The `@size` directive returns the current dimensions of a referenced element:

  #{sizeExample}

  This is very useful for implementing dimension based styling.

  ## Fallback value for blocks

  The `or return value` suffix is good for returning a value if a pattern
  doesn't match but sometimes the errors are swallowed (because we don't want
  to bother the user with the exact reason since they probably wouldn't
  understand it) and the same value is returned for every error which can make
  the code a bit verbose:

  ```mint
  {
    let Ok(object) =
      Json.parse(json) or return Result.Err("Something went wrong!")

    let Ok(decoded) =
      decode object as User or return Result.Err("Something went wrong!")

    let Ok =
      await updateUser(user, data) or return Result.Err("Something went wrong!")

    Result.Ok(void)
  }
  ```

  Now you can just specify a fallback value after the block using the `or`
  keyword, which will be returned for all patterns that don't match and don't
  have their own `or return` suffix:

  ```mint
  {
    let Ok(object) =
      Json.parse(json)

    let Ok(decoded) =
      decode object as User

    let Ok =
      await updateUser(user, data)

    Result.Ok(void)
  } or Result.Err("Something went wrong!")
  ```

  This works for functions branches of ifs and cases and so on.

  ## Allow connecting providers and modules

  This is a small and useful change where you can connect providers and modules
  in components just like stores.

  ```mint
  module Greeter {
    fun greet : String {
      "Hello World!"
    }
  }

  component Main {
    connect Greeter exposing { greet }

    fun render {
      greet()
    }
  }
  ```

  ## Default value for contexts

  There was an issue with the implementation of context where a component which
  uses a context is inderctly used outside of components which made it
  impossible to track so it resulted in a runtime error. For this reason types
  that are used as context will need to have a default value defined after the
  type definition.

  ```mint
  type Theme {
    setMode : Function(String, Promise(Void)),
    mode : String,
  } context {
    setMode: (value : String) { Promise.resolve(void) },
    mode: ""
  }
  ```

  Also a change for contexts that any type can now be used as a context not
  just record types.

  ## What's next?

  We will take this month to test the stability of this release, check the
  documentation and will release 1.0.0 on January 1st, 2026 :D

  ---

  These were just the highlights of the release, make sure to read the
  full release notes:
  [`0.28.0`](https://github.com/mint-lang/mint/releases/tag/0.28.0)
          MARKDOWN
        }
    }
}
