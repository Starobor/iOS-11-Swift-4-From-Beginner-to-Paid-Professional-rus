import UIKit

/*
 * Task #2
 * - Create your data types
 * - Create an expression with a type representation+
 * - Try math operations
 */

typealias Year = Int
typealias Name = String
typealias Symbol = Character

let thisYear: Year = 2018

let authorName: Name = "Igor"

func trans (numSymbol:Int) -> Symbol {
    return Symbol(UnicodeScalar(numSymbol)!)
}

let char0: Symbol = trans(numSymbol: 75)
let char1: Symbol = trans(numSymbol: 72)
let char2: Symbol = trans(numSymbol: 69)
let char3: Symbol = trans(numSymbol: 82)
let char4: Symbol = trans(numSymbol: 78)
let char5: Symbol = trans(numSymbol: 73)
let char6: Symbol = trans(numSymbol: 65)

let aboutCourses = "\(char0)\(char1)\(char2)\(char3)\(char4)\(char5)\(char6)"

let add = 15 + 10 + 1.5 + 0.18 + 180_000
let subtraction:Float = 10 - 0.41 - 104_000 + 100_000 + 98_000
let multiplication:Int = 3 * 10 * 15 * 5
let division: Double = 1845/54

let math = ((180/3)*10) - (140+160)
