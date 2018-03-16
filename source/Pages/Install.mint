component Install {
  connect Versions exposing { loading, latest }

  style hr {
    margin: 30px 0;
    border: 0;
    border-top: 1px solid #EEE;
  }

  get version : Version {
    latest()
  }

  get content : Html {
    if (loading) {
      <div>
        <{ "Loading versions..." }>
      </div>
    } else {
      <ul>
        <{ files }>
      </ul>
    }
  }

  fun renderFile (asset : Asset) : Html {
    <li>
      <Ui.Link
        href={asset.url}
        label={asset.name}/>
    </li>
  }

  get files : Array(Html) {
    if (loading) {
      []
    } else {
      version.assets
      |> Array.map(renderFile)
    }
  }

  fun render : Html {
    <Page>
      <Title>
        <{ "Download" }>
      </Title>

      <SubTitle>
        <{ "You can download the latest binaries here." }>
      </SubTitle>

      <{ content }>

      <hr::hr/>

      <Title>
        <{ "Install" }>
      </Title>

      <SubTitle>
        <{ "Follow the directions below to install Mint." }>
      </SubTitle>

      <ul>
        <li>
          <{ "Download the binary and copy it into: " }>

          <code>
            <{ "/usr/local/bin" }>
          </code>

          <{ " directory" }>
        </li>

        <li>
          <{ "You invoke the CLI in your terminal by just typing " }>

          <code>
            <{ "mint" }>
          </code>
        </li>
      </ul>

      <hr::hr/>

      <Title>
        <{ "Install from Source" }>
      </Title>

      <SubTitle>
        <{ "Follow the directions below to install Mint from source." }>
      </SubTitle>

      <ul>
        <li>
          <{ "Install the crystal programming language" }>
        </li>

        <li>
          <{ "Download and extract the source files from Github:" }>
        </li>

        <li>
          <{
            "In your terminal enter the folder you extracted the sour" \
            "ce code."
          }>
        </li>

        <li>
          <{ "Install dependencies:" }>

          <pre>
            <{ "crystal deps" }>
          </pre>
        </li>

        <li>
          <{ "Build the binary (might need to use sudo):" }>

          <pre>
            <{
              "crystal build src/mint.cr -o /usr/local/bin/mint -p --re" \
              "lease"
            }>
          </pre>
        </li>

        <li>
          <{ "You invoke the CLI in your terminal by just typing " }>

          <code>
            <{ "mint" }>
          </code>
        </li>
      </ul>
    </Page>
  }
}
