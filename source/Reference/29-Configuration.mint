module References {
  const CONFIGURATION =
    {
      let table =
        <table>
          <thead>
            <tr>
              <th>"Path"</th>
              <th>"Purpose"</th>
            </tr>
          </thead>

          <tbody>
            <tr>
              <td><code>"name"</code></td>
              <td>"The name of your application or package."</td>
            </tr>

            <tr>
              <td><code>"source-directories"</code></td>

              <td>
                "The directories which contains source files of your application."
              </td>
            </tr>

            <tr>
              <td><code>"test-directories"</code></td>
              <td>"The directories which contains tests for your application."</td>
            </tr>

            <tr>
              <td><code>"dependencies"</code></td>
              <td>"Contains the dependencies."</td>
            </tr>

            <tr>
              <td><code>"application"</code></td>

              <td>
                "Contains application specific information (can be omitted in packages)"
              </td>
            </tr>

            <tr>
              <td><code>"application.head"</code></td>

              <td>
                "A path to an HTML file which can contain links to external resources."
              </td>
            </tr>

            <tr>
              <td><code>"application.title"</code></td>
              <td>"The initial title of the application."</td>
            </tr>

            <tr>
              <td><code>"application.meta"</code></td>

              <td>
                "An object which contains information which is converted to META tags."
              </td>
            </tr>

            <tr>
              <td><code>"application.icon"</code></td>

              <td>
                "A path to an image file which is converted to different icons like "
                <a href="https://en.wikipedia.org/wiki/Favicon">"favicons"</a>
                "."
              </td>
            </tr>

            <tr>
              <td><code>"application.css-prefix"</code></td>

              <td>
                "A prefix to add to all generated CSS classes. I can be used to avoid
                conflicts with third party CSS."
              </td>
            </tr>

            <tr>
              <td><code>"application.orientation"</code></td>

              <td>
                "[PWA] The orientation of the application, either "
                <code>"portrait"</code>
                " or "
                <code>"landscape"</code>
              </td>
            </tr>

            <tr>
              <td><code>"application.name"</code></td>
              <td>"[PWA] The name of the application."</td>
            </tr>

            <tr>
              <td><code>"application.theme-color"</code></td>
              <td>"[PWA] The theme color of the application."</td>
            </tr>

            <tr>
              <td><code>"application.display"</code></td>

              <td>
                "[PWA] The display property of the application, one of: "
                <code>"fullscreen"</code>
                " "
                <code>"standalone"</code>
                " "
                <code>"minimal-ui"</code>
                " "
                <code>"browser"</code>
              </td>
            </tr>

            <tr>
              <td><code>"formatter.indent-size"</code></td>
              <td>"Specifies how many spaces is used to indent code blocks."</td>
            </tr>
          </tbody>
        </table>

      <<#MARKDOWN(highlight)
      # Configuration

      Your application / package is configured with the `mint.json` file (which
      is a [JSON] file). It defines the root of the application / project.

      [JSON]: "https://en.wikipedia.org/wiki/JSON"

      An example `mint.json` file of looks like this:

      ```json
      {
        "name": "my-app",
        "source-directories": [
          "source"
        ],
        "dependencies": {
          "mint-codemirror": {
            "repository": "https://github.com/mint-lang/mint-codemirror",
            "constraint": "5.0.0 <= v < 6.0.0"
          }
        }
      }
      ```

      > All the fields are validated so if something is not right you will get
      a nice error message!

      Here are all the possible fields (dot notation denotes a nested object):

      #{table}

      ## Dependencies

      The dependencies array contains all the packages that your application
      needs.

      Each is an object that has a:

      * `repository` field pointing to Git repository which uniquely
        identifies
      * `constraint` field that is the version information in one of
        two formats:

        * `0.0.0 <= v < 1.0.0` where the `v` is the resolvable version
        * `master:1.0.0` where the first part is the Git reference (of a
          branch, commit hash or tag) followed by a colon and the version the
        package should resolve as this is necessary because the version is
        only specified by tags.

      MARKDOWN
    }
}
