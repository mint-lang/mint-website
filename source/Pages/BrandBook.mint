component Pages.BrandBook.MeasuredLogo {
  property dark : Bool = false
  property padding : Number
  property height : Number
  property width : Number
  property logo : String

  style root {
    height: #{height + (padding * 2) + 35}px;
    width: #{width + (padding * 2) + 85}px;
    box-sizing: border-box;
    display: grid;
    padding-left: 35px;
    align-items: end;
  }

  style container {
    if dark {
      background: black;
    } else {
      border: 1px solid #DDD;
    }

    padding: #{padding}px;
    height: #{height}px;
    width: #{width}px;

    position: relative;
    font-weight: normal;
    font-size: 12px;

    img {
      height: #{height}px;
      width: #{width}px;

      if dark {
        border: 1px dashed #333;
      } else {
        border: 1px dashed #DDD;
      }
    }
  }

  style height {
    padding-left: 18px;
    position: absolute;
    left: 100%;
    bottom: 0;
    top: 0;

    align-items: center;
    display: grid;

    &::before {
      content: "";

      position: absolute;
      bottom: -1px;
      left: 8px;
      top: -1px;

      border: 1px solid #DDD;
      border-left: 0;
      width: 4px;
    }
  }

  style width {
    padding-bottom: 14px;
    text-align: center;
    position: absolute;
    bottom: 100%;
    right: 0;
    left: 0;

    &::before {
      content: "";

      position: absolute;
      bottom: 8px;
      right: -1px;
      left: -1px;

      border: 1px solid #DDD;
      border-bottom: 0;
      height: 4px;
    }
  }

  style padding {
    padding-right: 8px;

    align-items: center;
    display: grid;

    position: absolute;
    right: 100%;
    bottom: 0;
    top: 0;

    &::before {
      content: "";

      width: calc(#{padding}px - 4px);
      left: calc(100% + 1px);
      top: calc(50% - 1px);
      position: absolute;

      border: 1px solid #DDD;
      border-bottom: 0;
      height: 4px;
    }

    &::after {
      content: "";

      width: calc(#{padding}px - 4px);
      left: calc(100% + 1px);
      top: calc(50% - 4px);
      position: absolute;

      border: 1px solid #DDD;
      border-bottom: 0;
      border-top: 0;
      height: 3px;
    }
  }

  fun render : Html {
    <div::root>
      <div::container>
        <div::height>"#{height + padding * 2}px"</div>
        <div::width>"#{width + padding * 2}px"</div>
        <div::padding>"#{padding}px"</div>
        <img src={logo}/>
      </div>
    </div>
  }
}

async component Pages.BrandBook {
  style root {
    max-width: 80ch;
    margin: 0 auto;
  }

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

  style colors {
    grid-template-columns: repeat(5, 1fr);
    grid-gap: 40px;
    display: grid;
  }

  style color {
    align-content: center;
    grid-gap: 10px;
    display: grid;
  }

  style color-items {
    text-align: center;
    font-size: 14px;

    display: grid;
  }

  style logos {
    grid-template-columns: 1fr 1fr;
    margin-bottom: 60px;
    place-items: center;
    grid-gap: 30px;
    display: grid;
  }

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

  fun render : Html {
    <div::root>
      <Content fontSize={18}>
        <<#MARKDOWN
        # Brand Book

        Here you can find all information (logos, colors and typography) on the
        visual identity of the Mint brand.

        ## Logos

        The logo was always inspired by **mint leaves** as a symbol of of
        **wisdom**, **knowledge**, and **intelligence** also it represents
        **thoughtfulness** and **hospitality**. The vibrant green color of mint
        leaves symbolizes **freshness**, **vitality**, **nature**, and
        **tranquility**.

        The font for the wordmark is Forum, a serif font which gives the logo a
        more formal, classic, and traditional feel.

        The logos doesn't contain any padding so you need to add it as
        you can see it below along with the dimensions.
        MARKDOWN

        <p::logos>
          <Pages.BrandBook.MeasuredLogo
            logo={@asset(../../assets/brand-book/logomark-16.svg)}
            padding={6}
            height={16}
            width={16}/>

          <Pages.BrandBook.MeasuredLogo
            logo={@asset(../../assets/brand-book/logomark-16-dark.svg)}
            padding={6}
            height={16}
            dark={true}
            width={16}/>

          <Pages.BrandBook.MeasuredLogo
            logo={@asset(../../assets/brand-book/logomark.svg)}
            padding={12}
            height={24}
            width={24}/>

          <Pages.BrandBook.MeasuredLogo
            logo={@asset(../../assets/brand-book/logomark-dark.svg)}
            padding={12}
            height={24}
            dark={true}
            width={24}/>

          <Pages.BrandBook.MeasuredLogo
            logo={@asset(../../assets/brand-book/logomark.svg)}
            padding={24}
            height={48}
            width={48}/>

          <Pages.BrandBook.MeasuredLogo
            logo={@asset(../../assets/brand-book/logomark-dark.svg)}
            padding={24}
            height={48}
            dark={true}
            width={48}/>

          <Pages.BrandBook.MeasuredLogo
            logo={@asset(../../assets/brand-book/logo.svg)}
            padding={16}
            height={24}
            width={100}/>

          <Pages.BrandBook.MeasuredLogo
            logo={@asset(../../assets/brand-book/logo-dark.svg)}
            padding={16}
            height={24}
            dark={true}
            width={100}/>

          <Pages.BrandBook.MeasuredLogo
            logo={@asset(../../assets/brand-book/logo.svg)}
            padding={32}
            height={48}
            width={200}/>

          <Pages.BrandBook.MeasuredLogo
            logo={@asset(../../assets/brand-book/logo-dark.svg)}
            padding={32}
            height={48}
            dark={true}
            width={200}/>
        </p>

        <h2>"Colors"</h2>
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

        See below the font families and their useage.

        ### [Forum] &nbsp;for Headings, Title Case, Dark Charcoal

        [Noto Sans] for content, body text, weight 300, Dark Charcoal, **bold**
        and _italic_ for emphasis.

        [Noto Sans]: https://fonts.google.com/noto/specimen/Noto+Sans
        [Forum]: https://fonts.google.com/specimen/Forum
        MARKDOWN
      </Content>
    </div>
  }
}
