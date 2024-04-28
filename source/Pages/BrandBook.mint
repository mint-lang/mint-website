async component Pages.BrandBook {
  connect Application exposing { isMobile }

  // Styles for the root element.
  style root {
    max-width: 80ch;
    margin: 0 auto;
  }

  // Styles for the colors container.
  style colors {
    grid-template-columns: repeat(5, 1fr);
    margin-top: 30px;
    grid-gap: 40px;
    display: grid;

    if isMobile {
      grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));
    }
  }

  // Styles for a color.
  style color {
    align-content: center;
    grid-gap: 10px;
    display: grid;
  }

  // Styles for a color circle.
  style color-circle (background : String) {
    background: #{background};
    box-sizing: border-box;
    border-radius: 50%;
    margin: auto;
    height: 80px;
    width: 80px;

    if background == "#FFFFFF" {
      border: 1px solid #CCC;
    }
  }

  // Styles for color items.
  style color-items {
    text-align: center;
    font-size: 14px;
    display: grid;
  }

  // Styles for the logos container.
  style logos {
    grid-template-columns: 1fr 1fr;
    margin-bottom: 60px;
    place-items: center;
    grid-gap: 30px;
    display: grid;

    if isMobile {
      grid-template-columns: 1fr;
    }
  }

  // Styles for the icons container.
  style icons {
    justify-content: start;
    grid-auto-flow: column;
    grid-gap: 20px;
    display: grid;
  }

  // Renders a color.
  fun color (name : String, hsl : String, hex : String) : Html {
    <div::color>
      <div::color-circle(hex)/>

      <div::color-items>
        <strong>
          name
        </strong>

        <span>"HSL: #{hsl}"</span>
        <span>"HEX: #{hex}"</span>
      </div>
    </div>
  }

  // Renders the component.
  fun render : Html {
    <div::root>
      <Content>
        <<#MARKDOWN
        # Brand Book

        Here you can find all information (logos, colors and typography) on the
        visual identity of the Mint brand.

        ## Logos

        The logo was always inspired by **mint leaves** as a symbol of
        **wisdom**, **knowledge**, and **intelligence** also it represents
        **thoughtfulness** and **hospitality**. The vibrant green color of mint
        leaves symbolizes **freshness**, **vitality**, **nature**, and
        **tranquility**.

        The font for the word mark is Forum, a serif font which gives the logo
        a more formal, classic, and traditional feel.

        The logos don't contain any padding so you need to add it as you can
        see it below along with the dimensions.
        MARKDOWN
        |> ContentInstrumenter.instrument

        <p::logos>
          <MeasuredLogo
            logo={@svg(../../assets/brand-book/logomark-16.svg)}
            padding={6}
            height={16}
            width={16}/>

          <MeasuredLogo
            logo={@svg(../../assets/brand-book/logomark-16.svg)}
            padding={6}
            height={16}
            dark={true}
            width={16}/>

          <MeasuredLogo
            logo={@svg(../../assets/brand-book/logomark.svg)}
            padding={12}
            height={24}
            width={24}/>

          <MeasuredLogo
            logo={@svg(../../assets/brand-book/logomark.svg)}
            padding={12}
            height={24}
            dark={true}
            width={24}/>

          <MeasuredLogo
            logo={@svg(../../assets/brand-book/logomark.svg)}
            padding={24}
            height={48}
            width={48}/>

          <MeasuredLogo
            logo={@svg(../../assets/brand-book/logomark.svg)}
            padding={24}
            height={48}
            dark={true}
            width={48}/>

          <MeasuredLogo
            logo={@svg(../../assets/brand-book/logo.svg)}
            padding={16}
            height={24}
            width={100}/>

          <MeasuredLogo
            logo={@svg(../../assets/brand-book/logo.svg)}
            padding={16}
            height={24}
            dark={true}
            width={100}/>

          if !isMobile {
            <>
              <MeasuredLogo
                logo={@svg(../../assets/brand-book/logo.svg)}
                padding={32}
                height={48}
                width={200}/>

              <MeasuredLogo
                logo={@svg(../../assets/brand-book/logo.svg)}
                padding={32}
                height={48}
                dark={true}
                width={200}/>
            </>
          }
        </p>

        <h2>
          <a
            href="#colors"
            name="colors">

            "Colors"

          </a>
        </h2>

        <p>"The first 5 colors are the primary colors the others are the secondary colors."</p>

        <p::colors>
          color("White", "0/0/100", "#FFFFFF")
          color("Dark Charcoal", "0/0/20", "#333333")
          color("Mint Green", "100/130/110", "#36A65D")
          color("Mint Dark Green", "100/130/80", "#277944")
          color("Black", "0/0/0", "#000000")
          color("Dark Orange", "33/100/50", "#FF8C00")
          color("Indian Red", "0/53/58", "#CD5C5C")
          color("Crimson", "348/83/47", "#DC143C")
          color("Dark Magenta", "300/100/27", "#8b008b")
          color("Royal Blue", "225/73/57", "#4169E1")
        </p>

        <<#MARKDOWN
        ## Typography

        See below the font families and their usage.

        ### [Forum] &nbsp;for Headings, Title Case, Dark Charcoal

        [Noto Sans] for content, body text, weight 300, Dark Charcoal, **bold**
        and _italic_ for emphasis.

        [Noto Sans]: https://fonts.google.com/noto/specimen/Noto+Sans
        [Forum]: https://fonts.google.com/specimen/Forum

        ## Iconography

        We use [Tabler Icons] for icons, outline style.

        [Tabler Icons]: https://tabler.io/icons
        MARKDOWN
        |> ContentInstrumenter.instrument

        <p::icons>
          <Icon
            icon={TablerIcons.HOME}
            size={30}/>

          <Icon
            icon={TablerIcons.DOWNLOAD}
            size={30}/>

          <Icon
            icon={TablerIcons.PALETTE}
            size={30}/>

          <Icon
            icon={TablerIcons.CODE}
            size={30}/>
        </p>
      </Content>
    </div>
  }
}
