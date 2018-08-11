/*
 * Task #4
 * - Create an array of numbers then calculate all the numbers in the array
 * - Create an array of numbers of the month
 *
 */

import UIKit

func countMoney(moneyArr:[Double]) -> Double {
    var count = 0.0
    for banknote in moneyArr {
        count+=banknote
    }
    return count
}

var money = [10, 100, 20, 5, 2, 1, 200, 500, 0.5, 0.5, 0.25, 0.5, 0.1, 100, 0.25]
var moneySum = countMoney(moneyArr:money)

var daysInMarch = [Int]()

for day in 1...31 {
    daysInMarch.append(day)
}

