async component Pages.Install {
  style root {
    grid-template-columns: 1fr 1fr;
    grid-gap: 100px;
    display: grid;
  }

  fun render : Html {
    <div::root>
      <Content>
        <<#MARKDOWN(highlight)
        ## #{TablerIcons.TERMINAL} Installing from asdf
        We recommend installing Mint via [asdf](https://asdf-vm.com/), which
        is super easy:

        - Install asdf
        - Install Mint plugin for asdf: `asdf plugin add mint`
        - List all versions available: `asdf list-all mint`
        - Install the lastest Mint version: `asdf install mint latest`

        ## #{TablerIcons.BRAND_GITHUB} Install from Source

        To install Mint from source you will need to install the
        [Crystal programming language](https://crystal-lang.org/).

        After installing Crystal just follow these commands:

        ```
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
        ## #{TablerIcons.BRAND_DOCKER} Usage with Docker

        You can run mint using a Docker container by using the
        [mint-docker](https://github.com/mint-lang/mint-docker) repository.

        ```
        git clone https://github.com/mint-lang/mint-docker.git --depth 1
        cd mint-docker
        make server
        ```

        ## #{TablerIcons.TERMINAL} Install from Binary

        Since Mint is just a binary, you can download the pre-built binaries
        from the [releases page](https://github.com/mint-lang/mint/releases)
        , make them runnable and put them in the path.
        MARKDOWN
        |> ContentInstrumenter.instrument(true)
      </Content>
    </div>
  }
}
