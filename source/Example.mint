component Example {
  property children : Array(Html) = []
  property subTitle : String = ""
  property title : String = ""

  style frame {
    border: 1px solid #DDD;
    min-height: 500px;
    background: #FFF;
    margin-top: 20px;
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
    </Page>
  }
}
