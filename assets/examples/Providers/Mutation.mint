component Main {
  state logs : Array(String) = []
  state items : Array(String) = []

  use Provider.Mutation {
    element: element,
    changes:
      () {
        dbg "Mutated!"
        next { }
      }
  }

  fun render {
    <div>
      <button onClick={() { next { items: Array.push(items, "Item") } }}>
        "Add Item"
      </button>

      <div as element key="element">
        for item of items {
          <div>item</div>
        }
      </div>
    </div>
  }
}
