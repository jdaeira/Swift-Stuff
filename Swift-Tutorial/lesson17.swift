
// This is declaring an empty String:String dictionary
var myDictionary = [String:String]()

// Assigning data into a dictionary
myDictionary["SJD 293"] = "Red Ferrari"
myDictionary["USD 111"] = "Silver Porshe"

// Retreiving a value as optional string
print(myDictionary["SJD 293"]!)

// Replacing a value for a key
myDictionary["SJD 293"] = "Black Lambo"

print(myDictionary["SJD 293"]!)

// Remove a value for a key
//myDictionary["SJD 293"] = nil

// Loop through the items of a dictionary
for (key, value) in myDictionary {
    // Do stuff for each item of the dictionary
    print("License Plate \(key) is a \(value)")
}


// Challenge 15

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
    var properties:[String:Int] = ["hunger":0, "dirt":0, "boredom":60, "drowsiness":0]
    var ageInDays:Double!
    var age:Double? {
        return ageInDays! / 30
    }

    override init() {
        super.init()
        //properties[2] = 60
        ageInDays = 0
    }

        convenience override init(_ name:String) {
        self.init()
        self.name = name
    }

    override func feed() {

        if properties["hunger"]! == 0 {
            print("\(name) is already full")
        }
        else {
            super.feed()
            properties["hunger"]! = 0
            properties["boredom"]! += 20
            properties["dirt"]! += 20
            properties["drowsiness"]! += 10
        }
    }

    override func clean() {

        if properties["dirt"]! == 0 {
            print("\(name) is already clean")
        }
        else {
            super.clean()
            properties["dirt"]! = 0
            properties["hunger"]! += 20
            properties["boredom"]! += 20
            properties["drowsiness"]! += 10
        }
    }

    override func play() {

        if properties["boredom"]! == 0 {
            print("\(name) is already done playing")
        }
        else {
            super.play()
            properties["boredom"]! = 0
            properties["hunger"]! += 20
            properties["dirt"]! += 20
            properties["drowsiness"]! += 10
        }
    }

    override func sleep() {

        if properties["drowsiness"]! == 0 {
            print("\(name) has already slept")
        }
        else {
            super.sleep()
            properties["drowsiness"]! = 0
            properties["boredom"]! += 20
            properties["hunger"]! += 20
            properties["dirt"]! += 10
            ageInDays! += 1
        }
    }

    func check() {
        print()
        print("\(name)'s hunger is:" , properties["hunger"]!)
        print("\(name)'s boredom is:" , properties["boredomn"]!)
        print("\(name)'s dirt is:" , properties["dirt"]!)
        print("\(name)'s drowsiness is:" , properties["drowsiness"]!)
        print()

        if properties["hunger"]! >= 60 {
            print("\(name) is hungry")
        }
        if properties["dirt"]! >= 60 {
            print("\(name) is dirty")
        }
        if properties["boredom"]! >= 60 {
            print("\(name) is bored")
        }
        if properties["drowsiness"]! >= 60 {
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
