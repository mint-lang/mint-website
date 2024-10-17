module MenuItem {
  fun link (
    label : String,
    href : String,
    icon : Html,
    disabled : Bool = false,
    target : String = ""
  ) : MenuItem {
    MenuItem.Link(
      disabled: disabled,
      target: target,
      label: label,
      icon: icon,
      href: href)
  }

  fun action (
    action : Function(Promise(Void)),
    label : String,
    icon : Html,
    disabled : Bool = false
  ) : MenuItem {
    MenuItem.Action(disabled: disabled, action: action, label: label, icon: icon)
  }
}
