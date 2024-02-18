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