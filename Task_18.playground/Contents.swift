import UIKit

class People {
    var name: String
    var kinship: String
    var parents: [Parents]? = [Parents]()
    var relatives: [Relatives]? = [Relatives]()
    var neighbor: [Neighbor]? = [Neighbor]()
    
    init(name: String, kinship: String) {
        self.name = name
        self.kinship = kinship
    }
    
    func addParents(name: String, kinship: String) {
        parents?.append(Parents(name: name, kinship: kinship))
    }
    
    func addRelatives(name: String, kinship: String) {
        relatives?.append(Relatives(name: name, kinship: kinship))
    }
    
    func addNeighbor(name: String, kinship: String) {
        neighbor?.append(Neighbor(name: name, kinship: kinship))
    }

    func countPeople() {
        print("\(parents?.count ?? 0) - parents")
        print("\(relatives?.count ?? 0) - relatives")
        print("\(neighbor?.count ?? 0) - neighbor")
        print("\((parents?.count)! + (relatives?.count)! + (neighbor?.count)!) - all communications")
    }
    
    func printPeopleArr(people: [People]) {
        for index in people {
            print("\(index.name) - \(index.kinship)")
        }
    }
}

class Parents: People {
    
}

class Relatives: People {
    
}

class Neighbor: People {
    
}


var human = People(name: "Bob", kinship: "root")
human.addParents(name: "Lili", kinship: "mother")
human.addParents(name: "Abram", kinship: "father")
human.addNeighbor(name: "Gregory", kinship: "neighbor")
human.addNeighbor(name: "Susi", kinship: "neighbor")
human.addRelatives(name: "Sam", kinship: "brother")
human.addRelatives(name: "Bil", kinship: "brother")
human.addRelatives(name: "Amanda", kinship: "sister")
human.addRelatives(name: "Samantha", kinship: "sister")
human.addRelatives(name: "Alan", kinship: "cousin")

human.countPeople()
print()
human.printPeopleArr(people: human.relatives!)

class Animals {
    var cow: Cow?
    var goat: Goat?
    var dog: Dog?
    init(nameCow: String, nameGoat: String, nameDog: String) {
        self.cow = Cow(name: nameCow)
        self.goat = Goat(name: nameGoat)
        self.dog = Dog(name: nameDog)
    }
}

class Being {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Cow: Being {

}

class Goat: Being {

}

class Dog: Being {
    
}

var animals = Animals(nameCow: "Mumu", nameGoat: "Roger", nameDog: "Bobik")

class Plants {
    var grass: Grass?
    var flower: Flower?
    
    init(nameGrass: String, nameFlower: String) {
        self.grass = Grass(name: nameGrass)
        self.flower = Flower(name: nameFlower)
    }
}

class Grass: Being {
    
}

class Flower: Being {
    
}

