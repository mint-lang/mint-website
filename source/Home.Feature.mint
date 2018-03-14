component Home.Feature {
  property children : Array(Html) = []
  property image : String = ""
  property title : String = ""

  style wrapper {
    justify-content: center;
    flex-direction: column;
    padding: 65px 20px;
    max-width: 1040px;
    margin: 0 auto;
    display: flex;
  }

  style content-wrapper {
    align-items: center;
    display: flex;
  }

  style content {
    margin-right: 100px;

    & > p:first-child {
      margin-top: 0;
    }
  }

  style base {
    border-top: 1px solid #EEE;
    font-size: 18px;
    color: #333;

    &:nth-child(odd) {
      background: #f7f7f7;
    }

    & p,
    & ul {
      color: #555;
    }

    & li {
      line-height: 2em;
    }

    & p {
      line-height: 1.6em;
    }

    & h3 {
      text-transform: uppercase;
      font-family: Work Sans;
      font-weight: 600;
      font-size: 26px;
      margin-top: 0;
    }
  }

  style image {
    flex: 0 0 250px;
    height: 250px;

    &:last-child {
      margin-left: auto;
    }
  }

  fun render : Html {
    <div::base>
      <div::wrapper>
        <h3>
          <{ title }>
        </h3>

        <div::content-wrapper>
          <div::content>
            <{ children }>
          </div>

          <img::image src={image}/>
        </div>
      </div>
    </div>
  }
}
