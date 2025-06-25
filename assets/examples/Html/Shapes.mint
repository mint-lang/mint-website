// Scalable Vector Graphics (SVG) can be a nice way to draw things in 2D.
// Here are some common SVG shapes.
component Main {
  fun render {
    <svg viewBox="0 0 400 400" width="400" height="400">
      <circle cx="50" cy="50" r="40" fill="red" stroke="black" strokeWidth="3"/>

      <rect
        stroke-width="2"
        stroke="black"
        fill="green"
        height="40"
        width="40"
        x="100"
        y="10"
      />

      <line
        stroke-linecap="round"
        stroke-width="10"
        stroke="blue"
        y1="200"
        x2="200"
        x1="20"
        y2="20"
      />

      <polyline
        points="200,40 240,40 240,80 280,80 280,120 320,120 320,160"
        stroke-dasharray="20,2"
        stroke-width="4"
        stroke="red"
        fill="none"
      />

      <text
        transform="rotate(-45 130,130)"
        dominant-baseline="central"
        text-anchor="middle"
        fill="black"
        x="130"
        y="130"
      >"Welcome to Shapes Club"</text>
    </svg>
  }
}
