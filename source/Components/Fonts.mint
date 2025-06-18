component Fonts {
  fun render : Html {
    <style>
      <<~CSS
      @font-face {
        src: url(#{@asset(/assets/fonts/noto-sans-v36-latin_latin-ext-300.woff2)})
             format('woff2');

        font-family: 'Noto Sans';
        font-display: swap;
        font-style: normal;
        font-weight: 300;
      }

      @font-face {
        src: url(#{@asset(/assets/fonts/noto-sans-v36-latin_latin-ext-regular.woff2)})
             format('woff2');

        font-family: 'Noto Sans';
        font-display: swap;
        font-style: normal;
        font-weight: 400;
      }

      @font-face {
        src: url(#{@asset(/assets/fonts/noto-sans-v36-latin_latin-ext-500.woff2)})
             format('woff2');

        font-family: 'Noto Sans';
        font-display: swap;
        font-style: normal;
        font-weight: 500;
      }

      @font-face {
        src: url(#{@asset(/assets/fonts/forum-v18-latin_latin-ext-regular.woff2)}
             format('woff2');

        font-family: 'Forum';
        font-display: swap;
        font-style: normal;
        font-weight: 400;
      }

      @font-face {
        src: url(#{@asset(/assets/fonts/fira-code-v22-latin_latin-ext-regular.woff2)})
             format('woff2');

        font-family: 'Fira Code';
        font-display: swap;
        font-style: normal;
        font-weight: 400;
      }
      CSS
    </style>
  }
}
