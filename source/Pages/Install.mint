async component Pages.Install {
  connect Application exposing { isMobile }

  style root {
    grid-template-columns: 1fr 1fr;
    grid-gap: 100px;
    display: grid;

    if isMobile {
      grid-template-columns: 1fr;
      grid-gap: 1em;
    }
  }

  fun render : Html {
    <div::root>
      <Content>
        <<#MARKDOWN(highlight)
        ## Installing from asdf
        We recommend installing Mint via [asdf](https://asdf-vm.com/), which
        is super easy:

        ```bash
        asdf plugin add mint
        asdf list-all mint
        asdf install mint latest
        ```

        ## Install from Source

        To install Mint from source, you will need to install the
        [Crystal programming language](https://crystal-lang.org/).

        After installing Crystal just follow these commands:

        ```bash
        git clone https://github.com/mint-lang/mint.git
        cd mint
        shards install
        make
        sudo mv ./bin/mint /usr/local/bin/mint
        ```
        MARKDOWN
        |> ContentInstrumenter.instrument(true)
      </Content>

      <Content>
        <<#MARKDOWN(highlight)
        ##  Usage with Docker

        You can run mint using a Docker container by using the
        [mint-docker](https://github.com/mint-lang/mint-docker) repository.

        ```bash
        git clone https://github.com/mint-lang/mint-docker.git --depth 1
        cd mint-docker
        make server
        ```

        ##  Install from Binary

        Since Mint is just a binary, you can download the pre-built binaries
        from the [releases page](https://github.com/mint-lang/mint/releases)
        , make them runnable and put them in the path.
        MARKDOWN
        |> ContentInstrumenter.instrument(true)
      </Content>
    </div>
  }
}
