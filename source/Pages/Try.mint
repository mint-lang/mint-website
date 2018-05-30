component Pages.Try {
  connect Stores.Try exposing { src, setSource, source, compile, compiling, initialized }

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

  fun handleChange (value : String) : Void {
    setSource(value)
  }

  fun handleCompile (event : Html.Event) : Void {
    compile()
  }

  get frame : Html {
    if (compiling) {
      <div::loader>
        <{ "Compiling..." }>
      </div>
    } else {
      <iframe::iframe src={src}/>
    }
  }

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
        <{ "Initializing" }>
      </div>
    }
  }
}
