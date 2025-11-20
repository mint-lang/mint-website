module Posts {
  const MINT_FOR_ELM_DEVELOPERS =
    {
      title: "Mint for Elm Developers",
      time: Time.utc(2025, 10, 17),
      author: "Gusztáv Szikszai",
      subtitle:
        "A practical guide to learning Mint using existing Elm knowledge.",
      contents:
        defer {
          <<#MARKDOWN(highlight)
  > This post is intended for Elm developers, but it can be useful for everyone
  who wants to learn about Mint.

  As you know Elm is a small functional language which has been stable for quite
  some time, with well defined features and solutions. In this post I'll try to
  show you that Elms features are just a subset of Mints (by showing examples)
  and that Mint actually has a lot more to offer.

  #{<img src={@asset(/assets/news/mint-and-elm.svg)}/>}

  ## The same

  Elm and Mint are for building single page applications and they share the same
  core values and features.

  ### Static typing

  Both languages offer type annotations and type inference using the Hindley-Milner
  type system.

  ```mint
  // TODO Example
  ```

  ```elm
  // TODO Example
  ```

  ### No runtime exceptions

  This is mainly a side effect of **static typing** and a hand crafted runtime.
  Exceptions can still happen when interoparting with Javascript so it only code
  written in the language can be considered safe.

  ### Functional and immutable at heart

  There are no mutable variables in either language and functions are pure (
  with some exceptions in Mint).

  ```mint
  // TODO Example
  ```

  ```elm
  // TODO Example
  ```

  ### ADTs and pattern matching

  Both languages support Algebraic Data Types with exhaustive pattern matching.

  ```mint
  // TODO Example
  ```

  ```elm
  // TODO Example
  ```

  ## Mints built-in features

  So far we only compared the features that both languages have (which in Elms
  case there are not many that Mint doesn't have)
          MARKDOWN
        }
    }
}
