module Guides {
  const CHEATSHEETS_ELM =
    <<#MARKDOWN(highlight)
    # Mint for Elm users

    Elm and Mint have similar goals of providing a robust and sound type
    system with a friendly and approachable set of features.

    They have some differences in their syntax and approach. Where Elm has a
    Haskell-like syntax, Mint has a more friendly C-like syntax, and where
    Elm uses functions as building blocks while Mint uses components.

    Another area in which Elm and Mint differ is around talking to other
    languages. Elm does not provide user-defined foreign function interfaces
    for interacting with JavaScript code and libraries. All communication
    between Elm and JavaScript has to go through the Elm ports. In contrast to
    this, Mint makes it easy to inline JavaScript code directly and has no
    concept of ports.

    ## Comments

    **Elm**

    In Elm, single line comments are written with a `--` prefix and multiline
    comments are written with `{- -}` and `{-| -}` for documentation comments.

    ```elm
    -- Hello, Joe!

    {- Hello, Joe!
       This is a multiline comment.
    -}

    {-| Determine the length of a list.
        length [1,2,3] == 3
    -}
    length : List a -> Int
    length xs =
      foldl (\_ i -> i + 1) 0 xs
    ```

    **Mint**

    Mint has single line and multiline comments:

    ```mint
    // Hello, Joe!

    /*
    Hello, Joe!
    This is a multiline comment.
    */
    ```

    ## Variables

    **Elm**

    In Elm, you assign variables in let-blocks, and you cannot re-assign
    variables within a let-block. You also cannot create a variable with the
    same name as a variable from a higher scope.

    ```elm
    let
      size = 50
    in
      size
    ```

    **Mint**

    Mint has the `let` keyword before its variable names. You cannot re-assign
    variables, and you cannot shadow variables from other scopes.

    ```mint
    let size = 50
    ```

    ## Constants

    **Elm**

    In Elm, constants can be defined at the top level of the module like any
    other value and exported if desired and reference from other modules.

    ```elm
    module Hikers exposing (theAnswer)

    theAnswer: Int
    theAnswer =
      42
    ```

    **Mint**

    In Mint, constants can be created using the `const` keyword, in specific
    entities (like modules).

    ```mint
    module Answers {
      const THE_ANSWER = 42

      fun answer() {
        THE_ANSWER
      }
    }
    ```

    Mint constants can be referenced from anywhere.

    ```mint
    // Answers.mint
    module Answers {
      const THE_ANSWER = 42
    }
    ```

    ```mint
    // Main.mint
    component Main {
      fun render : String {
        Number.toString(Answers.THE_ANSWER)
      }
    }
    ```

    ## Functions

    **Elm**

    In Elm, functions are defined as declarations that have arguments, or by
    assigning anonymous functions to variables.

    ```elm
    sum x y =
      x + y

    multiply =
      \\x y -> x * y

    multiply 3 2
    -- 6
    ```

    **Mint**

    Mint's functions are declared using a syntax similar to Rust or JavaScript,
    whereas anonymous functions are declared without using the `fun` keyword
    and the name, of course.

    ```mint
    fun sum(x : Number, y : Number) {
      x + y
    }

    let multiply =
      (x : Number, y : Number) { x * y }

    multiply(1, 2)
    ```

    ### Function type annotations

    **Elm**

    In Elm, functions can **optionally** have their argument and return types
    annotated. These type annotations will always be checked by the compiler
    and throw a compilation error if not valid. The compiler will still type
    check your program using type inference if annotations are omitted.

    ```elm
    sum : number -> number -> number
    sum x y = x + y

    mul : number -> number -> Bool -- Compile error
    mul x y = x * y
    ```

    **Mint**

    In Mint functions **must** have their argument types annotated, while the
    return type is optional. The types are checked just like in Elm.

    ```mint
    fun sum(x : Number, y : Number) : Number {
      x + y
    }

    fun multiply(x: Number, y: Number) : Bool {
      x * y // compile error, type mismatch
    }
    ```

    ### Labelled arguments

    **Elm**

    Elm has no built-in way to label arguments. Instead, it is standard for a
    function to expect a record as an argument, in which the field names would
    serve as the argument labels. This can be combined with providing a
    'defaults' value of the same record type, where callers can override only
    the fields that they want to differ from the default.

