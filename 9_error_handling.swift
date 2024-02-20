enum PrinterError: Error {
  case outOfPaper
  case noToner
  case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
  if printerName == "Never Has Toner" {
    throw PrinterError.noToner
  }
  return "Job sent"
}

do {
  let printerResponse = try send(job: 1040, toPrinter: "Bi Shend")
  print(printerResponse)
} catch {
  print(error)
}

// Experiment プリンタの名前を"Never Has Toner"に変えてみましょう。send(job:toPrinter:はエラーをスローします)

do {
  let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
  print(printerResponse)
} catch {
  print(error)
}

do {
  let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
  print(printerResponse)
} catch PrinterError.onFire {
  print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
  print("Printer error: \(printerError)")
} catch {
  print(error)
}

/*
Experiment doブロックの中でエラーをスローするコードを追加してみましょう。最初のcatchブロックでエラーを処理するためにはどの種類のエラーをスローする必要があるでしょうか。
2つ目、３つ目の場合はどうでしょうか。
*/

let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")
print(printerSuccess)
print(printerFailure)

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
  fridgeIsOpen = true
  defer {
    fridgeIsOpen = false
  }
  let result = fridgeContent.contains(food)
  return result
}
if fridgeContains("banana") {
  print("Found a banana")
}
print(fridgeIsOpen)