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

  fun getRandom {
    next { status: Status.Loading }

    let id =
      Array.sample(Array.range(1, 5)) or 1

    let request =
      Http.send(Http.get("https://mint-lang.com/data/quote-#{id}.json"))

    let result =
      await {
        let Ok({ body: JSON(object) }) =
          await request or return Maybe.Nothing

        let Ok(quote) =
          decode object as Quote or return Maybe.Nothing

        Maybe.Just(quote)
      }

    case result {
      Just(quote) => next { status: Status.Loaded(quote) }
      => next { status: Status.Failed }
    }
  }

  fun render {
    <div>
      <h2>"Random Quotes"</h2>

      case status {
        Failed => <>"I could not load a random quote for some reason. "</>
        Loading => <>"Loading..."</>

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
    </div>
  }
}
