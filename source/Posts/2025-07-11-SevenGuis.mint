module Posts {
  const SEVEN_GUIS =
    {
      subtitle: "Implementing 7GUIs in Mint",
      time: Time.utc(2025, 7, 11),
      author: "Gusztáv Szikszai",
      title: "7GUIs in Mint",
      contents:
        defer {
          let counter =
            <SimpleIde
              contents={@inline(/assets/examples/7GUIs/Counter.mint)}
              orientation="vertical"
              previewHeight="40px"
            />

          let temperatureConverter =
            <SimpleIde
              contents={
                @inline(/assets/examples/7GUIs/TemperatureConverter.mint)
              }
              orientation="vertical"
              editorHeight="400px"
              previewHeight="40px"
            />

          let flightBooker =
            <SimpleIde
              contents={@inline(/assets/examples/7GUIs/FlightBooker.mint)}
              orientation="vertical"
              editorHeight="400px"
              previewHeight="140px"
            />

          let timer =
            <SimpleIde
              contents={@inline(/assets/examples/7GUIs/Timer.mint)}
              orientation="vertical"
              previewHeight="140px"
              editorHeight="400px"
            />

          let crud =
            <SimpleIde
              contents={@inline(/assets/examples/7GUIs/CRUD.mint)}
              orientation="vertical"
              previewHeight="150px"
              editorHeight="400px"
            />

          let circleDrawer =
            <SimpleIde
              contents={@inline(/assets/examples/7GUIs/CircleDrawer.mint)}
              orientation="vertical"
              previewHeight="260px"
              editorHeight="400px"
            />

          let cells =
            <SimpleIde
              orientation="vertical"
              previewHeight="400px"
              editorHeight="400px"
              contents={
                [
                  @inline(/assets/examples/7GUIs/Cells/Types.mint),
                  @inline(/assets/examples/7GUIs/Cells/Parser.mint),
                  @inline(/assets/examples/7GUIs/Cells/Formula.mint),
                  @inline(/assets/examples/7GUIs/Cells/Sheet.mint),
                  @inline(/assets/examples/7GUIs/Cells/Main.mint)
                ]
                |> String.join("\n")
              }
            />

          <<#MARKDOWN(highlight)
    Since I learned about [7GUIs] I wanted to implement them in Mint. I've
    tried a few times but always stopped at some point and there were changes
    in Mint, so I started again and then stopped again.

    When recently I've added [examples] to the website it presented a good
    opportunity to finally implement and showcase them on the website.

    I'm not going to explain all the tasks, but instead what was easy and what
    was hard to do in Mint. You can also try them out in each section and
    even modify them if you please.

    [7GUIs]: https://7guis.github.io/7guis/
    [examples]: /examples

    ## Counter

    The counter task is a pretty easy one, not much to tell here. It's almost
    the same as the plain JavaScript version would be.

    #{counter}

    ## Temperature Converter

    This was also easy. The tricky part was handling the invalid states, but
    having a type for it (`Field`) with variants describing them makes it simple.

    #{temperatureConverter}

    ## Flight Booker

    Tasks start getting interesting with this one.

    * there was a need for parsing a date in a specific format -
      a regexp was a good solution here
    * the buttons need to be disabled in multiple conditions - matching on
      a three  element tuple makes this a breeze

    #{flightBooker}

    ## Timer

    This wasn't that difficult in Mint since we have some built in entities
    that does the heavy lifting.

    We have the [animation frame provider], which calls a function on every
    animation frame. This allows us to track the elapsed time. Having the
    duration wired up was easy with the range slider.

    [animation frame provider]: /api/Provider.AnimationFrame

    #{timer}

    ## CRUD

    This wasn't particularly difficult either,  since we have some functions
    for updating and deleting entities at a specific index in an array. It's
    basically pretty straight forward.

    A nice side effect of implementing this resulted in a detecting a subtle
    bug which needs fixing.

    #{crud}

    ## Circle Drawer

    This task is the second hardest one. I needed to create more components
    (the previous ones only needed the one) and an extra module to handle
    history - `Undoable(a)` - fortunately I was able to port an Elm module I
    used to use.

    The builtin [outside click provider] was used to close the panels that show
    up when a circle is clicked. Also alternative patterns in case branches
    provided useful in many cases here.

    [outside click provider]: /api/Provider.OutsideClick

    #{circleDrawer}

    ## Cells

    Now this one was the hardest one because you basically need to write a very
    simple spreadsheets clone. Implementing this one has taken me three sessions
    at least (the other tasks I was able to do in a single session).

    #{cells}

    ### Formula

    Cells in spreadsheets are either texts or formulas. A formula is basically
    starts with an equal sign and have multiple variants. I needed to write a
    **parser** for it and then an **evaluator** which calculates the numeric
    values of the cells.

    To make a little optimization in the parser, I needed to use inline
    JavaScript, which I didn't need to do in the previous tasks. Other than
    that it was fun to write a parser in Mint - a thing I didn't do before.
    ADTs were very useful in this task.

    ### Evaluator

    The evaluator is a combination of recursive reduce functions. If a cell
    depends on another cell, we need to evaluate that cell first and so on for
    its dependencies.

    This gets especially complicated for the functions (`sum`, `prod`) which
    can take many arguments, where any of which can be a range (which also
    needs to be evaluated). I went with the naive approach but it also caches
    values, and I'm sure that there are other algorithms which are better.

    ### UI

    The actual UI was the least time-consuming part of this task. Mint makes
    it easy and very enjoyable.

    ----

    I enjoyed working on these tasks and finally showcasing the Mint
    implementations feels great! If you find ways to improve them, drop me a
    pull request on the [mint-website] repository.

    _P.S. Writing this blog post uncovered a bug in the website code which is
    now fixed and prompted a change in the example component to maximize the
    editor height since the examples are so big and a limit wasn't set._

    [mint-website]: https://github.com/mint-lang/mint-website
          MARKDOWN
        }
    }
}
