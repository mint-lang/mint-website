module References {
  const COMPONENTS_GLOBAL_COMPONENTS =
    <<#MARKDOWN(highlight)
    # Global Components

    Components can be declared as `global`, which means that they are globally
    accessible and only rendered once alongside the `Main` component.

    Global components are useful for some UI features that require one global
    entity that other entities can interact with from anywhere, for example
    notifications or modals.

    Here is a basic implementation of a confirmation modal. The modal can be
    used from anywhere to confirm an action.

    ```mint
    global component ConfirmModal {
      state callback : Function(Promise(Void)) = Promise.never
      state message : String = ""
      state open : Bool = false

      style base {
        background: rgba(0,0,0,0.8);
        color: white;

        position: fixed;
        bottom: 0;
        right: 0;
        left: 0;
        top: 0;

        justify-content: center;
        flex-direction: column;
        align-items: center;
        display: flex;
      }

      fun show (
        callback : Function(Promise(Void)),
        message : String
      ) : Promise(Void) {
        next
          {
            callback: callback,
            message: message,
            open: true
          }
      }

      fun handleClick : Promise(Void) {
        callback()
        next { open: false }
      }

      fun render : Html {
        if open {
          <div::base>
            <{ message }>

            <button onClick={handleClick}>
              "OK"
            </button>
          </div>
        }
      }
    }

    component Main {
      fun handleClick : Promise(Void) {
        ConfirmModal.show(
          callback: Promise.never,
          message: "Hello There!")
      }

      fun render : Html {
        <div onClick={handleClick}>
          "Click ME!"
        </div>
      }
    }
    MARKDOWN

}
