CodeMirror.defineSimpleMode("mint", {
  start: [
    {regex: /\/\*/, token: "comment", next: "comment"},
    {regex: /\/{2}[^\n\r]*/, token: "comment" },
    {regex: /true|false|void/, token: "atom"},
    {regex: /"(?:[^\\]|\\.)*?(?:"|$)/, token: "string"},
    {regex: /0x[a-f\d]+|[-+]?(?:\.\d+|\d+\.?\d*)(?:e[-+]?\d+)?/i, token: "number"},
    {regex: /(?:enum|let|global|component|store|fun|get|connect|exposing|if|for|state|routes|const|module|decode|try|catch|property|record|next|where|case)\b/,
     token: "keyword"},
    {regex: /<\{/, mode: {spec: "mint", end: /\}>/} },
    {regex: /(<\/)(.*)(>)/, token: [null, "namespace", null]},
    {regex: /(<)([^>\s]+)/, token: [null, "namespace"], push: "attributes"},

    {regex: /(style)\s([^}]+)\s\{/, token: ["keyword", "meta","meta"], push: "css"},
    {regex: /[a-z][A-Za-z0-9]+/, token: "meta" },
    {regex: /[A-Z][A-Za-z0-9]+(\.[[A-Za-z0-9]+])*/, token: "type"},
  ],
  css: [
    {regex: /([^:]+)(\:)/, token: ["string"], push: "css_value" },
    {regex: /}/, pop: true },
  ],
  css_value: [
    {regex: /#\{/, mode: {spec: "mint", end: /\}/} },
    {regex: /;/, pop: true },
  ],
  attributes: [
    {regex: /([A-Za-z0-9]+)(=)(\[)/, token: ["attribute", null], mode: {spec: "mint", end: /\]/} },
    {regex: /([A-Za-z0-9]+)(=)(\{)/, token: ["attribute", null], mode: {spec: "mint", end: /\}/} },
    {regex: /([A-Za-z0-9]+)(=)("(?:[^\\]|\\.)*?(?:"|$))/, token: ["attribute", null, "string"] },
    {regex: />/, pop: true },
  ],
  comment: [
    {regex: /.*?\*\//, token: "comment", next: "start"},
    {regex: /.*/, token: "comment"}
  ]
})
