/*
 * #3
 * How much time has passed since the entered date
 *
 * #4
 * Sum of numbers without arithmetic operation
 *
 */

import UIKit

// #3
class TimeToNow {
    
    let year, month, day: String
    let dateNow = Int(Date().timeIntervalSince1970)
    let date: Int
    
    init(year: String, month: String, day: String) {
        self.year = year
        self.month = month
        self.day = day
        date = Int(ISO8601DateFormatter().date(from: "\(self.year)-\(self.month)-\(self.day)T00:00:00Z")!.timeIntervalSince1970)
    }
    
    func getSeconds() -> Int {
        return dateNow - date
    }
    
    func getDays() -> Int {
        let secInDay = 86_400
        return (dateNow - date)/secInDay
    }
    
    func getMonths() -> Int {
        let secInMonth = 2_592_000
        return (dateNow - date)/secInMonth
    }
    
    func getYears() -> Int {
        let secInYear = 31_536_000
        return (dateNow - date)/secInYear
    }
}

print(TimeToNow(year: "1985", month: "05", day: "05").getYears())

// #4
func sumTwoNumbers (num1: String, num2: String) -> String {
    let max = getMax(max1: num1.count, max2: num2.count)
    let numArr1 = numArr(num: num1, max: max)
    let numArr2 = numArr(num: num2, max: max)
    let result = addArr(numArr1: numArr1.reversed(), numArr2: numArr2.reversed())
    return result
}

func getMax (max1: Int, max2: Int) -> Int{
    if max1 > max2 {
        return max1
    } else {
        return max2
    }
}

func numArr(num: String, max: Int) -> [Int] {
    var numInArr = [Int]()
    
    for index in  num {
        numInArr.append(Int(String(index))!)
    }
    
    if num.count <= max {
        for _ in 0...max - num.count + 1 {
            numInArr.insert(0, at: 0)
        }
    }
    return numInArr
}

func addArr (numArr1: [Int], numArr2: [Int]) -> String {
    var numberArr1 = numArr1
    var numberArr2 = numArr2
    var result = String()
    var forSave = 0
    for index in 0 ..< numberArr1.count - 1 {
        var sum = 0
        
        
        let sumParied = getSumParied(num1: numberArr1[index], num2: numberArr2[index])
        sum = sumParied.0
        forSave = sumParied.1
        
        if forSave != 0 && (numberArr1[index+1] % 2) == 0 {
            numberArr1[index+1] = numberArr1[index+1] ^ forSave
        }else if forSave != 0{
            numberArr1[index+1] = numberArr1[index+1] ^ forSave
            numberArr1[index+1] = numberArr1[index+1] ^ 2
        }
        
        result.append(String(sum))
        forSave = 0
    }
    result = String(result.reversed())
    for index in result {
        if index == "0" {
            result.removeFirst()
        } else {
            break
        }
    }
    return result
}

