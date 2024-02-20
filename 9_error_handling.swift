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