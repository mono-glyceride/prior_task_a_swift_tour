func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
  var result = [Item]()
  for _ in 0..<numberOfTimes {
    result.append(item)
  }
  return result
}
print(makeArray(repeating: "knock", numberOfTimes: 4))

enum OptionalValue<Wrapped> {
  case none
  case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs:T, _ rhs: U) -> [T.Element]
where T.Element: Equatable, T.Element == U.Element
{
  var commonArray = [T.Element]()
  for lhsItem in lhs {
    for rhsItem in rhs {
      if lhsItem == rhsItem {
        commonArray.append(rhsItem)
      }
    }
  }
  return commonArray
}
print(anyCommonElements([1, 2, 3], [3]))

// Experiment anyCommonElements()を２つのシーケンスの共通の要素が含まれる配列を返すように修正してみましょう。
