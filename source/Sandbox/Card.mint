// A component to display a card for a sandbox.
component Sandbox.Card {
  // The sandbox.
  property sandbox : Sandbox

  // Styles for the root element.
  style root {
    border: 1px solid var(--border-color);
    background: var(--background-color);
    text-decoration: none;
    border-radius: 5px;
    color: inherit;

    &:hover {
      outline: 2px solid var(--color-mintgreen);
      outline-offset: 2px;
    }
  }

  // Styles for the code-preview.
  style preview {
    background: var(--input-color);
    border-radius: 5px 5px 0 0;
    aspect-ratio: 1.5;
    white-space: pre;
    overflow: hidden;
    padding: 10px;

    font-family: "Fira Code";
    font-size: 12px;
  }

  // Style for the user information.
  style user {
    font-size: 14px;
    padding: 10px;
    display: flex;
    gap: 10px;

    // Avatar
    img {
      border-radius: 3px;
      flex: 0 0 auto;
      height: 20px;
      width: 20px;
    }
  }

  // Styles for the title of the card.
  style title {
    border-top: 1px solid var(--border-color);
    font-weight: bold;
    font-size: 18px;

    padding: 10px;
    padding-bottom: 0;
  }

  // Renders the component.
  fun render : Html {
    <a::root href="/sandbox/#{sandbox.id}" key={sandbox.id}>
      <div::preview>sandbox.content</div>
      <div::title>sandbox.title</div>

      <div::user>
        <img src={sandbox.user.image}/>
        <span>sandbox.user.nickname</span>
      </div>
    </a>
  }
}
