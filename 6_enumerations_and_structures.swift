enum Rank: Int, CaseIterable {
  case ace = 1
  case two, three, four, five, six, seven, eight, nine, ten
  case jack, queen, king

  func simpleDescription() -> String {
    switch self {
      case .ace:
      return "ace"
      case .jack:
      return "jack"
      case .queen:
      return "queen"
      case .king:
      return "king"
      default:
      return String(self.rawValue)
    }
  }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue

//Experiment ２つのRankのraw valueを比較してRankを比較するメソッドを追加してみましょう。
let firstRank = Rank.two
let secondRank = Rank.nine
print(firstRank.rawValue < secondRank.rawValue)

if let convertedRank = Rank(rawValue: 3) {
  let threeDescription = convertedRank.simpleDescription()
}

enum Suit: CaseIterable {
  case spades, hearts, diamonds, clubs

  func simpleDescription() -> String {
    switch self {
      case .spades:
      return "spades"
      case .hearts:
      return "hearts"
      case .diamonds:
      return "diamonds"
      case .clubs:
      return "clubs"
    }
  }

  func color() -> String {
    switch self {
      case .spades:
      return "black"
      case .clubs:
      return "black"
      default:
      return "red"
    }
  }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
print(hearts)
print(heartsDescription)

/*
Experiment
color() メソッドをSuitに追加してみましょう。spadesとclubsは"blank"を返し、
heartsとdiamondsは"red"を返します。
*/
print(hearts.color())

enum ServeResponse {
  case result(String, String)
  case failure(String)
}

let success = ServeResponse.result("6:00a am", "8:09 pm")
let failure = ServeResponse.failure("Out of cheese.")

switch success {
  case let .result(sunrise, sunset):
  print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
  case let .failure(message):
  print("Failure... \(message)")
}

//Experiment ServeResponseに3つ目のケースを追加して、switch文を変更してください。

struct Card {
  var rank: Rank
  var suit: Suit
  func simpleDescription() -> String {
    return "The \(rank.simpleDescription()) of \(suit.simpleDescription()))"
  }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print(threeOfSpades)

// Experiment 全種（ランクとスートの全組み合わせ）のカードからなる配列を返すメソッドを書いてみよう
func deck() -> [Card]{
  var cards: [Card] = []
  for rank in Rank.allCases{
    for suit in Suit.allCases{
      cards.append(Card(rank: rank, suit: suit))
    }
  }
  return cards
}

var cardDeck = deck()
for card in cardDeck{
  print(card.rank, card.suit)
}
