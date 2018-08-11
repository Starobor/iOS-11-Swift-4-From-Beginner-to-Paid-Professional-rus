/*
 * Task #3
 * - Create strings
 * - Create expression with type representation
 * - Work with cycle for like in lesson
 *
 */

import UIKit

let coursesSuck = true

let welcome = "Hello, world!"
var aboutCourses = String()
aboutCourses = "Very blah"

for char in aboutCourses {
    print(char)
}

aboutCourses.append("and dull")
aboutCourses.suffix(2)

if coursesSuck {
    print("Lern by documentation")
}else {
    print("Watch next lesson!")
}

aboutCourses = ""

aboutCourses.isEmpty ? print("I'm done") : print("WTF???")
