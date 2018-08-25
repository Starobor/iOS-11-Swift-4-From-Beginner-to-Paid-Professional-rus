import UIKit

//planet
class Planet{
    private static var details = 1000
    private static let detailsForCreate = 10
    
    class SupremeRobot {
        
        private var number: String
        private var name: String
        
        init(name: String, number: String) {
            self.name = name
            self.number = number
        }
        
        deinit {
            print("The robot is destroyed")
        }
        
        static func giveDetails(countDetails: Int) -> Int {
            if ((Planet.details - countDetails) > 0){
                Planet.details -= countDetails
                return countDetails
            } else {
                print("Large query. In stock \(Planet.details).")
                return 0
            }
        }
        
        func getName() -> String {
            return name
        }
        
        func getNumber() -> String {
            return number
        }
        
        static func createRobot(name: String, number: String) -> Robot {
            Planet.details -= Planet.detailsForCreate
            print("Robot created")
            return Robot(name: name, number: number)
        }
        
        static func createRobots(numberRobots: Int) -> [Robot] {
            var arrRobots = [Robot]()
            for _ in 1...numberRobots {
                if  Planet.details - Planet.detailsForCreate > 0{
                    Planet.details -= Planet.detailsForCreate
                    arrRobots.append(Robot(name: "Noname", number: "No number"))
                }else {
                    print("No details")
                }
            }
            print("Robots created")
            return arrRobots
        }
        
        func getCountDetails() -> Int {
            return Planet.details
        }
    }
    
    class Robot: SupremeRobot {
        func getDetails(countDetails: Int) {
            print("Supreme... give details!")
            SupremeRobot.giveDetails(countDetails: countDetails)
        }
        
        func addRobot(name: String, number: String) -> Robot?{
            print("Hello supreme, i'm robot \(getName()) number is \(getNumber()). Create a robot")
            if  Planet.details - Planet.detailsForCreate > 0{
                return SupremeRobot.createRobot(name: name, number: number)
            } else {
                print("No details")
                return nil
            }
        }
        
        func addRobots(numberRobots: Int) -> [Robot]{
            print("Hello supreme, i'm robot \(getName()) number is \(getNumber()). Create a robots")
            return SupremeRobot.createRobots(numberRobots: numberRobots)
        }
        
        func say() {
            print("Hello, i'm robot \(getName()) number is \(getNumber()).")
        }
    }
}

var mainRobot = Planet.SupremeRobot(name: "Main", number: "0000")
var robot1 = Planet.Robot(name: "Bill", number: "0001")
robot1.addRobot(name: "sda", number: "0111")
robot1.getCountDetails()
robot1.say()
print()

//optional
var optional: String? = "hello"
if let value = optional {
    print(value)
}
var optionalArr: [String?] = ["1", "2", "3"]
for index in optionalArr {
    print(index!)
}
print()

//house
class House {
    var address: Address?
    var numberParkingPlace: ParkingPlace?
    var car: Car?
    
    init(street: String, numbeHouse: Int, modelCar: String, numberParkingPlace: Int) {
        self.address = Address(street: street, numbeHouse: numbeHouse)
        self.numberParkingPlace = ParkingPlace(numberParkingPlace: numberParkingPlace)
        self.car = Car(modelCar: modelCar)
    }
    deinit {
        print("no house")
    }
}

class Address {
    var street: String
    var numbeHouse: Int
    
    
    init(street: String, numbeHouse: Int) {
        self.street = street
        self.numbeHouse = numbeHouse
    }
    
    deinit {
        print("no address")
    }
    
    func getStreet() -> String {
        return street
    }
    
    func getNumber() -> Int {
        return numbeHouse
    }
    
}

class ParkingPlace {
    var numberParkingPlace: Int
    
    init(numberParkingPlace: Int) {
        self.numberParkingPlace = numberParkingPlace
    }
    
    func getNumberParkingPlace() -> Int {
        return numberParkingPlace
    }
    
    deinit {
        print("no parking place")
    }
}

class Car {
    var modelCar: String
    
    init(modelCar: String) {
        self.modelCar = modelCar
    }
    
    deinit {
        print("no car")
    }
    
    func getModelCar() -> String {
        return modelCar
    }
}

House(street: "A", numbeHouse: 1, modelCar: "KIA", numberParkingPlace: 5)
