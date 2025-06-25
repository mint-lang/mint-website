// Input a user name and password. Make sure the password matches.
component Main {
  state confirmation = ""
  state password = ""
  state name = ""

  fun handleChange (event : Html.Event, callback : Function(String, a)) {
    event.target
    |> Dom.getValue()
    |> callback
  }

  fun render {
    <div>
      <input
        onInput={handleChange(_, -> name)}
        placeholder="Name"
        value={name}
        type="text"
      />

      <input
        onInput={handleChange(_, -> password)}
        placeholder="Password"
        value={password}
        type="password"
      />

      <input
        onInput={handleChange(_, -> confirmation)}
        placeholder="Confirmation"
        value={confirmation}
        type="password"
      />

      if password == confirmation {
        <div style="color: green;">"OK"</div>
      } else {
        <div style="color: red;">"Passwords do not match!"</div>
      }
    </div>
  }
}
