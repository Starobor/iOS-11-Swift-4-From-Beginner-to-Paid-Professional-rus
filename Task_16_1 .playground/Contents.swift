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
var police = Police(name: "Hank", growth: 1.79, weight: 64, gender: "M")

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

/*
 * Task 16_2
 */

import UIKit

class Marsian {
    var name:String
    var age:Int
    var gender:String
    var cityName: String
    
    init(name: String, age: Int, gender: String, cityName: String) {
        self.name = name
        self.age = age
        self.gender = gender
        self.cityName = cityName
    }
    func say(){
        print("Hello, I'm \(name), my age is \(age), and I'm \(gender). \n\(name) from \(cityName)")
    }
}

class MarsianPolice: Marsian {
    override
    func say () {
        print("Hello, I'm \(name), my age is \(age), and I'm \(gender). \n\(name) from \(cityName) and I'm police")
    }
}


class MarsianProgrammer: Marsian {
    override
    func say () {
        print("Hello, I'm \(name), my age is \(age), and I'm \(gender). \n\(name) from \(cityName) and I'm programmer")
    }
}

var someMarsianin = Marsian(name: "Mark", age: 518, gender: "man", cityName: "Marsiopolis")
var policeMarsianin = MarsianPolice(name: "Jorge", age: 150, gender: "man", cityName: "Marsiopolis")
var programmerMarsianin = MarsianProgrammer(name: "Lia", age: 88, gender: "woman", cityName: "Marsiopolis")
var marsianinArr = [someMarsianin,policeMarsianin,programmerMarsianin]
var interplanetaryArr = [someHuman, cook, manager, fighter, someMarsianin, policeMarsianin, programmerMarsianin] as [AnyObject]

for index in interplanetaryArr {
    if index is Marsian {
        print("Marsianin")
    }else{
        print("People")
    }
}

print()

var countArr = (marsianinArr.count > peopleArr.count) ? marsianinArr.count : peopleArr.count
for index in 0...countArr-1 {
    if marsianinArr.indices.contains(index) {
        print("\(marsianinArr[index].name) - marsianin")
    }else {
        print("no objects")
    }
    
    if peopleArr.indices.contains(index) {
        print("\(peopleArr[index].name) - people")
    }else {
        print("no objects")
    }
}





