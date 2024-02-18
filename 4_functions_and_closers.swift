func greet(person: String, lunch: String) -> String {
  return "Hello \(person), today's special lunch is \(lunch)."
}
print(greet(person: "Bob", lunch: "sandwich"))

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
  var min = scores[0]
  var max = scores[0]
  var sum = 0

  for score in scores {
    if score > max {
      max = score
    } else if score < min {
      min = score
    }
    sum += score
  }
  return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

func returnFifteen() -> Int {
  var y = 10
  func add() {
    y += 5
  }
  add()
  return y
}
returnFifteen()

// 関数はオブジェクトなので、値として他の関数を戻り値にできる

func makeIncrementer() -> ((Int) -> Int) {
  func addOne(number: Int) -> Int {
    return 1 + number
  }
  return addOne
}
var increment = makeIncrementer()
print(increment)
print(increment(7))

func hasAnyMatches(list: [Int], condition: (Int) -> Bool)-> Bool {
  for item in list {
    if condition(item) {
      return true
    }
  }
  return false
}
func lessThanTen(number: Int) -> Bool {
  return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))

// クロージャ　あとで実行される可能性があるコードブロック
numbers.map({ (number: Int) -> Int in
  let result = 3 * number
  return result
})