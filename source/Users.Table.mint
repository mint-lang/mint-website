component Users.Table {
  connect Users.List exposing { loading, users, page, perPage, error }
  connect Ui exposing { theme }

  style table {
    border: 1px solid {theme.border.color};
    color: {theme.colors.input.text};
    font-family: {theme.fontFamily};
    border-collapse: collapse;
    margin-bottom: 20px;
    table-layout: fixed;
    width: 100%;
  }

  style left {
    text-align: left;
  }

  style header {
    justify-content: space-between;
    margin-bottom: 20px;
    align-items: center;
    display: flex;
  }

  style title {
    font-weight: bold;
    font-size: 24px;
  }

  style empty {
    justify-content: center;
    align-items: center;
    min-height: 550px;
    display: flex;
  }

  fun setPage (a : Number) : Void {
    Navigation.navigate("/users?page=" + Number.toString(a))
  }

  fun renderItem (item : User) : Html {
    <UserRow
      key={Number.toString(item.id)}
      user={item}/>
  }

  fun render : Html {
    <Ui.Loader shown={loading}>
      <div>
        <div::header>
          <div::title>
            <{ "Users" }>
          </div>
        </div>

        <table::table>
          <thead>
            <tr>
              <Ui.Table.Th width="40px">
                <{ "Id" }>
              </Ui.Table.Th>

              <Ui.Table.Th>
                <{ "Name" }>
              </Ui.Table.Th>

              <Ui.Table.Th>
                <{ "Status" }>
              </Ui.Table.Th>

              <Ui.Table.Th>
                <{ "Last Updated" }>
              </Ui.Table.Th>

              <Ui.Table.Th
                align="center"
                width="70px">

                <{ "Active" }>

              </Ui.Table.Th>
            </tr>
          </thead>

          <tbody>
            <{ rows }>
          </tbody>
        </table>

        <Ui.Pagination
          onChange={setPage}
          page={page}
          total={Array.size(users)}/>
      </div>
    </Ui.Loader>
  } where {
    slicedUsers =
      users
      |> Array.slice(page * perPage, (page + 1) * perPage)

    rows =
      if (Array.isEmpty(slicedUsers)) {
        [
          <tr>
            <td colspan="5">
              <div::empty>
                <{ "There are no users to display!" }>
              </div>
            </td>
          </tr>
        ]
      } else {
        Array.map(renderItem, slicedUsers)
      }
  }
}
