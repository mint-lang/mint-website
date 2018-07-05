component Example {
  property children : Array(Html) = []
  property subTitle : String = ""
  property title : String = ""
  property src : String = ""

  style frame {
    border: 1px solid #DDD;
    min-height: 500px;
    background: #FFF;
    margin-top: 20px;
  }

  style link {
    text-decoration: none;
    margin-top: 10px;
    display: block;
    color: #2f9e59;

    &:hover {
      text-decoration: underline;
    }
  }

  fun render : Html {
    <Page>
      <Title>
        <{ title }>
      </Title>

      <SubTitle>
        <{ subTitle }>
      </SubTitle>

      <div::frame>
        <{ children }>
      </div>

      <a::link
        href={src}
        target="_blank">

        <{ "Source" }>

      </a>
    </Page>
  }
}