    ```elm
    defaultOptions =
      { inside = defaultString
      , each = defaultPattern,
      , with = defaultReplacement
      }

    replace opts =
      doReplacement opts.inside opts.each opts.with
    ```

    ```elm
    replace { each = ",", with = " ", inside = "A,B,C" }

    replace { defaultOptions | inside = "A,B,C,D" }
    ```

    **Mint**

    In Mint, functions can be called with the arguments name.

    ```mint
    fun replace(string: String, pattern: String, replacement: String) {
      go(string, pattern, replacement)
    }
    ```

    ```mint
    replace(pattern: ",", replacement: " ", string: "A,B,C")
    ```

    There is no performance cost to Mint's labelled arguments, as they are
    optimized to regular function calls at compile time, and all the arguments
    are fully type checked.

    ## Modules

    **Elm**

    In Elm, the `module` keyword allows creating a module. Each module maps to
    a single file. The module name must be explicitly stated and must match the
    file name.

    ```elm
    module Foo exposing (identity)

    identity : a -> a
    identity x =
      x
    ```

    **Mint**

    Mint is using the `module` keyword as well, and any entity defined inside
    its block belongs to the module. Because of this, modules are not tied to
    files.

    ```mint
    module One {
      fun identity(x : a) : a {
        x
      }
    }

    component Main {
      fun render : String {
        One.identity("one")
      }
    }
    ```

    ### Exports

    **Elm**

    In Elm, exports are handled at the top of the file in the module
    declaration as a list of names.

    ```elm
    module Math exposing (sum)

    -- this is public as it is in the export list
    sum x y =
      x + y

    -- this is private as it isn't in the export list
    mul x y =
      x * y
    ```

    **Mint**

    Mint everything is public. Since nothing is overrideable there is no need
    for private entities.

    ## Blocks

    **Elm**

    In Elm, expressions can be grouped using `let` and `in`.

    ```elm
    view =
      let
        x = 5
        y =
          let
            z = 4
            t = 3
          in
            z + (t * 5)
      in
        y + x
    ```

    **Mint**

    In Mint, braces `{` `}` are used to group expressions.

    ```mint
    fun calculate {
      let x =
        {
          print(1)
          2
        }

      let y =
        x * (x + 10)

      y
    }
    ```

    ## Data types

    ### Numbers

    **Elm**

    Elm has `Int` and `Float` as separate number types, and it has a built-in
    `number` concept that allows it to treat `Int` and `Float` generically, so
    operators like `+` can be used for two `Int` values or two `Float` values
    though not for an `Int` and a `Float`

    **Mint**

    Mint has no integer type and only a single floating-point `Number`

    ### Strings

    Both languages use double quotes for strings.

    **Elm**

    ```elm
    "Hello, world!"
    ```

    Strings in Elm are combined using the `++` operator.

    ```elm
    greeting =
      "Hello, " ++ "world!"
    ```

    **Mint**

    ```mint
    "Hello, world!"
    ```

    Similar to Elm, you can combine strings, for that Mint uses the operator `+`

    ```mint
    let greeting =
      "Hello, " + "world!"
    ```

    ### Tuples

    Tuples are very useful in both Elm and Mint as they're the only collection
    data type that allows mixed types in the collection.

    **Elm**

    In Elm, tuples are limited to only 2 or 3 entries. It is recommended to use
    records when needing larger numbers of entries.

    ```elm
    myTuple = ("username", "password", 10)
    (_, password, _) = myTuple
    ```

    **Mint**

    In Mint, tuples need to have at least 2 entities (one entity is a variable)
    and have no upper limits, but records are still recommended as giving names
    to fields adds clarity.

    ```mint
    let myTuple = {"username", "password", 10}
    let {username, password, age} = myTuple
    ```

    ### Records

    Records are used to define and create structured data.

    **Elm**

    In Elm, you can declare records using curly braces containing key-value
    pairs:

    ```elm
    person =
      { name = "Alice"
      , age = 43
      }
    ```

    The type of the record is derived by the compiler. In this case, it
    would be:

    ```elm
    { name : String, age : number }
    ```

    Record fields can be accessed with a dot syntax:

    ```elm
    greeting person =
      "Hello, " ++ person.name ++ "!"
    ```

    Records cannot be updated because they are immutable. However, there
    is a special syntax for easily creating a new record based on an
    existing record's fields:

    ```elm
    personWithSameAge = { person | name = "Bob" }
    ```

