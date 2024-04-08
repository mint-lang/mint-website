module Lessons {
  const COMPONENTS_STYLING =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              component Main {
                style base {
                  font-family: 'Comic Sans MS', cursive;
                  font-size: 2em;
                  color: purple;
                }

                fun render : Html {
                  <p::base>
                    "This is a paragraph."
                  </p>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                style base {
                  /* Styles go here. */
                }

                fun render : Html {
                  <p::base>
                    "This is a paragraph."
                  </p>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        In HTML, you normally put your styles into a `<style>` element. In Mint
        you put it into `style` blocks.

        ```mint
        style base {
          font-family: 'Comic Sans MS', cursive;
          font-size: 2em;
          color: purple;
        }
        ```

        Style blocks are like CSS classes, they have a name and can be added to
        any element in the component.

        Styling is a topic so big that it has its own chapter, so stick around
        to learn everything about it!
        MARKDOWN
    }
}
