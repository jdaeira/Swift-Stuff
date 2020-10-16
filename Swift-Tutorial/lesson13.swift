
var a:Int? = nil // Use the ? Optional to create a nil variable
var t:String? = nil

a = 10
print(a!) // Need to use ! to call the optional variable

class XmasPresent {

    func surprise() -> Int {
        return Int.random(in: 1...10)
    }
}

var present:XmasPresent? = XmasPresent()

// Check the optional to see if it contains an object

if present != nil {
    // it contains an object
    // call the surprise function
    print(present!.surprise())
}

// Optional binding
if let actualPresent = present {
    print(actualPresent.surprise())
}

// Optional chaining
//present?.surprise()

var str1:String = "Hey"

var str2:String? = nil

// str3 can stotr a string or nil, but it is wrapped
var str3:String?

// str4 can store a string or nil, but it is already unwrapped
var str4:String!

str3 = "Question Mark"
str4 = "Exclamation Mark"

print(str3!)
print(str4!)