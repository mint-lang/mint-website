component Sandbox.Recent {
  property projects : Array(Sandbox.Project) = []

  // Styles for the root element.
  style root {
    grid-template-columns: repeat(auto-fill, minmax(20em, 1fr));
    grid-gap: 2em;
    display: grid;

    margin-top: 1.5em;
  }

  style card {
    border: 1px solid var(--border-color);
    text-decoration: none;
    border-radius: 5px;
    color: inherit;
    padding: 5px;
  }

  style screenshot {
    object-position: top left;
    object-fit: cover;

    margin-bottom: 5px;
    border-radius: 3px;
    aspect-ratio: 2;
    display: block;
    width: 100%;
  }

  style user {
    font-size: 14px;
    padding: 10px;
    display: flex;
    gap: 10px;

    img {
      flex: 0 0 auto;
      height: 20px;
      width: 20px;
    }
  }

  style title {
    border-top: 1px solid var(--border-color);
    font-weight: bold;
    font-size: 18px;

    padding: 10px;
    padding-bottom: 0;
  }

  fun render : Html {
    <div::root>
      for project of projects {
        <a::card
          href="/sandbox/#{project.id}"
          key={project.id}>

          <img::screenshot src="#{@ENDPOINT}/sandbox/#{project.id}/screenshot"/>

          <div::title>
            project.title
          </div>

          <div::user>
            <img src={project.user.image}/>

            <span>
              project.user.nickname
            </span>
          </div>

        </a>
      }
    </div>
  }
}

component Sandbox.Index {
  connect Sandbox exposing { page }

  fun render : Html {
    case page {
      Recent(projects) => <Sandbox.Recent projects={projects}/>
      Error => <>"Error"</>
      Initial => <></>
    }
  }
}