func getSumParied(num1: Int, num2: Int) -> (Int, Int){
    var sum = 0
    var forSave = 0
    
    switch num1 {
    case 0:
        sum = num2
    case 1:
        switch num2 {
        case 0:
            sum = 1
        case 1:
            sum = 2
        case 2:
            sum = 3
        case 3:
            sum = 4
        case 4:
            sum = 5
        case 5:
            sum = 6
        case 6:
            sum = 7
        case 7:
            sum = 8
        case 8:
            sum = 9
        case 9:
            sum = 0
            forSave = 1
        default:
            print("somthing wrong")
        }
    case 2:
        switch num2 {
        case 0:
            sum = 2
        case 1:
            sum = 3
        case 2:
            sum = 4
        case 3:
            sum = 5
        case 4:
            sum = 6
        case 5:
            sum = 7
        case 6:
            sum = 8
        case 7:
            sum = 9
        case 8:
            sum = 0
            forSave = 1
        case 9:
            sum = 1
            forSave = 1
        default:
            print("somthing wrong")
        }
    case 3:
        switch num2 {
        case 0:
            sum = 3
        case 1:
            sum = 4
        case 2:
            sum = 5
        case 3:
            sum = 6
        case 4:
            sum = 7
        case 5:
            sum = 8
        case 6:
            sum = 9
        case 7:
            sum = 0
            forSave = 1
        case 8:
            sum = 1
            forSave = 1
        case 9:
            sum = 2
            forSave = 1
        default:
            print("somthing wrong")
        }
    case 4:
        switch num2 {
        case 0:
            sum = 4
        case 1:
            sum = 5
        case 2:
            sum = 6
        case 3:
            sum = 7
        case 4:
            sum = 8
        case 5:
            sum = 9
        case 6:
            sum = 0
            forSave = 1
        case 7:
            sum = 1
            forSave = 1
        case 8:
            sum = 2
            forSave = 1
        case 9:
            sum = 3
            forSave = 1
        default:
            print("somthing wrong")
        }
    case 5:
        switch num2 {
        case 0:
            sum = 5
        case 1:
            sum = 6
        case 2:
            sum = 7
        case 3:
            sum = 8
        case 4:
            sum = 9
        case 5:
            sum = 0
            forSave = 1
        case 6:
            sum = 1
            forSave = 1
        case 7:
            sum = 2
            forSave = 1
        case 8:
            sum = 3
            forSave = 1
        case 9:
            sum = 4
            forSave = 1
        default:
            print("somthing wrong")
        }
    case 6:
        switch num2 {
        case 0:
            sum = 6
        case 1:
            sum = 7
        case 2:
            sum = 8
        case 3:
            sum = 9
        case 4:
            sum = 0
            forSave = 1
        case 5:
            sum = 1
            forSave = 1
        case 6:
            sum = 2
            forSave = 1
        case 7:
            sum = 3
            forSave = 1
        case 8:
            sum = 4
            forSave = 1
        case 9:
            sum = 5
            forSave = 1
        default:
            print("somthing wrong")
        }
    case 7:
        switch num2 {
        case 0:
            sum = 7
        case 1:
            sum = 8
        case 2:
            sum = 9
        case 3:
            sum = 0
            forSave = 1
        case 4:
            sum = 1
            forSave = 1
        case 5:
            sum = 2
            forSave = 1
        case 6:
            sum = 3
            forSave = 1
        case 7:
            sum = 4
            forSave = 1
        case 8:
            sum = 5
            forSave = 1
        case 9:
            sum = 6
            forSave = 1
        default:
            print("somthing wrong")
        }
    case 8:
        switch num2 {
        case 0:
            sum = 8
        case 1:
            sum = 9
        case 2:
            sum = 0
            forSave = 1
        case 3:
            sum = 1
            forSave = 1
        case 4:
            sum = 2
            forSave = 1
        case 5:
            sum = 3
            forSave = 1
        case 6:
            sum = 4
            forSave = 1
        case 7:
            sum = 5
            forSave = 1
        case 8:
            sum = 6
            forSave = 1
        case 9:
            sum = 7
            forSave = 1
        default:
            print("somthing wrong")
        }
    case 9:
        switch num2 {
        case 0:
            sum = 9
        case 1:
            sum = 0
            forSave = 1
        case 2:
            sum = 1
            forSave = 1
        case 3:
            sum = 2
            forSave = 1
        case 4:
            sum = 3
            forSave = 1
        case 5:
            sum = 4
            forSave = 1
        case 6:
            sum = 5
            forSave = 1
        case 7:
            sum = 6
            forSave = 1
        case 8:
            sum = 7
            forSave = 1
        case 9:
            sum = 8
            forSave = 1
        default:
            print("somthing wrong")
        }
    case 10:
        switch num2 {
        case 0:
            sum = 0
            forSave = 1
        case 1:
            sum = 1
            forSave = 1
        case 2:
            sum = 2
            forSave = 1
        case 3:
            sum = 3
            forSave = 1
        case 4:
            sum = 4
            forSave = 1
        case 5:
            sum = 5
            forSave = 1
        case 6:
            sum = 6
            forSave = 1
        case 7:
            sum = 7
            forSave = 1
        case 8:
            sum = 8
            forSave = 1
        case 9:
            sum = 9
            forSave = 1
        default:
            print("somthing wrong")
        }
    default:
        print("somthing wrong")
    }
    return (sum, forSave)
}

print(sumTwoNumbers(num1: "1070", num2: "1000"))


