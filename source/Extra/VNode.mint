module VNode {
  // Returns the VNode as an Object.
  fun asObject (vnode : VNode) : Object {
    `#{vnode}`
  }

  // Deletes a property from a VNode.
  fun deleteProp (vnode : VNode, name : String) : VNode {
    `
    (() => {
      delete #{vnode}.props[#{name}];
      return #{vnode}
    })()
    `
  }

  // Returns a property from a VNode.
  fun getProp (vnode : VNode, name : String) : Object {
    `#{vnode}.props[#{name}]`
  }

  // Returns the text of a VNode (recursively).
  fun getTextContent (vnode : VNode) : String {
    `
    (() => {
      let content = "";

      if (typeof #{vnode} == "string") {
        content += #{vnode}
      } else if (Array.isArray(#{vnode})) {
        #{vnode}.forEach((child) => {
          content += #{getTextContent}(child)
        })
      } else {
        let children =
          #{vnode}.props.children;

        if (children) {
          if (typeof children == "string") {
            content += children
          } else {
            content += #{getTextContent}(children)
          }
        }
      }

      return content;
    })()
    `
  }

  // Returns a VNode from an Html.
  fun ofHtml (html : Html) : VNode {
    `#{html}`
  }

  // Prepends another VNode before the children of the VNode.
  fun prependChild (vnode : VNode, child : Html) : VNode {
    `
    (() => {
      if (#{vnode}.props.children) {
        #{vnode}.props.children.unshift(#{child});
      };
      return #{vnode}
    })()
    `
  }

  // Walks the VNode tree and reducing it.
  fun reduce (
    vnode : Html,
    memo : a,
    function : Function(VNode, a, a)
  ) : a {
    `
    (() => {
      let memo = #{memo};

      #{walk}(#{vnode}, (vnode) => {
        memo = #{function}(vnode, memo)
      })

      return memo
    })()
    `
  }

  // Sets a property of a VNode.
  fun setProp (vnode : VNode, name : String, value : Object) : VNode {
    `
    (() => {
      #{vnode}.props[#{name}] = #{value};
      return #{vnode}
    })()
    `
  }

  // Returns the type of the VNode as an Object.
  fun type (vnode : VNode) : Object {
    `#{vnode}.type`
  }

  // Walks the VNode recursively and calls the given function for each VNode.
  fun walk (vnode : Html, function : Function(VNode, a)) : Html {
    `
    (() => {
      if (Array.isArray(#{vnode})) {
        #{vnode}.forEach((item) => #{walk}(item, #{function}))
      } else {
        if (typeof #{vnode} !== "string") {
          #{function}(#{vnode})

          if (#{vnode}.props.children) {
            if (Array.isArray(#{vnode}.props.children)) {
              #{vnode}.props
                .children
                .forEach((item) => #{walk}(item, #{function}))
            } else {
              #{walk}(#{vnode}.props.children, #{function})
            }
          }
        }
      }
    })()
    `

    vnode
  }
}
