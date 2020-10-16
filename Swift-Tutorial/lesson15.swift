
class Person {

    var name:String
    var netWorth:Int?
    var gender:String!

    // Designated initializer because it makes sure that all properties are initialized
    init() {
        name = "None"
    }

    convenience init(_ gender:String, _ netWorth:Int) {
        // Call the designated initializer to ensure that the object is ready to go
        self.init()
        self.gender = gender
        self.netWorth = netWorth
    }
}

// Creating a new person object
var per1 = Person()

// Creating a new rich person object
var per2 = Person("Male", 1000000)
print(per2.name)
print(per2.gender!)
print(per2.netWorth!)


// Challenge 13

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

    var hunger:Int = 0
    var dirt:Int = 0
    var boredom:Int = 0
    var drowsiness:Int = 0
    var ageInDays:Double!
    var age:Double? {
        return ageInDays! / 30
    }

    override init() {
        super.init()
        boredom = 60
        ageInDays = 0
    }

    //override init(_ name:String) {
    //    super.init(name)
    //    boredom = 60
    //    ageInDays = 0
    //}

    convenience override init(_ name:String) {
        self.init()
        self.name = name
    }

    override func feed() {

        if hunger == 0 {
            print("\(name) is already full")
        }
        else {
            super.feed()
            hunger = 0
            boredom += 20
            dirt += 20
            drowsiness += 10
        }
    }

    override func clean() {

        if dirt == 0 {
            print("\(name) is already clean")
        }
        else {
            super.clean()
            dirt = 0
            hunger += 20
            boredom += 20
            drowsiness += 10
        }
    }

    override func play() {

        if boredom == 0 {
            print("\(name) is already done playing")
        }
        else {
            super.play()
            boredom = 0
            hunger += 20
            dirt += 20
            drowsiness += 10
        }
    }

    override func sleep() {

        if drowsiness == 0 {
            print("\(name) has already slept")
        }
        else {
            super.sleep()
            drowsiness = 0
            boredom += 20
            hunger += 20
            dirt += 10
            ageInDays! += 1
        }
    }

    func check() {
        print()
        print("\(name)'s hunger is:" , hunger)
        print("\(name)'s boredom is:" , boredom)
        print("\(name)'s dirt is:" , dirt)
        print("\(name)'s drowsiness is:" , drowsiness)
        print()

        if hunger >= 60 {
            print("\(name) is hungry")
        }
        if dirt >= 60 {
            print("\(name) is dirty")
        }
        if boredom >= 60 {
            print("\(name) is bored")
        }
        if drowsiness >= 60 {
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