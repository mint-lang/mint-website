module News {
  const PATTERN_MATCHING_AND_LANGUAGE_SERVER_IMPROVEMENTS =
    {
      subtitle: "Mint 0.24.0 and 0.25.0 Releases",
      title: "Pattern Matching and Language Server Improvements",
      time: Time.utc(2025, 6, 20),
      author: "Gusztáv Szikszai",
      contents:
        defer {
          let alternativePatternsExample =
            <SimpleIde
              orientation="vertical"
              previewHeight="80px"
              contents={
                <<~MINT
                component Main {
                  state number : Number = 0

                  fun render {
                    <div>
                      <input
                        value="\#{number}"
                        onInput={(event : Html.Event) {
                          next {
                            number: Number.fromString(
                              Dom.getValue(event.target)) or 0
                          }
                        }}
                        />
                      <br/>
                      case number {
                        2 | 4 | 6 | 8 => "This is an even number"
                        1 | 3 | 5 | 7 => "This is an odd number"
                        _ => "I'm not sure"
                      }
                    </div>
                  }
                }
                MINT
              }
            />

          let recordMatchingExample =
            <SimpleIde
              orientation="vertical"
              previewHeight="80px"
              contents={
                <<~MINT
                type UserData {
                  hairColor : String,
                  age: Number,
                }

                type User {
                  name: String,
                  data: Maybe(UserData)
                }

                component Main {
                  fun render {
                    let value =
                      {
                        name: "Joe",
                        data: Maybe.Just({
                          hairColor: "blue",
                          age: 38
                        })
                      }

                    case value {
                      { data: Just({ hairColor: hairColor, age: 38 })} => hairColor
                      => "unkown"
                    }
                  }
                }
                MINT
              }
            />

          let serializationExample =
            <SimpleIde
              orientation="vertical"
              previewHeight="280px"
              contents={
                <<~MINT
                type Status {
                  Registered(
                    hairColor : String,
                    age: Number)
                  Guest
                }

                type User {
                  name: String,
                  status: Status
                }

                component Main {
                  fun render {
                    let value =
                      [
                        {
                          name: "Joe",
                          status: Status.Registered(
                            hairColor: "blue",
                            age: 38)
                        },
                        {
                          status: Status.Guest,
                          name: "Jane",
                        },
                      ]

                    let encoded =
                      encode value

                    dbg (decode encoded as Array(User))

                    <pre>
                      <code>
                        Json.prettyStringify(encoded, 2)
                      </code>
                    </pre>
                  }
                }
                MINT
              }
            />

          <<#MARKDOWN(highlight)
        Mint is a type-safe programming language for writing single page
        applications. In this post, we will take a look at what's new in the
        releases `0.24.0` and `0.25.0`.

        In these releases, we focused on adding features to pattern matching
        and to the language server. In these releases [10 issues] have been
        closed.

        [10 issues]: https://github.com/mint-lang/mint/issues?q=sort%3Aupdated-desc%20is%3Aissue%20state%3Aclosed%20milestone%3A0.24.0%20OR%20milestone%3A0.25.0

        ## Pattern Matching

        We implemented two new features for pattern matching.

        ### Alternative patterns

        Previously, if you wanted to return the same thing from multiple
        branches in a `case` expression you needed to copy the same code to
        all the branches.

        Now you can separate the branches using pipes `|`:

        #{alternativePatternsExample}

        ### Matching records

        Records can now be matched, more specifically fields of the records.
        This addition enables deep matching when a data structure contains
        records.

        #{recordMatchingExample}

        ## Language Server

        The language server gotten two new features implemented: the document
        symbols request and the publish diagnostics notification.

        ### Publish diagnostics

        The `textDocument/publishDiagnostics` is sent from the server to the
        client to display errors in the code. In Mint there is always only one
        error so that is being published, and it looks like this (in Sublime
        Text):

        #{<img src={@asset(../../assets/news/publish-diagnostics.jpg)}/>}

        ### Document symbols

        The `textDocument/documentSymbol` request returns document symbols,
        which allows you to jump to specific entities in the file:

        #{<img src={@asset(../../assets/news/document-symbols.jpg)}/>}

        ## Automatically serialize custom types

        Another bigger feature that we implemented was to be able to
        automatically serialize custom types. This is especially useful if you
        have a state that you just want to store somewhere and load it back.

        #{serializationExample}

        ## What's next?

        We continue on fixing bugs and issues that come up and working on
        GitHub issues before 1.0.0.

        ---

        These were just the highlights of the release, make sure to read the full
        release notes:
        [`0.24.0`](https://github.com/mint-lang/mint/releases/tag/0.24.0),
        [`0.25.0`](https://github.com/mint-lang/mint/releases/tag/0.25.0),
          MARKDOWN
        }
    }
}
