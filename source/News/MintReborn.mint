module News {
  const MINT_REBORN =
    {
      subtitle: "Mint 0.20.0 Released",
      time: Time.utc(2024, 11, 1),
      author: "Gusztáv Szikszai",
      title: "Mint Reborn",
      contents:
        defer {
          let deferredExample =
            <SimpleIde
              orientation="vertical"
              previewHeight="75px"
              contents={
                <<~MINT
                component Main {
                  state content : String = "Click me to load some other text!"

                  const TEXT = defer "Some long text here..."

                  fun render : Html {
                    <div onClick={() { next { content: await TEXT } }}>
                      content
                    </div>
                  }
                }
                MINT
              }
            />

          let asyncComponentExample =
            <SimpleIde
              orientation="vertical"
              previewHeight="75px"
              contents={
                <<~MINT
                async component Greeter {
                  fun render : Html {
                    <div>
                      "Hello World! I'm loaded asynchronously!"
                    </div>
                  }
                }

                component Main {
                  state shown : Bool = false

                  fun render : Html {
                    <div>
                      <button onclick={() { next { shown: true } }}>
                        "Show Greeting!"
                      </button>

                      if shown {
                        <Greeter/>
                      }
                    </div>
                  }
                }
                MINT
              }
            />

          let exhaustivenessExample =
            <SimpleIde
              orientation="vertical"
              previewHeight="450px"
              contents={
                <<~MINT
                component Main {
                  fun render : Html {
                    case Maybe.Just(Maybe.Just("Hello World!")) {
                      Just(Just(greeting)) => greeting
                    }
                  }
                }
                MINT
              }
            />

          let htmlExample =
            <SimpleIde
              orientation="vertical"
              previewHeight="100px"
              contents={
                <<~MINT
                component Main {
                  fun render : Html {
                    let variable =
                      "Hello World!"

                    <div>
                      variable
                      <br/>
                      "String"
                      <br/>
                      42
                      <br/>
                      ["Item1", "Item2"]
                    </div>
                  }
                }
                MINT
              }
            />

          <<#MARKDOWN(highlight)
      Mint is a type-safe programming language for writing single page
      applications. Today, Mint `0.20.0` has been published, so let's go
      over all that's new.

      The last proper release was more than a year ago. As one of my New Year's
      resolutions was to release `1.0` (which didn't happen) or at least make
      substantial progress on it (which I did). So this release is a big step
      towards `1.0`.

      Most of the work went into rewrites and refactorings, but there are some
      new language features and changes too.

      ## Rewrites, rewrites everywhere!

      Since `0.19.0` all but one part (type checker) of the source was
      rewritten or refactored, here is a non-exhaustive list:

      * **Runtime** - Changed from [class components] to [functional
        components] and [signals], this allows a two level structure (
        components have internal entities, otherwise is everything is one
        level).
      * **Compiler** - It was rewritten to emit ES5 modules and to support
        code-splitting.
      * **CLI** - Commands were reviewed and their flags or arguments
        changed to better convey their functions. Some commands moved under
        the `tool` group.
      * **Formatter** - It was rewritten to support line-length aware
        formatting.
      * **Error Messages** - They were simplified internally, unified
        and reviewed across the board.
      * **Documentation Generator** - It was rewritten to be HTML by default.

      [functional components]: https://preactjs.com/guide/v10/components/#functional-components
      [class components]: https://preactjs.com/guide/v10/components/#class-components
      [signals]: https://preactjs.com/guide/v10/signals

      ## Deferred Code

      With the compiler refactor, it's now possible to asynchronously load
      code with the `defer` keyword.

      Any expression marked with `defer` is compiled into its own file
      and can be loaded later with the `await` keyword.

      #{deferredExample}

      This makes it easy to create for example blogs where the actual posts
      are Mint files. This website is one example where we use this feature
      extensively.

      ## Async Components

      Components can now be marked `async`, which means they will be compiled
      to their own file and will be loaded on demand when the component is
      rendered on the screen.

      #{asyncComponentExample}

      ## Fully Exhaustive Pattern Matching

      Patterns previously were only matched for exhaustiveness at the top-level,
      now missing patterns are reported at any nesting level.

      #{exhaustivenessExample}

      ## Easier HTML

      Expressions now can be directly used in HTML tags (HTML expressions
      `<{...}>` are deprecated and will be removed from the language in the
      next release), and in addition to `String`, `Number` can be used as well.

      #{htmlExample}

      ## New Website

      The website (which you are on now) was also rewritten from scratch. The
      previously separate [tutorial] and [sandbox] is now in the same code
      base thanks to deferred code and async components.

      The documentation of the language was improved considerably. Every
      language feature is now documented and has a corresponding tutorial page.

      Mint also has new logo and new branding (as you can see), it even has a
      [brand book] of sorts.

      [brand book]: /brand-book
      [tutorial]: /tutorial/
      [sandbox]: /sandbox/

      ## Call to Action

      If you were looking at Mint but never tried it before, I think it is a
      great time to give it a shot! It's more stable, faster and more
      approachable than ever.

      ---

      These were just the highlights of the release, there are a lot more
      changes which we will detail in several other posts, until then make sure
      to read the full [release notes].

      [release notes]: TODO
        MARKDOWN
        }
    }
}
