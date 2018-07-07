/* The try page. */
component Pages.Try {
  connect Stores.Try exposing {
    initialized,
    compiling,
    setSource,
    compile,
    source,
    error,
    src
  }

  style base {
    min-height: 90vh;
    display: flex;
    flex: 1;
  }

  style iframe {
    background: white;
    border: 0;
    flex: 1;
  }

  style source {
    border-right: 2px solid #DDD;
    flex-direction: column;
    display: flex;
    flex: 1;

    @media (max-width: 600px) {
      display: none;
    }
  }

  style loader {
    justify-content: center;
    align-items: center;
    display: flex;
    flex: 1;
  }

  style toolbar {
    border-bottom: 2px solid #DDD;
    align-items: center;
    padding: 10px;
    display: flex;
    height: 40px;
  }

  style file {
    font-family: monospace;
    font-weight: bold;
    font-size: 14px;
    flex: 1;
  }

  style button {
    text-transform: uppercase;
    border: 2px solid #2f9e59;
    text-decoration: none;
    border-radius: 30px;
    padding: 5px 10px;
    background: none;
    font-weight: 600;
    font-size: 12px;
    cursor: pointer;
    line-height: 1;
    color: #2f9e59;

    &:hover {
      background: #2f9e59;
      color: #FFF;
    }
  }

  /* Updates the source code. */
  fun handleChange (value : String) : Void {
    setSource(value)
  }

  /* Compiles the source code. */
  fun handleCompile (event : Html.Event) : Void {
    compile()
  }

  /* Returns the iframe if loaded, a loader otherwise. */
  get frame : Html {
    if (compiling) {
      <div::loader>
        <{ "Compiling..." }>
      </div>
    } else {
      if (String.isEmpty(error)) {
        <iframe::iframe src={src}/>
      } else {
        <div::loader>
          <{ error }>
        </div>
      }
    }
  }

  /* Renders the page. */
  fun render : Html {
    if (initialized) {
      <div::base>
        <div::source>
          <div::toolbar>
            <div::file>
              <{ "Main.mint" }>
            </div>

            <button::button onClick={handleCompile}>
              <{ "Compile" }>
            </button>
          </div>

          <CodeMirror
            onChange={handleChange}
            value={source}/>
        </div>

        <{ frame }>
      </div>
    } else {
      <div::loader>
        <{
          if (String.isEmpty(error)) {
            "Initializing..."
          } else {
            error
          }
        }>
      </div>
    }
  }
}
