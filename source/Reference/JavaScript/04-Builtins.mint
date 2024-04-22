module References {
  const JAVASCRIPT_BUILTINS =
    <<#MARKDOWN(highlight)
    # Builtins

    > This is an implementation feature, if you need to use this you should
      get in contact with a maintainer. This documentation is for
      informational purposes only.

    Mint has a [runtime] written in JavaScript which is basically a collection
    of functions that cannot be implemented in Mint and are needed for rendering,
    testing and interfacing with the browser.

    [runtime]: https://github.com/mint-lang/mint/tree/master/runtime

    There is a language feature to call these functions called **builtins**.

    ~~~mint
    let content =
      <div>"Hello World"</div>

    `\#{%createPortal%}(\#{content}, document.body)`
    ~~~

    In the example above the `%createPortal%` is a builtin. In the compiled
    version the function will be imported from the runtime and given a name
    something like this (pseudo code):

    ```js
    import { createPortal as A } from "runtime.js";

    // Later on will be called like so.
    A(content, document.body)
    ```

    Builtins cannot be used elsewhere just in interpolations in inlined
    JavaScript and they are untyped (their type is `Void`).

    These are the currently exposed builtins: `decodeBoolean`, `decodeNumber`,
    `decodeString`, `decodeArray`, `decodeField`, `decodeMaybe`, `decodeTime`,
    `locale`, `normalizeEvent`, `createPortal`, `testContext`, `testRender`,
    `setLocale`, `navigate`, `compare`, `nothing`, `just`, `err` and `ok`.
    MARKDOWN
}
