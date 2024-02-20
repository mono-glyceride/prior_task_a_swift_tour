protocol ExampleProtocol {
  var simpleDescription: String { get }
  mutating func adjust()
}

class SimpleClass: ExampleProtocol {
  var simpleDescription: String = "A very simple class"
  var anotherProperty: Int = 69105
  func adjust() {
    simpleDescription += " Now 100% adjusted"
  }
}
var a = SimpleClass()
let aDescription = a.simpleDescription
print(aDescription)