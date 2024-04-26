module ContentInstrumenter {
  // Instruments multiple contents.
  fun instrumentMany (html : Array(Html)) : Array(Html) {
    for item of html {
      instrument(item)
    }
  }

  // Returns the table of contents for a content.
  fun tableOfContents (html : Html) : Array(Tuple(String, String, String)) {
    VNode.reduce(
      html,
      [] of Tuple(String, String, String),
      (
        vnode : VNode,
        memo : Array(Tuple(String, String, String))
      ) {
        let text =
          VNode.getTextContent(vnode)

        case decode VNode.type(vnode) as String {
          Ok("h1") => Array.push(memo, {"h1", text, String.parameterize(text)})
          Ok("h2") => Array.push(memo, {"h2", text, String.parameterize(text)})
          Ok("h3") => Array.push(memo, {"h3", text, String.parameterize(text)})
          => memo
        }
      })
  }

  // Instruments a heading by wrapping it's content to anchor tag.
  fun instrumentHeading (vnode : VNode) : VNode {
    let replaced =
      vnode
      |> VNode.getTextContent()
      |> String.parameterize()

    let anchor =
      <a
        href={"##{replaced}"}
        name={replaced}/>
      |> VNode.ofHtml
      |> VNode.setProp("children", VNode.getProp(vnode, "children"))
      |> VNode.asObject

    `#{anchor}.instrumented = true`

    vnode
    |> VNode.setProp("children", anchor)
  }

  // The link icon for external links.
  const EXTERNAL =
    <span style="position:relative;top:-1px">
      TablerIcons.TablerIcons.EXTERNAL_LINK
    </span>

  // The link icon for internal links.
  const INTERNAL =
    <span>
      TablerIcons.LINK
    </span>

  // Instruments a content (anchors, headings).
  fun instrument (html : Html, skipAnchors : Bool = false) : Html {
    VNode.walk(
      html,
      (vnode : VNode) {
        if `!#{vnode}.instrumented` {
          case decode VNode.type(vnode) as String {
            Ok("h2") =>
              if skipAnchors {
                vnode
              } else {
                instrumentHeading(vnode)
              }

            Ok("h3") =>
              if skipAnchors {
                vnode
              } else {
                instrumentHeading(vnode)
              }

            Ok("a") =>
              {
                let Ok(href) =
                  (decode VNode.getProp(vnode, "href") as String) or return vnode

                if String.startsWith(href, "http://") || String.startsWith(href, "https://") {
                  vnode
                  |> VNode.setProp("target", encode "_blank")
                  |> VNode.prependChild(EXTERNAL)
                } else {
                  VNode.prependChild(vnode, INTERNAL)
                }
              }

            => vnode
          }

          `#{vnode}.instrumented = true`
          vnode
        } else {
          vnode
        }
      })
  }
}
