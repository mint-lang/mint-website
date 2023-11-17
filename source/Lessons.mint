module Lessons {
  const ITEMS = []

  fun nextLession (lesson : Lesson) : Maybe(Lesson) {
    let index =
      Array.indexOf(ITEMS, lesson) or 1

    Array.at(ITEMS, index + 1)
  }

  fun previousLesson (lesson : Lesson) : Maybe(Lesson) {
    let index =
      Array.indexOf(ITEMS, lesson) or 1

    Array.at(ITEMS, index - 1)
  }
}
