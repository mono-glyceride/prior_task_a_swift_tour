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
let widthLabel = label + width
print(widthLabel)

// Experiment 最後の行からStringへの変換を消してみてください。どんなエラーが起こるでしょうか