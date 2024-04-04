module Lessons {
  const INTRODUCTION =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                state counter = 0

                fun increment {
                  next { counter: counter + 1 }
                }

                fun decrement {
                  next { counter: counter - 1 }
                }

                fun render {
                  <div>
                    <button onClick={decrement}>
                      "Decrement"
                    </button>

                    <span>
                      Number.toString(counter)
                    </span>

                    <button onClick={increment}>
                      "Increment"
                    </button>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN
        ## Introduction

        Welcome to the Mint tutorial. This is an interactive exploration of
        the Mint programming language, designed to make you productive as
        quickly as possible.

        Make sure to also check out the [reference](/reference) and the
        [core library](/)

        ### What is Mint?

        Mint is a language specifically created for writing **single-page
        web applications**.

        It provides you with all the necessary tooling to write **error free**,
        **readable**, and **maintainable** software.

        Mint is strongly typed, and compiles to JavaScript. This means, your
        code is less prone to errors, easier to maintain, and benefits from
        optimizations done by the compiler.

        ### How to use this tutorial

        You'll need to have basic familiarity with HTML, CSS and JavaScript to
        understand Mint.

        As you progress through the tutorial, you'll be presented with mini
        exercises designed to illustrate new features. Later chapters build on
        the knowledge gained in earlier ones, so it's recommended that you go
        from start to finish. If necessary, you can navigate via the dropdown
        above (click 'Introduction').

        Some tutorial chapters will have a button that you can click if you
        get stuck following the instructions. Try not to rely on it too much;
        you will learn faster by figuring out where to put each suggested code
        block and manually typing it in to the editor.
        MARKDOWN
    }
}
