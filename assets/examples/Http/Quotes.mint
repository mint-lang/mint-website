type Quote {
  source : String,
  author : String,
  quote : String,
  year : Number
}

type Status {
  Loaded(Quote)
  Loading
  Failed
}

component Main {
  state status : Status = Status.Loading

  fun componentDidMount {
    getRandom()
  }

  fun randomRange (minimum : Number, maximum : Number) {
    Math.floor(Math.random() * (maximum - minimum + 1)) + minimum
  }

  fun getRandom {
    let id =
      randomRange(1, 5)

    let request =
      Http.send(Http.get("https://mint-lang.com/data/quote-#{id}.json"))

    case await request {
      Ok({ body: JSON(object) }) =>
        case decode object as Quote {
          Ok(quote) => next { status: Status.Loaded(quote) }
          => next { status: Status.Failed }
        }

      => next { status: Status.Failed }
    }
  }

  fun render {
    <pre>
      case status {
        Loading => <>"Loading..."</>
        Failed => <>"I could not load a random quote for some reason. "</>

        Loaded(quote) =>
          <div>
            <button onClick={getRandom}>"More Please!"</button>
            <blockquote>quote.quote</blockquote>

            <p style="text-align: right">
              "— "
              <cite>quote.source</cite>
              " by #{quote.author} (#{quote.year})"
            </p>
          </div>
      }
    </pre>
  }
}
