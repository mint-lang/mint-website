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

  style hint {
    border-left: 4px solid #00ccff;
    align-items: center;
    margin-top: 30px;
    background: #FFF;
    padding: 20px;
    display: flex;

    & > a {
      margin: 0 5px;
    }
  }

  style hint-icon {
    margin-right: 15px;
    flex: 0 0 24px;
    fill: #00ccff;
    height: 24px;
    width: 24px;

    @media (max-width: 600px) {
      align-self: flex-start;
    }
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
      latest.assets
      |> Array.map(renderFile)
    }
  }

  fun render : Html {
    <Page>
      <Title>
        <{ "Install Binaries" }>
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

      <div::hint>
        <svg::hint-icon
          xmlns="http://www.w3.org/2000/svg"
          preserveAspectRatio="xMidYMid meet"
          viewBox="0 0 24 24">

          <g>
            <path
              d={
                "M12.2 8.98c.06-.01.12-.03.18-.06.06-.02.12-.05.18-.09l.1" \
                "5-.12c.18-.19.29-.45.29-.71 0-.06-.01-.13-.02-.19a.603.6" \
                "03 0 0 0-.06-.19.757.757 0 0 0-.09-.18c-.03-.05-.08-.1-." \
                "12-.15-.28-.27-.72-.37-1.09-.21-.13.05-.23.12-.33.21-.04" \
                ".05-.09.1-.12.15-.04.06-.07.12-.09.18-.03.06-.05.12-.06." \
                "19-.01.06-.02.13-.02.19 0 .26.11.52.29.71.1.09.2.16.33.2" \
                "1.12.05.25.08.38.08.06 0 .13-.01.2-.02M13 16v-4a1 1 0 1 " \
                "0-2 0v4a1 1 0 1 0 2 0M12 3c-4.962 0-9 4.038-9 9 0 4.963 " \
                "4.038 9 9 9 4.963 0 9-4.037 9-9 0-4.962-4.037-9-9-9m0 20" \
                "C5.935 23 1 18.065 1 12S5.935 1 12 1c6.066 0 11 4.935 11" \
                " 11s-4.934 11-11 11"
              }
              fill-rule="evenodd"/>
          </g>

        </svg>

        <{
          "The Mac OSX the binary needs some dependencies, until th" \
          "ere is a package you need to"
        }>

        <a::link
          href={
            "https://crystal-lang.org/docs/installation/on_mac_osx_us" \
            "ing_homebrew.html"
          }>

          <{ "install Crystal" }>

        </a>

        <{ "to satisfy them." }>
      </div>

      <hr::hr/>

      <Title>
        <{ "Install with Nix" }>
      </Title>

      <SubTitle>
        <{ "You can install Mint using the " }>

        <a::link href="https://nixos.org/nix/">
          <{ "Nix Package Manager" }>
        </a>

        <{ " with these steps: " }>
      </SubTitle>

      <ol::list>
        <li>
          <{ "Install Nix if not installed using " }>

          <a::link href="https://nixos.org/nix/download.html">
            <{ "these instructions." }>
          </a>
        </li>

        <li>
          <{ "Run this command: " }>

          <pre::code>
            <{ "nix-env -f channel:nixpkgs-unstable -iA mint" }>
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
            <{ "shards install" }>
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
