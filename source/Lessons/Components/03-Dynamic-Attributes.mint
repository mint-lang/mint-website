module Lessons {
  const COMPONENTS_DYNAMIC_ATTRIBUTES =
    {
      files:
        [
          {
            path: "Main.mint",
            solution:
              <<~MINT
              component Main {
                fun render : Html {
                  let src =
                    "https://media.giphy.com/media/5kq0GCjHA8Rwc/giphy.gif"

                  let name =
                    "Rick Astley"

                  <img src={src} alt="\#{name} dances."/>
                }
              }
              MINT,
            contents:
              <<~MINT
              component Main {
                fun render : Html {
                  let src =
                    "https://media.giphy.com/media/5kq0GCjHA8Rwc/giphy.gif"

                  <img/>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        You can use curly braces to control element or component attributes.

        Our image is missing a `src` attribute — let's add one:

        ```mint
        <img src={src}/>
        ```

        When building web apps, it's important to make sure that they're
        accessible to the broadest possible user base, including people with
        (for example) impaired vision or motion, or people without powerful
        hardware or good internet connections.

        To that end, we should add the `alt` attribute that describes the image
        for people using screen readers, or people with slow or flaky internet
        connections that can't download the image. Let's add it:

        ```mint
        <img src={src} alt="A man dances."/>
        ```

        We can use interpolation inside attributes. Try changing it to:

        ```mint
        "\#{name} dances."
        ```

        — remember to declare a name variable.
        MARKDOWN
    }
}
