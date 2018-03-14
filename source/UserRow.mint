component UserRow {
  connect Users.List exposing { updateUserStatus }

  property user : User = {
    createdAt = Time.now(),
    updatedAt = Time.now(),
    firstName = "",
    lastName = "",
    status = "",
    id = 0
  }

  style tr {
    & a {
      text-decoration: {textDecoration};
    }

    &:nth-child(odd) {
      background: #f9f9f9;
    }
  }

  style checkbox {
    text-align: center;
  }

  get textDecoration : String {
    case (user.status) {
      "locked" => "line-through"
      => ""
    }
  }

  fun onChange (isLocked : Bool) : Void {
    updateUserStatus(user, isLocked)
  }

  fun render : Html {
    <tr::tr>
      <Ui.Table.Td>
        <Ui.Link href={"/users/" + Number.toString(user.id)}>
          <{ Number.toString(user.id) }>
        </Ui.Link>
      </Ui.Table.Td>

      <Ui.Table.Td>
        <Ui.Link href={"/users/" + Number.toString(user.id)}>
          <{ user.firstName + " " + user.lastName }>
        </Ui.Link>
      </Ui.Table.Td>

      <Ui.Table.Td>
        <{ String.capitalize(user.status) }>
      </Ui.Table.Td>

      <Ui.Table.Td>
        <Ui.Time date={user.updatedAt}/>
      </Ui.Table.Td>

      <Ui.Table.Td align="center">
        <Ui.Checkbox
          checked={user.status == "locked"}
          onChange={onChange}/>
      </Ui.Table.Td>
    </tr>
  }
}
