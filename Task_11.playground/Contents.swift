/*
 * Task #11
 * - Sorted arr by alphabet and revers
 * - Sorted by count char in name
 * - Create func that get dictionary and print key and value
 */

import UIKit

let arrSorted = ["Lilia", "Bob", "Aaron", "Sam", "Jo", "Debi", "Frank"]

print(arrSorted.sorted{(s1,s2) in return s1 < s2})
print(arrSorted.sorted{(s1,s2) in return s1 > s2})
print(arrSorted.sorted{(s1,s2) in return s1.count > s2.count})
print(arrSorted.sorted{(s1,s2) in return s1.count < s2.count})

func printKeyAndValue (names: Dictionary<String,Int>){
    for (name, age) in names {
        print("\(name) \t\(age)")
    }
}

let age = ["Bob"   : 25,
           "Sam"   : 18,
           "Julia" : 21,
           "Debi"  : 10]
printKeyAndValue(names: age)




