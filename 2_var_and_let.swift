// 型を明示せずとも。コンパイラが推測する
var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

// Experiment 値が4で、floatを明示的に指定した定数を作成してみましょう
let four: Float = 4
print(four)

// 値は暗黙的に他の型に変換されない
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)

// Experiment 最後の行からStringへの変換を消してみてください。どんなエラーが起こるでしょうか

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print(appleSummary)
print(fruitSummary)

// Experiment 文字列に浮動小数点の計算を含めたり、誰かの名前をあいさつに含めるために、\()を使用してみましょう

let name = "サスケくん"
let goodMorningName = "おはよう、\(name)"
let juryokuSentence = "黒閃の威力は通常の呪力の \(Float(5.0/2.0)) 乗"
print(goodMorningName)
print(juryokuSentence)

let gojoLine = """
もっと言葉を選んだ方がいいんじゃないか？
今際の際だぞ
"""
print(gojoLine)