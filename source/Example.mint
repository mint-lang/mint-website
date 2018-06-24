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
    margin-top: 10px;
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
      
      <div::link>
        <a href={ src } target="_blank"> <{ "Source" }> </a>
      </div>
      
    </Page>
  }
}
