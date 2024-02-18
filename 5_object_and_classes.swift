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

/*
Experiment
radius  と　nameをイニシャライザの引数にとるCircleという名前のNameShapeの別のサブクラスを作ってみましょう、そして、Circleクラスにarea()、
simpleDescription()メソッドを実装してみましょう
*/

class Circle: NamedShape {
  var radius: Double

  init(radius: Double, name: String) {
    self.radius = radius
    super.init(name: name)
    numberOfSides = 0
  }

  func area() -> Double {
    return radius * radius * 3.14
  }

  override func simpleDescription() -> String {
    return "A circle with radius of length \(radius)"
  }
}
let testCircle = Circle(radius: 5, name: "my test circle")
print(testCircle.area())
print(testCircle.simpleDescription())

class EquilateralTriangle: NamedShape {
  var sideLength: Double = 0.0

  init(sideLength: Double, name: String) {
    self.sideLength = sideLength
    super.init(name: name)
    numberOfSides = 3
  }

  var perimeter: Double {
    get {
      return 3.0 * sideLength
    }
    set {
      sideLength = newValue / 3.0
    }
  }

  override func simpleDescription() -> String {
    return "An equilateral triangle with sides of length \(sideLength)"
  }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)