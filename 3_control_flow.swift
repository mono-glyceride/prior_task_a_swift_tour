let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
  if score > 50 {
    teamScore += 3
  } else {
    teamScore += 1
  }
}
print(teamScore)

let scoreDecoration = if teamScore > 10 {
  "🎉"
} else {
  ""
}
print("Score:", teamScore, scoreDecoration)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
  greeting = "Hello, \(name)"
} else {
  greeting = "Hello, guest user"
}
print(greeting)

// Experiment optionalNameをnilに変えてみましょう。どんな挨拶が出力されるでしょうか？　optionalNameがnilの場合に別の挨拶が出力されるようにelseを追加してみましょう。

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informationGreeting = "Hi \(nickname ?? fullName)"
if let nickname {
  print("Hey, \(nickname)")
}

let vegetables = "red pepper"
switch vegetables {
  case "celery":
  print("Add some rasins and make ants on a log.")
  case "cucumber", "watercress":
  print("That would make a good tea sandwich.")
  case let x where x.hasSuffix("pepper"):
  print("Is it a spicy \(x)?")
  default:
  print("Every tastes good in soup.")
}

let interestingNumbers = [
  "Prime": [2, 3, 5, 6, 11, 13],
  "Fibonacci": [1, 1, 2, 3, 5, 8],
  "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var kindOfLargest = "Prime"
for (kindOfNumber, numbers) in interestingNumbers {
  for number in numbers {
    if number > largest {
      largest = number
      kindOfLargest = kindOfNumber
    }
  }
}

print(kindOfLargest, largest)

var n = 2
while n < 0 {
  n *= 2
}
print(n)

var m = 2
repeat {
  m *= 2
} while m < 0
print(m)

var total = 0
for i in 0..<4 {
  total += i
}
print(total)