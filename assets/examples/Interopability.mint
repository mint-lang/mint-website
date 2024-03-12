module MyFunctions {
  fun alert(message : String) : Promise(Void) {
    `
    (new Promise((resolve) => {
      alert(#{message})
      resolve()
    })()
    `
  }

  fun decode : Maybe(TodoItem) {
    let object =
      `{ label: "Check out Mint!", done: false }`

    Result.toMaybe(decode object as TodoItem)
  }
}
