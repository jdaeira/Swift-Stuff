class Employee {

    var name = ""
    var salary = 100
    var role = ""

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

var m = Manager()
m.name = "John"
m.salary = 2000
m.role = "Manager of IT"
m.teamSize = 10
m.doWork()
m.firePeople()

var e = Employee()

//Challenge 10
class Pets {
    
    var name:String = ""
    var age:Int = 0

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

    override func feed() {
        super.feed()
        hunger = 0
        boredom += 20
        dirt += 20
        drowsiness += 10
    }

    override func clean() {
        super.clean()
        dirt = 0
        hunger += 20
        boredom += 20
        drowsiness += 10
    }

    override func play() {
        super.play()
        boredom = 0
        hunger += 20
        dirt += 20
        drowsiness += 10
    }

    override func sleep() {
        super.sleep()
        drowsiness = 0
        boredom += 20
        hunger += 20
        dirt += 10
    }

    func check() {
        print()
        print("\(name)'s hunger is:" , hunger)
        print("\(name)'s boredom is:" , boredom)
        print("\(name)'s dirt is:" , dirt)
        print("\(name)'s drowsiness is:" , drowsiness)
    }
}

var game = Tamagotchi()
game.name = "Zoey"

game.feed()
game.clean()
game.play()
game.sleep()
game.check()
