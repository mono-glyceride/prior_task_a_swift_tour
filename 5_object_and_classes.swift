class Shape {
  var numberOfSides = 0
  let width = 10
  func simpleDescription() -> String {
    return "A shape with \(numberOfSides) sides."
  }
  func isWidthLonger(length: Int) -> Bool {
    return length < width
  }
}

//Experiment letを使用して定数プロパティを追加してください。また。引数を受け取る別のメソッドも追加してみましょう。

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)