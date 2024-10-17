module Sandbox.MenuItems {
  const LOG_IN_WITH_GITHUB_TO_FORK =
    MenuItem.link(
      label: "Login with GitHub to Fork",
      href: "#{@ENDPOINT}/auth/github",
      icon: TablerIcons.BRAND_GITHUB)

  const LOG_IN_WITH_GITHUB =
    MenuItem.link(
      href: "#{@ENDPOINT}/auth/github",
      icon: TablerIcons.BRAND_GITHUB,
      label: "Login with GitHub")

  const CREATE_SANDBOX =
    MenuItem.action(
      icon: TablerIcons.FILE_PLUS,
      label: "Create Sandbox",
      action: Sandbox.new)

  const MY_SANDBOXES =
    MenuItem.link(
      icon: TablerIcons.FILES,
      label: "My Sandboxes",
      href: "/sandbox/mine")

  const LOGOUT =
    MenuItem.action(
      icon: TablerIcons.LOGOUT,
      action: Sandbox.logout,
      label: "Logout")

  const TUTORIAL =
    MenuItem.link(icon: TablerIcons.CODE, href: "/tutorial/", label: "Tutorial")

  fun sandboxesPage (
    userStatus : UserStatus
  ) : Tuple(Array(MenuItem), Array(MenuItem)) {
    case userStatus {
      LoggedOut =>
        {
          [Sandbox.MenuItems.LOG_IN_WITH_GITHUB],
          [Sandbox.MenuItems.LOG_IN_WITH_GITHUB]
        }

      LoggedIn =>
        {
          [
            Sandbox.MenuItems.CREATE_SANDBOX,
            Sandbox.MenuItems.MY_SANDBOXES,
            MenuItem.Divider,
            Sandbox.MenuItems.LOGOUT
          ],
          [Sandbox.MenuItems.CREATE_SANDBOX]
        }

      Initial => {[], []}
    }
  }
}