    **Mint**

    In Mint, you cannot create records without creating a custom type first, if
    you try it will result in a compile-time error.

    ```mint
    type Person {
      name: String,
      age: Int
    }

    let alice = { name: "Alice", age: 43 }
    // no compile time error since it matches the type above

    let grace = { name: "Grace", age: 26, hair: "Long" }
    // results in a compile time error, no type matches the structure
    ```

    Record fields can be accessed with a dot syntax:

    ```mint
    let greeting =
      Array.join(["Hello, ",  person.name, "!"])
    ```

    Records cannot be updated because they are immutable. However, there
    is a special syntax for easily creating a new record based on an
    existing record's fields:

    ```mint
    let personWithSameAge = { person | name: "Bob" }
    ```

    ### Lists / Arrays

    Both Elm and Mint support containers of items, where all items have to be of
    the same type.

    **Elm**

    Elm has a built-in syntax for lists and the `cons` operator (`::`) for
    adding a new item to the head of a list.

    ```elm
    list = [2, 3, 4]
    anotherList = 1 :: list
    yetAnotherList = "hello" :: list // compile error, type mismatch
    ```

    **Mint**

    Mint has a built-in syntax for arrays (`Array(a)`) and no special syntax
    for appending or prepending, only functions.

    ```mint
    let array = [2, 3, 4]
    ```

    Arrays are immutable (just like any other values) so any modification
    results in a new array instead.

    ```mint
    let array = [2, 3, 4]
    let modified = Array.unshift(array, 1)
    ```

    ### Dicts / Maps

    Dict in Elm and Map in Mint have similar properties and purpose.

    In Mint, maps can have keys and values of any type, but all keys must be of
    the same type in a given map and all values must be of the same type in a
    given map.

    Like Elm, there is no map literal syntax in Mint, and you cannot pattern
    match on a map.

    **Elm**

    ```elm
    import Dict

    Dict.fromList [ ("key1", "value1"), ("key2", "value2") ]
    Dict.fromList [ ("key1", "value1"), ("key2", 2) ] -- Compile error
    ```

    **Mint**

    ```mint
    Map.fromArray([{"key1", "value1"}, {"key2", "value2"}])
    Map.fromArray([{"key1", "value1"}, {"key2", 2}]) // Type error!
    ```

    ## Operators

    Operators in Mint work the same as in Elm, expect for concatenation which
    is `++` in Elm and `+` in Mint.

    Check the [operators reference](/reference/operators) for more information.

    ## Type Aliases

    Elm uses type aliases to define the layout of records. Mint uses Custom
    Types to achieve a similar result.

    Mint's custom types allow you to define a collection data type with a fixed
    number of named fields, and the values in those fields can be of differing
    types.

    **Elm**

    ```elm
    type alias Person =
     { name : String
     , age : Int
     }

    person = Person "Jake" 35
    name = person.name
    ```

    **Mint**

    Mint's custom types can be used in much the same way. At runtime, they are
    plain JavaScript objects, so there is little overhead.

    ```mint
    type Person {
      name: String,
      age: Int
    }

    let person = { name: "Jake", age: 35 }
    let name = person.name
    ```

    ## Custom Types

    Both Elm and Mint have a similar concept of custom types. These allow you
    to list out the different states that a particular piece of data might have.

    **Elm**

    The following example might represent a user in a system:

    ```elm
    type User
      = LoggedIn String  -- A logged in user with a name
      | Guest            -- A guest user with no details
    ```

    You must use a case-expression to interact with the contents of a value
    that uses a custom type:

    ```elm
    getName : User -> String
    getName user =
      case user of
        LoggedIn name ->
          name

        Guest ->
          "Guest user"
    ```

    A custom type with a single entry can be used to help create opaque data
    types for your module's API if only the type and not the single constructor
    is exported.

    **Mint**

    ```mint
    type User {
      // A logged in user with a name
      LoggedIn(name: String)
      // A guest user with no details
      Guest
    }
    ```

    Like in Elm, you must use a case-expression to interact with the contents
    of a value that uses a custom type.

    ```mint
    fun getName (user : User) {
      case user {
        LoggedIn(name) => name
        Guest => "Guest user"
      }
    }
    ```

    There are no opaque data types in Mint.

    ### Maybe

    Neither Mint nor Elm have a concept of 'null' in their type system. Both
    languages use `Maybe` to handle this case.

