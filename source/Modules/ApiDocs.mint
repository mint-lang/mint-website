module ApiDocs {
  fun kindToBadge (kind : Number) {
    case kind {
      // TypeField
      0 => {"F", "var(--color-royalblue)"}

      // Component
      1 => {"C", "var(--color-mintgreen)"}

      // Provider
      2 => {"P", "var(--color-darkmagenta)"}

      // Property
      3 => {"P", "var(--color-darkorange)"}

      // Function
      4 => {"F", "var(--color-mintgreen)"}

      // Constant
      5 => {"C", "var(--text-color)"}

      // Module
      6 => {"M", "var(--color-darkorange)"}

      // Signal
      7 => {"S", "var(--color-indianred)"}

      // Store
      8 => {"S", "var(--color-crimson)"}

      // State
      9 => {"S", "var(--color-indianred)"}

      // Type
      10 => {"T", "var(--color-royalblue)"}

      // Get
      11 => {"G", "var(--color-royalblue)"}

      => {"U", "gray"}
    }
  }

  fun kindToKeyword (kind : Number) {
    case kind {
      0 => ""
      1 => "component "
      2 => "provider "
      3 => "property "
      4 => "fun "
      5 => "const "
      6 => "module "
      7 => "signal "
      8 => "store "
      9 => "state "
      10 => "type "
      11 => "get "
      => "#{kind}"
    }
  }

  fun kindToWord (kind : Number) {
    case kind {
      0 => ""
      1 => "Component"
      2 => "Provider"
      3 => "Property"
      4 => "Function"
      5 => "Constant"
      6 => "Module"
      7 => "Signal"
      8 => "Store"
      9 => "State"
      10 => "Type"
      11 => "Computed Property"
      => "#{kind}"
    }
  }
}
