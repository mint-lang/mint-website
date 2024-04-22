module Lessons {
  const COMPONENTS_BASICS =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                fun render : Html {
                  <div>
                    "This is the content of a component!"
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        A **component** is a collection of UI elements which together serve a
        specific function. You can think of buttons, checkboxes, selects, images,
        etc... as components.

        All components **must have** a **render function**. This function tells
        the browser what to display. It can return a single HTML tag, a string
        or an array of them.

        There is a special component called `Main`, which is the root element,
        and it's displayed on the screen. All other components will be added
        to this component.
        MARKDOWN
    }
}
