


class Employee {

    var name = ""
    var salary = 100
    var role = ""

    func doWork() {
        print("Hi, my name is \(name) and I'm working!")
        salary += 1
    }
}


let a:Int = 10
let b:String = "Ted"
var c:Employee = Employee()

c.name = "John"
print(c.name)
c.salary = 1000
c.role = "Software Engineer"
 
c.doWork()
print(c.salary)

var d = Employee()

d.name = "Jackie"
d.role = "Manager"
d.salary = 1000

d.doWork()

// When inside classes variables are properties and functions are methods
// Challenge 9

class Pets {
    var name = ""
    var age = 0

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

var pet = Pets()
pet.name = "Zoey"

pet.feed()
pet.clean()
pet.play()
pet.sleep()
