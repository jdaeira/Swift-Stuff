
// Switch Statements

let chr = "c"

switch chr {
case "a":
    print("This is an a")
case "b", "c":
    print("This is a b or c")
default:
    print("This is the fallback")
}

// Challenge 4

var strOperator:String = "/"
var num1:Int = 6
var num2:Int = 3
var result:Int

switch strOperator {
case "+":
    result = num1 + num2
    print(result)
case "-":
    result = num1 - num2
    print(result)
case "x", "*":
    result = num1 * num2
    print(result)
case "/":
    result = num1 / num2
    print(result)
default:
    print("Operator does not exist")
}