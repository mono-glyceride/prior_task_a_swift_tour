protocol ExampleProtocol {
  var simpleDescription: String { get }
  var number: Int { get }
  mutating func adjust()
}

class SimpleClass: ExampleProtocol {
  var simpleDescription: String = "A very simple class"
  var anotherProperty: Int = 69105
  var number: Int = 1
  func adjust() {
    simpleDescription += " Now 100% adjusted"
  }
}
var a = SimpleClass()
let aDescription = a.simpleDescription
print(aDescription)
print(a.number)

struct SimpleStructure: ExampleProtocol {
  var simpleDescription: String = "A simple structure"
  var number: Int = 2
  mutating func adjust() {
  simpleDescription += " (adjusted)"
  }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
print(bDescription)
print(b.number)

/*
Experiment
ExperimentProtocolrankにもう一つの要件を追加してみましょう。SimpleClassとSimpleStructureには
どういう変更が必要になるでしょうか
*/

extension Int: ExampleProtocol {
  var simpleDescription: String {
    return "The number \(self)"
  }
  var number: Int {
    return self.number
  }
  mutating func adjust() {
    self += 42
  }
}
print(7.simpleDescription)

// Experiment absoluteValueプロパティをDoubleに追加するextensionを書いてみましょう

protocol AbsoluteProtocol {
  var absoluteValue: String { get }
}

extension Double: AbsoluteProtocol {
  var absoluteValue: String {
    return "絶対値:\(abs(self))"
  }
}
print((-4.25).absoluteValue)
