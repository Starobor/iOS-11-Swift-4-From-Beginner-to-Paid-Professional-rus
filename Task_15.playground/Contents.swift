/*
 * Task #15
 */

import UIKit

class Family {
    var mam = "Mam"
    var dad = "Dad"
    var child = "Children"
    
    subscript (index: Int) -> String {
        get {
            if index > 3 {
                return String(index * 100/2)
            }else {
                print("Your index - ", terminator: "")
            }
            switch index {
            case 0: return mam
            case 1: return dad
            case 2: return child
            default:
                return ""
            }
        }
    }
}

class Human {
    var name: String
    var age: Int
    var gender: String
    
    init(humanName: String, humanAge: Int, humanGender: String) {
        name = humanName
        age = humanAge
        gender = humanGender
    }
    
    func getData() -> String {
        return "name \t- \(name) \nage \t- \(age) \ngender \t- \(gender)"
    }
}
print(Human(humanName: "Bob", humanAge: 25, humanGender: "M").getData())

class Person: Human {
    override var name : String {
        get {
            return "JO"
        } set{}
    }
    
    override func getData() -> String {
        return "No data :)"
    }
}

class Mouse: Human {
    override var name : String {
        get {
            return "Jery"
        } set{}
    }
    override func getData() -> String {
        return "Somthing wrong"
    }
}

enum Type {
    case int(Int)
    case float(Float)
    case double(Double)
    case string(String)
    case boll(Bool)
}

var allType = [String:Type]()