    **Elm**

    In Elm, `Maybe` is defined as:

    ```elm
    type Maybe a
      = Nothing
      | Just a
    ```

    **Mint**

    In Mint, `Maybe` is defined as:

    ```mint
    type Maybe(a) {
      Nothing
      Just(a)
    }
    ```

    ### Result

    Neither Mint nor Elm have exceptions and instead represent failures using
    the `Result` type.

    **Elm**

    Elm's `Result` type is defined as:

    ```elm
    type Result error value
      = Err error
      | Ok value
    ```

    **Mint**

    Mint's `Result` type is defined as:

    ```mint
    type Result(error, value) {
      Error(error)
      Ok(value)
    }
    ```

    ## If expressions

    **Elm**

    Elm has syntax for if-expressions for control flow based on boolean values.

    ```elm
    description =
      if value then
        "It's true!"
      else
        "It's not true."
    ```

    **Mint**

    Mint also has a built-in if-expression syntax.

    ```mint
    let description =
      if value {
        "It's true!"
      } else {
        "It's not true."
      }
    ```

    ## Case expressions

    Both Mint and Elm support case-expressions for pattern matching on values,
    including custom types.

    **Elm**

    ```elm
    getName : User -> String
    getName user =
      case user of
        LoggedIn name ->
          name

        Guest ->
          "Guest user"
    ```

    **Mint**

    ```mint
    fun getName(user : User) {
      case user {
        LoggedIn(name) => name
        Guest => "Guest user"
      }
    }
    ```

    ## Talking to JavaScript

    **Elm**

    Elm programs compile to JavaScript and primarily allow you to talk to
    JavaScript via [ports](https://guide.elm-lang.org/interop/ports.html).
    Elm does not have an accessible foreign function interface for calling
    JavaScript directly from Elm code. Only core modules can do that. Ports
    provide a message-passing interface between the Elm application and
    JavaScript. It is very safe. It is almost impossible to cause runtime
    errors in your Elm code by passing incorrect values to or from ports.
    This makes Elm a very safe language with very good guarantees against
    runtime exceptions but at the cost of some friction when the developer
    wants to interact with JavaScript.

    **Mint**

    Mint has **inlining** for talking to JavaScript is, which means that you can
    write JavaScript code between backticks:

    ```mint
    let confirmed = `window.confirm("Are you sure")` as Bool
    ```

    This is **unsafe**, so when using is make sure you always wrap it in a
    `try` statement and handle any error that might happen.

    ## Commands

    **Elm**

    Elm is a pure language so all side effects, e.g. making an HTTP request, are
    managed by the command system. This means that functions for making HTTP
    requests return an opaque command value that you return to the runtime,
    normally via the update function, in order to execute the request.

    **Mint**

    Mint is not a pure language and so does not have a command system for
    managing side effects. Any function can directly perform side effects and
    where necessary will manage success and failure using the `Result` type or
    other more specific custom types.

    ## Architecture

    **Elm**

    Elm has 'The Elm architecture' baked into the language and the core modules.
    Generally speaking, all Elm applications follow the Elm architecture.

    **Mint**

    Mint uses [components](/reference/components/introduction) to encapsulate
    code for a part of the UI, they can be  composed in each other and can
    connect to [stores](/reference/stores) for handling data.

    ## Package management

    **Elm**

    Elm packages are installed via the `elm install` command and are hosted on
    [package.elm-lang.org](https://package.elm-lang.org/).

    All third-party Elm packages are written in pure Elm. It is not possible
    to publish an Elm package that includes JavaScript code unless you are in
    the core team. Some packages published under the `elm` and
    `elm-explorations` namespaces have JavaScript internals.

    **Mint**

    Mint packages are installed via the `mint install` command and are hosted
    as Git repositories.

    There are no restrictions on publishing packages with JavaScript code in
    them or that wrap JavaScript libraries.

    ## Implementation

    **Elm**

    The Elm compiler is written in [Haskell](https://www.haskell.org/) and
    distributed primarily via [npm](https://www.npmjs.com/). The core libraries
    are written in a mix of Elm and JavaScript.

    **Mint**

    The Mint compiler is written in [Crystal](https://crystal-lang.org/) and
    distributed as [precompiled binaries](/install). The core libraries are
    written in a mix of Mint and JavaScript.
    MARKDOWN
}
