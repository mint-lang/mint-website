type Status {
  Loaded(String)
  Loading
  Failed
}

component Main {
  state status : Status = Status.Loading

  fun componentDidMount {
    let request =
      Http.send(Http.get("https://mint-lang.com/data/public-opinion.txt"))

    case await request {
      Ok({ body: Text(fullText) }) => next { status: Status.Loaded(fullText) }
      => next { status: Status.Failed }
    }
  }

  fun render {
    <pre>
      case status {
        Loaded(fullText) => fullText
        Loading => "Loading..."
        Failed => "Failed"
      }
    </pre>
  }
}
