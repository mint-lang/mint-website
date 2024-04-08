module ContentInstrumenter {
  fun instrumentMany (html : Array(Html)) : Array(Html) {
    for item of html {
      instrument(item)
    }
  }

  fun tableOfContents (html : Html) {
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
          Ok("h1") => Array.push(memo, #("h1", text, String.parameterize(text)))
          Ok("h2") => Array.push(memo, #("h2", text, String.parameterize(text)))
          Ok("h3") => Array.push(memo, #("h3", text, String.parameterize(text)))
          => memo
        }
      })
  }

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
    |> VNode.setProp("target", encode "_blank")
    |> VNode.setProp("children", anchor)
  }

  fun instrument (html : Html, skipAnchors : Bool = false) : Html {
    VNode.walk(
      html,
      (vnode : VNode) {
        if `!#{vnode}.instrumented` {
          let external =
            <span style="position:relative;top:-1px">
              TablerIcons.TablerIcons.EXTERNAL_LINK
            </span>

          let internal =
            <span>
              TablerIcons.LINK
            </span>

          case decode VNode.type(vnode) as String {
            Ok("h2") =>
              {
                if skipAnchors {
                  vnode
                } else {
                  instrumentHeading(vnode)
                }
              }

            Ok("h3") =>
              {
                if skipAnchors {
                  vnode
                } else {
                  instrumentHeading(vnode)
                }
              }

            Ok("a") =>
              {
                let Ok(href) =
                  decode VNode.getProp(vnode, "href") as String or return vnode

                if String.startsWith(href, "http://") || String.startsWith(href, "https://") {
                  vnode
                  |> VNode.setProp("target", encode "_blank")
                  |> VNode.prependChild(external)
                } else {
                  VNode.prependChild(vnode, internal)
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
