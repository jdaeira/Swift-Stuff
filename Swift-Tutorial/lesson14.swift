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
    var bonus:Int {
        // This is a computed property
        // When it's accessed, the code in here will run
        // Then will return the value

        return teamSize * 1000
    }

    init(_ name:String, _ team:Int) {

        // This calls the init of the Employee class
        super.init(name)

        // Additional init work
        self.teamSize = team
    }


    override func doWork() {
        super.doWork() //This will call the original method plus add functionality below
        print("I'm managing people")
        salary += 2
    }

    func firePeople() {
        print("I'm firing people")
    }
}

var manager = Manager("John", 5)

print(manager.name)
print(manager.teamSize)
print(manager.bonus)


// Challenge 12

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

    override init(_ name:String) {
        super.init(name)
        boredom = 60
        ageInDays = 0
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

var dog = Tamagotchi("Zoey")
dog.play()
dog.sleep()
dog.play()
dog.sleep()
dog.play()
dog.sleep()
print(dog.ageInDays!)
dog.getAge()
