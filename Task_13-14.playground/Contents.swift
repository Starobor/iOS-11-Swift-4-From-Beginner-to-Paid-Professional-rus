/*
 * Task #13-14
 *
 */

import UIKit

class IOS_Students {
    var date_of_btith = Int()
    var skills = String()
    
    init(date: Int, skil: String) {
        date_of_btith = date
        skills = skil
    }
}

struct Create_Triangle {
    var A: Int
    var C: Int
    
    func getB() -> Int {
        return 180 - A - C
    }
}

var B = Create_Triangle(A: 45, C: 50).getB()

struct Summary {
    var lastName: String
    var name: String
    var position: String
    var experience: String
    var telNum: String
    var about: String
}

class Journal {
    var list: [String : Int] = [:]
    
    func addStudent (name: String, lastName: String, mark: Int) {
        if corectData(firstName: name, lastName: lastName, mark: mark){
            list["\(name) \(lastName)"] = mark
        }
    }
    
    func getJournal() -> [String:Int] {
        return list
    }
    
    func printJournal() {
        for (key, value) in list {
            print("\(key) \(value)")
        }
    }
    
    func corectData (firstName:String, lastName:String, mark:Int) -> Bool {
        if firstName.count > 15 || lastName.count > 15 {
            print("Name so big")
            return false
        }
        if mark > 5 {
            print("invalid mark")
            return false
        }
        return true
    }
}

var journal = Journal()
journal.addStudent(name: "Bob", lastName: "Dilan", mark: 4)
journal.addStudent(name: "Nensi", lastName: "Dilan", mark: 5)
journal.printJournal()



