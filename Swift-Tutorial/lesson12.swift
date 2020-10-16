class Person {
    var name = ""

    init() {
        // custom init code
    }

    init(_ name:String) {
        self.name = name
    }
}

class Employee: Person {

    var salary = 100
    var role = ""

    //This is how to override the Person init function
    override init(_ name:String) {

        // This is calling the init(_ name:String) function of the Person class
        super.init(name)

        // Additional init code
        self.role = "Analyst"
    }

    func doWork() {
        print("Hi, my name is \(name) and I'm working!")
        salary += 1
    }
}

class Manager: Employee {

    var teamSize = 0
    override func doWork() {
        super.doWork() //This will call the original method plus add functionality below
        print("I'm managing people")
        salary += 2
    }

    func firePeople() {
        print("I'm firing people")
    }
}

var myPerson = Person("John")
print(myPerson.name)

var myEmployee = Employee("Mark")
print(myEmployee.name)
print(myEmployee.role)


// Challenge 11
class Pets {

    var name:String = ""
    var age:Int = 0

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

    override init() {
        super.init()
        boredom = 60
    }

    override init(_ name:String) {
        super.init(name)
        boredom = 60
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
}

var dog = Tamagotchi("Zoey")
print(dog.name)
print(dog.boredom)
dog.play()
dog.feed()
dog.clean()
dog.sleep()
dog.check()
