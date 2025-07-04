type User {
  surname : String,
  name : String
}

component Main {
  state selected : Number = 0
  state surname : String = ""
  state filter : String = ""
  state name : String = ""

  state users : Array(User) =
    [
      { name: "Emil", surname: "Hans" },
      { name: "Mustermann", surname: "Max" },
      { name: "Tisch", surname: "Roman" }
    ]

  style root {
    grid-gap: 10px;
    display: grid;
  }

  style rows {
    grid-gap: 5px;
    display: grid;
  }

  style buttons {
    grid-auto-flow: column;
    grid-gap: 5px;
    display: grid;
  }

  style columns {
    grid-template-columns: 150px 250px;
    grid-gap: 10px;
    display: grid;
  }

  style field {
    grid-template-columns: 80px 1fr;
    align-items: center;
    display: grid;
    height: 30px;
    gap: 10px;

    input {
      min-width: 0;
    }
  }

  style filter {
    display: flex;
    gap: 10px;
  }

  fun setValue (event : Html.Event, setter : Function(a, b)) {
    setter(Dom.getValue(event.target))
  }

  fun render {
    <div::rows>
      <div::filter>
        <label>"Filter prefix:"</label>
        <input value={filter} onInput={setValue(_, -> filter)}/>
      </div>

      <div::columns>
        <select size="3" value="#{selected}">
          {
            let search =
              String.toLowerCase(filter)

            for user, index of users {
              <option value="#{index}">"#{user.name}, #{user.surname}"</option>
            } when {
              user.surname + user.name
              |> String.toLowerCase()
              |> String.contains(search)
            }
          }
        </select>

        <div::rows>
          <div::field>
            <label>"Surname:"</label>
            <input onInput={setValue(_, -> surname)} value={surname}/>
          </div>

          <div::field>
            <label>"Name:"</label>
            <input onInput={setValue(_, -> name)} value={name}/>
          </div>
        </div>

        <div::buttons>
          <button
            onClick={
              () {
                next {
                  users: Array.push(users, { name: name, surname: surname }),
                  // TODO: This needs to change in the runtime: users above
                  //       should not reflect the new value below.
                  selected: Array.size(users) - 1
                }
              }
            }
          >"Create"</button>

          <button
            onClick={
              () {
                next {
                  users:
                    Array.setAt(users, selected, { name: name, surname: surname })
                }
              }
            }
          >"Update"</button>

          <button
            onClick={
              () { next { users: Array.deleteAt(users, selected), selected: 0 } }
            }
          >"Delete"</button>
        </div>
      </div>
    </div>
  }
}
