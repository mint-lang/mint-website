module VNode {
  fun asObject (vnode : VNode) : Object {
    `#{vnode}`
  }

  fun type (vnode : VNode) : Object {
    `#{vnode}.type`
  }

  fun getTextContent (vnode : VNode) : String {
    `
    (() => {
      let content = "";
      if (#{vnode}.props.children) {
        #{vnode}.props.children.forEach((child) => {
          if (typeof child == "string") {
            content += child
          } else {
            content += #{getTextContent}(child)
          }
        })
      }
      return content;
    })()
    `
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

  fun setProp (vnode : VNode, name : String, value : Object) : VNode {
    `
    (() => {
      #{vnode}.props[#{name}] = #{value};
      return #{vnode}
    })()
    `
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

  fun ofHtml (html : Html) : VNode {
    `#{html}`
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
