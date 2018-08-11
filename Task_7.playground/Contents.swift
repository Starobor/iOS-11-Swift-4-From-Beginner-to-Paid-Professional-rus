/*
 * Task #7
 * - Create 5 string with number and count
 * - Create 3 const with nil
 * - Create 5 Optional type and set values
 * - Print your name in cycle
 * - Create arr with age then print arr
 */
import UIKit

let num1 = "10", num2 = "15", num3 = "0.5", num4 = "110000000", num5 = "0"
let sum = Double(num1)! + Double(num2)! - Double(num3)! + Double(num5)! + Double(num5)!

var nilConst: String?
var number: Int? = nil
var str: Optional<String> = nil

let age: Int? = 10
let name: String? = "Igor"
let gender: Optional<Character> = "M"
let Pi: Double? = 3.14

for char in name! {
    print(char)
}
print("")

var ageArr = [15, 99, 2, 10, 6, 55, 44, 93]

for index in ageArr {
    print(index, terminator:" ")
}
