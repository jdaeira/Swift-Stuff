
var message = "Hello"

// Use the underscore "_" if you don't need a variable
for _ in 1...5 {
    print(message)
}

var sum = 0
for counter in 1...5 {
    sum += counter
}

print(sum)

// Challenge 5
var drawPixel:String = "x"
var height:Int = 5
var tempRow:String = ""

for _ in 1...height {
    tempRow.append(drawPixel)
    print(tempRow)
}

// This is the way the teacher did Challenge 5
for columnPixel in 1...height {
    tempRow = ""
    for _ in 1...columnPixel{
        tempRow += drawPixel
    }
    print(tempRow)
}
