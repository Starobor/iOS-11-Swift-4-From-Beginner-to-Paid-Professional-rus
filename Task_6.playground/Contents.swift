/*
 * Task #6
 * - Create 5 tuples
 * - some tuples is empty
 * - two tuples it's month of year on eng and rus
 */

import UIKit

let monthOfYearEng = ("January",
                      "February",
                      "March",
                      "April",
                      "May",
                      "June",
                      "July",
                      "August",
                      "September",
                      "October",
                      "November",
                      "December")

let monthOfYearRus = ("Январь",
                      "Февраль",
                      "Март",
                      "Апрель",
                      "Май",
                      "Июль",
                      "Июнь",
                      "Август",
                      "Сентябрь",
                      "Октябрь",
                      "Ноябрь",
                      "Декабрь")


let emptyTuples1:(String,Int,Character)

let (name, growth, age, gender) = ("Bob", 1.79, 26, "M")

let names: (String, String, String) = ("Josh", "Lili", "Anna")

let personSettings = (name:"Tom", age:28, color: "white")

print(monthOfYearRus)
print(name,growth,age,gender)
print("\(personSettings.name) \(personSettings.age) \(personSettings.color)")
print("\(names.0) \(names.1) \(names.2)")

