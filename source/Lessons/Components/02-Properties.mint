module Lessons {
  const COMPONENTS_PROPERTIES =
    {
      files:
        [
          {
            path: "Main.mint",
            solution: "",
            contents:
              <<~MINT
              component Multiplier {
                // This is a required property because there is
                // no default value.
                property number : Number

                // This is a property where the type is inferred
                // from the default value (Number in this case).
                property by = 1

                fun render : Html {
                  <div>
                    Number.toString(number * by)
                  </div>
                }
              }

              component Main {
                fun render : Html {
                  <div>
                    <Multiplier number={10}/>
                    <Multiplier number={3} by={100}/>
                  </div>
                }
              }
              MINT
          }
        ],
      contents:
        <<#MARKDOWN(highlight)
        If you want to pass some value to components which are different for
        every instance then you can use **properties**.

        A property is defined inside a component using the `property` keyword:

        ```mint
        property name : String = "Joe"
        ```

        A property have three parts: **name**, **type** and **default value**.

        * The **name** is always required, and it's used to identify the
          property.

        * The **type** is optional if there is a **default value**, otherwise
          it's required so we know which type the property is.

        * The **default value** is optional if there is a **type**, otherwise
          it's required so we know which type the property is.

        Values for the properties are passed using attributes, just like with
        HTML tags:

        ```mint
        <Greeter name="Joe"/>
        ```

        If the values don't match up with the properties, then you will get
        nice error messages!

        You can play around with the example, changing the type or the
        default value to see what errors you get.
        MARKDOWN
    }
}
