type Coordinate {
  column : Number,
  row : Number
}

type Formula {
  Expression(Expression)
  Text(String)
}

type Expression {
  Application(String, Array(Expression))
  Range(Coordinate, Coordinate)
  Cell(Coordinate)
  Number(Number)
}

type Value {
  Range(Coordinate, Coordinate)
  Number(Number)
  String(String)
  Invalid
  Empty
}
