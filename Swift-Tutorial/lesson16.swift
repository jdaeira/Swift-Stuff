
var a = "Dog"
var b = "Cat"
var c = "Bird"

var myArray:[String] = ["Dog", "Cat", "Bird"]


for counter in 0...myArray.count-1 {
print(myArray[counter])
}

print()

for item in myArray {
    print(item)
}

// How to declare an empty Array in two different ways
var emptyArray:[String] = []
var emptyArray2 = [String]()

// Add items to an Array
myArray.append("Racoon") // Added to the end of the Array
myArray.insert("Frog", at: 0) // Added to the beginning of the Array

// Appended Frog and Bear to the end of the Array
myArray += ["Frog", "Bear"]

print()

for item in myArray {
    print(item)
}

// Remove items from the Array
myArray.remove(at: 0) // Removes the first element from the Array

print()

for item in myArray {
    print(item)
}

// Search your Array


// Chanllenge 14

class Pets {

    var name:String = ""

    init() {
        name = "Spots"
    }

    init(_ name:String) {
        self.name = name
    }

    func feed() {
        print("\(name) has been fed")
    }

    func clean() {
        print("\(name) has taken a bath")
    }

    func play() {
        print("\(name) enjoyed playing with you")
    }

    func sleep() {
        print("\(name) went to sleep")
    }
}

class Tamagotchi: Pets {

    // properties of array are 0 for hunger, 1 for dirt, 2 for boredom, 3 for drowsiness
    var properties = [0, 0, 0, 0]
    var ageInDays:Double!
    var age:Double? {
        return ageInDays! / 30
    }

    override init() {
        super.init()
        properties[2] = 60
        ageInDays = 0
    }

        convenience override init(_ name:String) {
        self.init()
        self.name = name
    }

    override func feed() {

        if properties[0] == 0 {
            print("\(name) is already full")
        }
        else {
            super.feed()
            properties[0] = 0
            properties[2] += 20
            properties[1] += 20
            properties[3] += 10
        }
    }

    override func clean() {

        if properties[1] == 0 {
            print("\(name) is already clean")
        }
        else {
            super.clean()
            properties[1] = 0
            properties[0] += 20
            properties[2] += 20
            properties[3] += 10
        }
    }

    override func play() {

        if properties[2] == 0 {
            print("\(name) is already done playing")
        }
        else {
            super.play()
            properties[2] = 0
            properties[0] += 20
            properties[1] += 20
            properties[3] += 10
        }
    }

    override func sleep() {

        if properties[3] == 0 {
            print("\(name) has already slept")
        }
        else {
            super.sleep()
            properties[3] = 0
            properties[2] += 20
            properties[0] += 20
            properties[1] += 10
            ageInDays! += 1
        }
    }

    func check() {
        print()
        print("\(name)'s hunger is:" , properties[0])
        print("\(name)'s boredom is:" , properties[2])
        print("\(name)'s dirt is:" , properties[1])
        print("\(name)'s drowsiness is:" , properties[3])
        print()

        if properties[0] >= 60 {
            print("\(name) is hungry")
        }
        if properties[1] >= 60 {
            print("\(name) is dirty")
        }
        if properties[2] >= 60 {
            print("\(name) is bored")
        }
        if properties[3] >= 60 {
            print("\(name) is sleepy")
        }
    }

    func getAge() {
        print("\(name)'s age is \(age!) months old")
    }
}

var dog = Tamagotchi("Jimmy")
dog.play()
dog.sleep()
dog.play()
dog.sleep()
dog.play()
dog.sleep()
print(dog.ageInDays!)
dog.getAge()

