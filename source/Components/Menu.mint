component Menu {
  connect Stores.MobileMenu exposing { show }
  connect Application exposing { isMobile }

  // The items to show.
  property items : Array(MenuItem) = []

  // Styles for the root element.
  style root {
    justify-content: center;
    flex-wrap: wrap;
    display: flex;
    gap: 25px;
  }

  // Styles for a navigation item.
  style item {
    text-decoration: none;
    white-space: nowrap;
    color: inherit;

    grid-template-columns: auto 1fr;
    align-items: center;
    grid-gap: 10px;
    display: grid;
    height: 24px;

    font-family: unset;
    font-weight: unset;
    background: unset;
    text-align: unset;
    font-size: unset;
    border: unset;

    &:hover:not([disabled]) {
      text-decoration: underline;
      cursor: pointer;
    }

    &[disabled] {
      cursor: not-allowed;
      opacity: 0.5;
    }

    svg {
      --tabler-stroke-width: 1.25;

      height: 24px;
      width: 24px;
    }
  }

  // Style for a dropdown menu.
  style menu {
    outline: 3px double var(--border-color);
    background: var(--background-color);
    flex-direction: column;
    border-radius: 5px;
    gap: 0.5em;

    padding: 0.75em 0.5em;

    transform: translateX(-50%);
    position: absolute;
    display: none;
    left: 50%;
    top: 35px;

    &:before {
      position: absolute;
      height: 15px;
      content: "";
      top: -15px;
      right: 0;
      left: 0;
    }

    > * {
      padding-right: 1.75em;
    }
  }

  // Styles for the menu wrapper.
  style menu-wrapper {
    position: relative;

    &:hover, &:focus-visible, &:focus-within {
      > div {
        display: flex;
      }
    }
  }

  // Styles for a divider.
  style divider {
    border-left: 3px double var(--border-color);
    margin: 0 -10px;
  }

  // Styles for the mobile button.
  style mobile {
    --tabler-stroke-width: 2;

    flex: 0 0 24px;
    height: 24px;
    width: 24px;
  }

  // Renders a menu-item.
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

  // Renders the component.
  fun render : Html {
    if isMobile {
      <div::mobile onClick={() { show(items) }}>TablerIcons.MENU_2</div>
    } else {
      <div::root>
        for item of items {
          case item {
            Divider => renderItem(item)
            Action => renderItem(item)
            Link => renderItem(item)

            Group(icon, label, items) =>
              <div::menu-wrapper tabindex="0">
                renderItem(item)

                <div::menu>
                  for item of items {
                    renderItem(item)
                  }
                </div>
              </div>
          }
        }
      </div>
    }
  }
}
