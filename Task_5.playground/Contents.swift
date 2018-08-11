/*
 * Task #5
 * - Create 10 dictionary
 * - some dictionary is empty
 * - two dictionary it's month of year on eng and rus
 *
 */
import UIKit

//1
let monthOfYearEng = [1  : "January",
                      2  : "February",
                      3  : "March",
                      4  : "April",
                      5  : "May",
                      6  : "June",
                      7  : "July",
                      8  : "August",
                      9  : "September",
                      10 : "October",
                      11 : "November",
                      12 : "December"]
//2
let monthOfYearRus = [1  : "Январь",
                      2  : "Февраль",
                      3  : "Март",
                      4  : "Апрель",
                      5  : "Май",
                      6  : "Июль",
                      7  : "Июнь",
                      8  : "Август",
                      9  : "Сентябрь",
                      10 : "Октябрь",
                      11 : "Ноябрь",
                      12 : "Декабрь"]
//3
let nameAndAge = ["Sam"     : 20,
                  "Kris"    : 30,
                  "Damian"  : 18,
                  "Barbara" : 23,
                  "Kate"    : 19,
                  "Lola"    : 12]
//4
let recipe = ["Milk"        : 0.5,
              "Orange"      : 2,
              "Kiwi"        : 1,
              "Banan"       : 1,
              "Chocolate"   : 100]

//5
let fullName = ["Jo"     : "Benuchi",
                "Kira"   : "Musalini",
                "Avraam" : "Russo",
                "Nancy"  : "Drew"]

//6
let alphabet:[Character:Character] = ["a" : "A",
                                      "b" : "B",
                                      "c" : "C",
                                      "d" : "D"]

//7
let banknoteInPurse = ["Jo"     : [10,5,100,1],
                       "Mari"   : [20,10,5,1,100,100],
                       "Ban"    : [100,100,100,100,50],
                       "Markus" : [10,100,50,5]]

//8
let investmentsDictionary = ["Son"   : [0 : "Yelow",
                                        1 : "Red"],
                             "Earth" : [0 : "Blue",
                                        1 : "Green"]]

//9
let degrees = [-20 : "brrrr....",
               -10 : "very cold",
                0  : "cold",
                10 : "warm",
                20 : "very warm",
                30 : "hot",
                40 : "very hot"]

//10
var emptyDictionary = [String:String]()

if emptyDictionary.isEmpty {
    emptyDictionary["First key"]  = "First value"
    emptyDictionary["Second key"] = "Second value"
}else{
    print("I'm not empty")
}

for (key, value) in monthOfYearEng {
    print("\(key) - \(value)")
}





