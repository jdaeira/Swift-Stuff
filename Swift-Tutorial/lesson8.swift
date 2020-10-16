import Foundation


func addTwoNumbers(number1:Int, number2:Int) -> Int {
    let a = number1
    let b = number2
    let c = a + b
    return c
}

let total = addTwoNumbers(number1: 5, number2: 6)
print(total)

func addTwoNumbersAgain(_ number1:Int, _ number2:Int) -> Int {
    let a = number1
    let b = number2
    let c = a + b
    return c
}

let totalAgain = addTwoNumbersAgain(5, 6)
print(totalAgain)

func walk(_ direction:String, _ steps:Int) -> String {
    return "You have walked " + String(steps) + " steps to the " + direction
}

var resultStr = walk("North", 5)
print(resultStr)

var value = 5.000
var valueString = String(format: "$%.2f", value)

print(valueString)
