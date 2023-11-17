type Page {
  Reference(Html)
  Learn
  Initial
  Install
  Home
}

type Reference {
  name : String,
  path : String,
  page : Html
}

store Application {
  state page : Page = Page.Initial

  const REFERENCE =
    [
      {
        page: <Reference.Comments/>,
        name: "Comments",
        path: "comments"
      },
      {
        page: <Reference.Literals/>,
        name: "Literals",
        path: "literals"
      },
      {
        page: <Reference.TypeSystem/>,
        name: "Type System",
        path: "type-system"
      },
      {
        page: <Reference.CustomTypes/>,
        name: "Custom Types",
        path: "custom-types"
      },
      {
        page: <Reference.Array/>,
        name: "Array",
        path: "array"
      },
      {
        page: <Reference.Tuple/>,
        name: "Tuple",
        path: "tuple"
      },
      {
        page: <Reference.BuiltInTypes/>,
        name: "Built-in Types",
        path: "built-in-types"
      },
      {
        page: <Reference.Functions/>,
        name: "Functions",
        path: "functions"
      },
      {
        page: <Reference.Modules/>,
        name: "Modules",
        path: "modules"
      },
      {
        page: <Reference.Constants/>,
        name: "Constants",
        path: "constants"
      },
      {
        page: <Reference.Equality/>,
        name: "Equality",
        path: "equality"
      },
      {
        page: <Reference.StateManagement/>,
        name: "State Management",
        path: "state-management"
      }
    ]

  fun setPage (page : Page) {
    next { page: page }
  }
}

routes {
  /install {
    Application.setPage(Page.Install)
  }

  /reference {
    Application.setPage(Page.Reference(<></>))
  }

  /reference/:path (path : String) {
    let Just(item) =
      Array.find(
        Application.REFERENCE,
        (reference : Reference) {
          reference.path == path
        }) or return Application.setPage(Page.Initial)

    Application.setPage(Page.Reference(item.page))
  }

  /learn {
    Application.setPage(Page.Learn)
  }

  / {
    Application.setPage(Page.Home)
  }

  * {
    Application.setPage(Page.Initial)
  }
}

component Main {
  connect Application exposing { page }

  fun render : Html {
    let x =
      Maybe.Just("a")

    let y =
      Maybe.Nothing

    let z =
      Result.Ok("")

    <Body>
      <Header/>

      case page {
        Reference(value) =>
          <Reference>
            value
          </Reference>

        Install => <Pages.Install/>

        Learn =>
          <Workspace/>

        Home => <Pages.Home/>
        Initial => <></>
      }

      <Footer/>
    </Body>
  }
}
