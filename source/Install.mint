component Install {
  style latest {
    font-size: 20px;
  }

  fun render : Html {
    <Page>
      <Title>
        <{ "Install" }>
      </Title>

      <div>
        <p>
          <{ "Mint is just single binary that you can run." }>
        </p>

        <p>
          <{
            "The latest files can be found on the Releases page at Gi" \
            "tHub:"
          }>

          <br/>

          <a href="https://github.com/mint-lang/mint/releases">
            <{ "https://github.com/mint-lang/mint/releases" }>
          </a>
        </p>

        <p>
          <{
            "To make it simpler to use, you can create a symbolic lin" \
            "k available in the path:"
          }>

          <pre>
            <{ "ln -s [full path to the mint binary] /usr/local/bin/mint" }>
          </pre>
        </p>

        <p>
          <{ "Then you can invoke the cli by just typing " }>

          <code>
            <{ "mint" }>
          </code>
        </p>
      </div>
    </Page>
  }
}
