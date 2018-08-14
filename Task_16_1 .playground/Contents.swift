/*
 * Task #16_1
 *
 */
import UIKit

class People {
    var name = String()
    var growth = Double()
    var weight = Double()
    var gender = String()
    
    init(name: String, growth: Double, weight: Double, gender: String) {
        self.name = name
        self.growth = growth
        self.weight = weight
        self.gender = gender
    }
    
    func say() {
        print("I'm a some people")
    }
    
    func printData() {
        print("name - \(name) \ngrowth - \(growth) \nweight - \(weight) \ngender- \(gender)")
    }
}

class Cook: People {
    override func say() {
        super.say()
        print("I'm a cook")
    }
}

class Manager: People {
    override func say() {
        super.say()
        print("I'm a manager")
    }
}

class Fighter: People {
    override func say() {
        super.say()
        print("I'm a fighter")
    }
}

var someHuman = People(name: "Bob", growth: 1.80, weight: 68, gender: "M")
var cook = Cook(name: "Jo", growth: 1.90, weight: 75, gender: "M")
var manager = Manager(name: "Susi", growth: 1.70, weight: 57, gender: "W")
var fighter = Fighter(name: "Frenk", growth: 1.79, weight: 64, gender: "M")
var peopleArr = [someHuman, fighter, manager, fighter]

class Police: People {
    var experienceInYears = 10
}
var police = Police(name: "Frenk", growth: 1.79, weight: 64, gender: "M")

peopleArr.append(police)

for human in peopleArr {
    human.say()
    human.printData()
    if human is Police {
        print("experience - \(police.experienceInYears)")
    }
    print()
}

for human in peopleArr.reversed() {
    human.printData()
    print("\n")
}
