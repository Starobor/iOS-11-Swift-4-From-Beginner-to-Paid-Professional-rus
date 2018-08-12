/*
 * Task #12
 * - Create perent class and 2 heir class
 * - Create class House
 * - Create class that sorted children names
 * - Create struct
 *
 */

import UIKit

class Perent {
}

class Heir1: Perent {
}

class Heir2: Perent {
}

class House {
    var width  = 10
    var height = 3
    private var derivative = 0
    
    
    func create() {
        derivative = width * height
        print(derivative)
    }
    
    func destroy() {
        if derivative == 0 {
            print("there is nothing to destroy")
        }else {
            derivative = 0
            print("house is destroy")
        }
    }
}

class Sorted {
    private var childrenNames:[String]
    
    init(names: [String]) {
        childrenNames = names
    }
    
    func sortedByAlph() -> [String] {
        return childrenNames.sorted()
    }
    
    func sortedByAlphRev() -> [String] {
        return childrenNames.sorted{(s1,s2) in return (s1 > s2)}
    }
    
    func sortedByMaxCount() -> [String] {
        return childrenNames.sorted{(s1,s2) in return (s1.count > s2.count)}
    }
    func sortedByMinCount() -> [String] {
        return childrenNames.sorted{(s1,s2) in return (s1.count < s2.count)}
    }
}

var children = Sorted(names: ["Anna", "Sam", "Jo", "Julia", "Bob"])

struct Date {
    var dateNow: String
    
    func getDate() -> String {
        return dateNow
    }
}

var combination = Date(dateNow: "2018_08_12")



