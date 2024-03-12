module VNode {
  fun asObject (vnode : VNode) : Object {
    `#{vnode}`
  }

  fun deleteProp (vnode : VNode, name : String) : VNode {
    `
    (() => {
      delete #{vnode}.props[#{name}];
      return #{vnode}
    })()
    `
  }

  fun getProp (vnode : VNode, name : String) : Object {
    `#{vnode}.props[#{name}]`
  }

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

  fun ofHtml (html : Html) : VNode {
    `#{html}`
  }

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

  fun setProp (vnode : VNode, name : String, value : Object) : VNode {
    `
    (() => {
      #{vnode}.props[#{name}] = #{value};
      return #{vnode}
    })()
    `
  }

  fun type (vnode : VNode) : Object {
    `#{vnode}.type`
  }

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
              #{vnode}.props.children.forEach((item) => {
                #{walk}(item, #{function})
              })
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
