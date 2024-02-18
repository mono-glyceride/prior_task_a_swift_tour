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

class NamedShape {
  var numberOfSides: Int = 0
  var name: String
  init(name: String) {
    self.name = name
  }

  func simpleDescription() -> String {
    return "A shape with \(numberOfSides) sides"
  }
}

class Square: NamedShape {
  var sideLength: Double

  init(sideLength: Double, name: String) {
    self.sideLength = sideLength
    super.init(name: name)
    numberOfSides = 4
  }

  func area() -> Double {
    return sideLength * sideLength
  }

  override func simpleDescription() -> String {
    return "A square with sides of length \(sideLength)."
  }
}
let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())