module ContentInstrumenter {
  fun instrumentMany (html : Array(Html)) : Array(Html) {
    for item of html {
      instrument(item)
    }
  }

  fun instrument (html : Html, skipAnchors : Bool = false) : Html {
    VNode.walk(
      html,
      (vnode : VNode) {
        let external =
          <span style="position:relative;top:-1px">
            TablerIcons.TablerIcons.EXTERNAL_LINK
          </span>

        case decode VNode.type(vnode) as String {
          Ok("h2") =>
            if skipAnchors {
              vnode
            } else {
              let textContent =
                vnode
                |> VNode.getTextContent()
                |> String.toLowerCase()

              let replaced =
                Regexp.replace(/\s+/g, textContent, (match : Regexp.Match) { "_" })

              let anchor =
                <a
                  href={"##{replaced}"}
                  name={replaced}/>
                |> VNode.ofHtml
                |> VNode.setProp("children", VNode.getProp(vnode, "children"))
                |> VNode.setProp("instrument", encode "no")
                |> VNode.asObject

              vnode
              |> VNode.setProp("target", encode "_blank")
              |> VNode.setProp("children", anchor)
            }

          Ok("a") =>
            {
              let Ok(href) =
                decode VNode.getProp(vnode, "href") as String or return vnode

              let instrument =
                (decode VNode.getProp(vnode, "instrument") as String)
                |> Result.withDefault("yes")

              if instrument == "yes" {
                if String.startsWith(href, "http://") || String.startsWith(href, "https://") {
                  vnode
                  |> VNode.setProp("target", encode "_blank")
                  |> VNode.prependChild(external)
                } else {
                  VNode.prependChild(vnode, TablerIcons.LINK)
                }
              } else {
                vnode
              }
              |> VNode.deleteProp("instrument")
            }

          => vnode
        }
      })
  }
}
