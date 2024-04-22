module Lessons {
  const CONTROL_FLOW_DEFER =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Main {
                const TEXT =
                  defer <<~PLAIN
                  This was loaded on demand!
                  PLAIN

                const DEFERRED_ALERT =
                  defer (value : String) { Window.alert(value) }

                fun render : Html {
                  <ol>
                    <li>"Open the developer tools tab"</li>
                    <li>"Open the network tab"</li>
                    <li>
                      "Click the button to load the deferred things."
                      <br/>
                      <button onClick={() {
                        let alert = await DEFERRED_ALERT
                        let text = await TEXT

                        alert(text)
                      }}>
                        "Load deferred things."
                      </button>
                    </li>
                    <li>"You should see 1.js and 2.js loaded."</li>
                    <li>"You can check the files if you like :)"</li>
                  </ol>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        There are some scenarios when you don't want to load a piece of code
        up-front. Mint has a built-in feature for this with the `defer` keyword.

        The expression after the `defer` keyword will be bundled into a
        different file, which can be loaded later on with the `await` keyword:

        ```mint
        let deferred =
          defer "Hello, I'm compiled into a different file!"

        let string =
          await deferred

        Debug.log(string)
        ```

        The deferred things are actually separated at compile time so they
        don't have any runtime cost. To learn more about it, check out its
        [reference](/reference/control-flow/defer).

        Check the example on the right to see how it works!
        MARKDOWN
    }
}
