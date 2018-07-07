/* A module for rendering icons. */
module Icons {
  /* A navigation icon. */
  fun navigation : Html {
    <svg
      width="24"
      height="24"
      xmlns="http://www.w3.org/2000/svg"
      fill-rule="evenodd"
      clip-rule="evenodd">

      <path
        d="M24 18v1h-24v-1h24zm0-6v1h-24v-1h24zm0-6v1h-24v-1h24z"
        fill="#1040e2"/>

      <path d="M24 19h-24v-1h24v1zm0-6h-24v-1h24v1zm0-6h-24v-1h24v1z"/>

    </svg>
  }

  /* A star icon. */
  fun star : Html {
    <svg
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 24 24"
      height="24"
      width="24">

      <path
        d={
          "M12 .288l2.833 8.718h9.167l-7.417 5.389 2.833 8.718-7.41" \
          "6-5.388-7.417 5.388 2.833-8.718-7.416-5.389h9.167z"
        }/>

    </svg>
  }

  /* A checkmark icon. */
  fun checkmark : Html {
    <svg
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 24 24"
      height="24"
      width="24">

      <path
        d={
          "M20.285 2l-11.285 11.567-5.286-5.011-3.714 3.716 9 8.728" \
          " 15-15.285z"
        }/>

    </svg>
  }

  /* A diamond icon. */
  fun diamond : Html {
    <svg
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 24 24"
      fillRule="evenodd"
      clipRule="evenodd"
      height="24"
      width="24">

      <path
        d={
          "M12 0l-12 12.001 12 11.999 12.001-11.999-12.001-12.001zm" \
          "-9.171 12.001l9.171-9.172 9.172 9.172-9.172 9.172-9.171-" \
          "9.172z"
        }/>

    </svg>
  }
}
