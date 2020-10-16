
let a = 25

if a <= 10 {
    print("a is less than 10")
}
else if a < 20 {
    print("a is greater than 10")
}
else {
    print("a is something else")
}

// Challenge 3
var firstName:String = "John"
var lastName:String = "da Eira"
var gender:String = "Male"

var age:Int = 17
var cashOnHand:Double = 131
var hasChildren:Bool = false

if hasChildren == true {
    print("Being a parent is hard, my money goes to my children instead of games!")
}

if age > 18 {
    print("Adulting is hard. I can't buy the game because I need to pay bills")
}

if (hasChildren == false) && (age <= 18) {
    print("I'm young and I can do what I want so gimme that game!")
}