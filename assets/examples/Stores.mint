type Todo {
  label : String,
  done : Bool
}

store Todos {
  state items = [] of Todo

  fun add (todo : Todo) {
    next { items: Array.push(todo, items) }
  }

  fun delete (todo : Todo) {
    next { items: Array.delete(todo, items) }
  }
}

component TodoList {
  connect Todos exposing { add, delete, items }

  fun render : Html {
    <div>
      for item of items {
        "Item rendered here..."
      }
    </div>
  }
}
