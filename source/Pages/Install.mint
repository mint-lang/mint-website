component Install {
  connect Versions exposing { loading, latest }

  style hr {
    margin: 40px 0;

    border: 0;
    border-top: 1px solid #EEE;
  }

  style code {
    border: 1px solid #DDD;
    white-space: pre-wrap;
    font-size: inherit;
    background: #FFF;
    padding: 5px;
  }

  style link {
    text-decoration: none;
    color: #2f9e59;

    &:hover {
      text-decoration: underline;
    }
  }

  style list {
    & li {
      margin-top: 15px;
    }

    @media (max-width: 600px) {
      padding-left: 15px;
      font-size: 14px;
    }
  }

  style files {
    & li {
      margin-top: 10px;
    }
  }

  get version : Version {
    latest()
  }

  get content : Html {
    if (loading) {
      <ul::files>
        <li>
          <{ "Loading linux version..." }>
        </li>

        <li>
          <{ "Loading osx version..." }>
        </li>
      </ul>
    } else {
      <ul::files>
        <{ files }>
      </ul>
    }
  }

  fun renderFile (asset : Asset) : Html {
    <li>
      <a::link href={asset.url}>
        <{ asset.name }>
      </a>
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
        <{ "Install" }>
      </Title>

      <SubTitle>
        <{ "Follow the directions below to install Mint:" }>
      </SubTitle>

      <ol::list>
        <li>
          <{ "Download the binary for your operating system: " }>

          <{ content }>
        </li>

        <li>
          <{ "Move the binary to " }>

          <code::code>
            <{ "/usr/local/bin/mint" }>
          </code>

          <pre::code>
            <{ "sudo mv /path/to/binary /usr/local/bin/mint" }>
          </pre>
        </li>

        <li>
          <{ "You invoke the CLI in your terminal by just typing " }>

          <code::code>
            <{ "mint" }>
          </code>
        </li>
      </ol>

      <hr::hr/>

      <Title>
        <{ "Install from Source" }>
      </Title>

      <SubTitle>
        <{ "Follow the directions below to install Mint from source:" }>
      </SubTitle>

      <ol::list>
        <li>
          <{ "Install the " }>

          <a::link
            href="https://crystal-lang.org/docs/installation/"
            target="_blank">

            <{ "Crystal programming language" }>

          </a>
        </li>

        <li>
          <{ "Download and extract the source files from Github:" }>
          <br/>

          <a::link
            href="https://github.com/mint-lang/mint"
            target="_blank">

            <{ "https://github.com/mint-lang/mint" }>

          </a>
        </li>

        <li>
          <{
            "In your terminal enter the folder you extracted the sour" \
            "ce code:"
          }>

          <pre::code>
            <{ "cd /path/to/source" }>
          </pre>
        </li>

        <li>
          <{ "Install dependencies:" }>

          <pre::code>
            <{ "crystal deps" }>
          </pre>
        </li>

        <li>
          <{ "Build the binary (might need to use sudo):" }>

          <pre::code>
            <{
              "crystal build src/mint.cr -o /usr/local/bin/mint -p --re" \
              "lease --no-debug"
            }>
          </pre>
        </li>

        <li>
          <{ "You invoke the CLI in your terminal by just typing " }>

          <code::code>
            <{ "mint" }>
          </code>
        </li>
      </ol>

      <hr::hr/>

      <Title>
        <{ "Daily Binaries" }>
      </Title>

      <SubTitle>
        <p>
          <{
            "A fresh binary is created everything something changes i" \
            "n the master branch."
          }>
        </p>

        <p>
          <{ "You can download those binaries here:" }>
        </p>

        <ul::files>
          <li>
            <a::link
              href={
                "https://bintray.com/mint-lang/mint/download_file?file_pa" \
                "th=mint-latest-linux"
              }>

              <{ "mint-latest-linux" }>

            </a>
          </li>

          <li>
            <a::link
              href={
                "https://bintray.com/mint-lang/mint/download_file?file_pa" \
                "th=mint-latest-osx"
              }>

              <{ "mint-latest-osx" }>

            </a>
          </li>
        </ul>
      </SubTitle>
    </Page>
  }
}
