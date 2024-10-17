async component MobileMenu {
  connect Stores.MobileMenu exposing { open, hide, items }

  use Provider.Url { changes: (url : Url) { hide() } }

  // Styles for the root element.
  style root {
    background: var(--blur-color-2);
    backdrop-filter: blur(10px);
    transition: opacity 320ms;
    overflow: auto;

    position: fixed;
    z-index: 3;
    bottom: 0;
    right: 0;
    left: 0;
    top: 0;

    if open {
      pointer-events: auto;
      opacity: 1;
    } else {
      pointer-events: none;
      opacity: 0;
    }
  }

  // Styles for an item.
  style item {
    grid-template-columns: auto 1fr;
    align-items: center;
    grid-gap: 10px;
    display: grid;

    box-sizing: border-box;
    padding: 15px 20px;
    width: 100%;

    border: 0;
    border-bottom: 1px solid var(--border-color);

    color: var(--text-color);
    text-decoration: none;
    font-weight: normal;

    font-family: unset;
    background: unset;
    text-align: unset;
    font-size: unset;

    &:hover:not([disabled]) {
      text-decoration: underline;
      cursor: pointer;
    }

    &[disabled] {
      cursor: not-allowed;
      opacity: 0.5;
    }

    svg, div {
      --tabler-stroke-width: 1.25;
      height: 24px;
      width: 24px;
    }
  }

  // Styles for an divider.
  style divider {
    border-bottom: 1px solid var(--border-color);
    height: 1px;
  }

  // Styles for the title menu item.
  style title {
    grid-template-columns: auto 1fr auto;
  }

  fun renderItem (item : MenuItem) {
    case item {
      Divider => <div::divider/>

      Action(action, disabled, label, icon) =>
        <button::item onClick={action} disabled={disabled}>
          icon
          label
        </button>

      Link(icon, label, href, disabled, target) =>
        <a::item href={href} target={target} disabled={disabled}>
          icon
          label
        </a>

      Group(icon, label) =>
        <a::item>
          icon
          label
        </a>
    }
  }

  // Renders a component.
  fun render : Html {
    <div::root>
      <a::item::title>
        TablerIcons.MENU_2
        "Navigation"

        <div onClick={hide}>TablerIcons.X</div>
      </a>

      <div::divider/>

      for item of items {
        case item {
          Divider => renderItem(item)
          Action => renderItem(item)
          Link => renderItem(item)

          Group(icon, label, items) =>
            <>
              for item of items {
                renderItem(item)
              }
            </>
        }
      }
    </div>
  }
}
