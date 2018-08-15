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
    let max = (Int(num1.count)+Int(num2.count)+abs(Int(num1.count)-Int(num2.count)))/2
    let numArr1 = numArr(num: num1, max: max)
    let numArr2 = numArr(num: num2, max: max)
    let result = addArr(numArr1: numArr1.reversed(), numArr2: numArr2.reversed())
    return String(result.reversed())
}

func numArr(num: String, max: Int) -> [Int] {
    var numInArr = [Int]()
    
    for index in  num {
        numInArr.append(Int(String(index))!)
    }
    
    if num.count <= max {
        for _ in 0...max - num.count + 1{
            numInArr.insert(0, at: 0)
        }
    }
    
    print(numInArr)
    return numInArr
}

func addArr (numArr1: [Int], numArr2: [Int]) -> String {
    var numberArr1 = numArr1
    var numberArr2 = numArr2
    print(numArr1)
    print(numArr2)
    var result = String()
    var forSave = 0
    for index in 0 ..< numberArr1.count - 1 {
        var sum = 0
        
        
            let sumParied = getSumParied(num1: numberArr1[index], num2: numberArr2[index])
            sum = sumParied.0
            forSave = sumParied.1
        
        
        
        if ((numberArr1[index] % 2) == 1 || (numberArr1[index] % 2) == 1) {
            print("1")
        }
        
        print("\(numberArr1[index+1]) \(numberArr1[index+1] % 2) \(forSave)")
        
        if forSave != 0 && (numberArr1[index+1] % 2) == 0 {
            numberArr1[index+1] = numberArr1[index+1] ^ forSave
        }else if forSave != 0{
            numberArr1[index+1] = numberArr1[index+1] ^ forSave
            numberArr1[index+1] = numberArr1[index+1] ^ 2
        }
        
        result.append(String(sum))
        forSave = 0
    }
    return result
}

func getSumParied(num1: Int, num2: Int) -> (Int, Int){
    var sum = 0
    var forSave = 0
    
   
    if num1 == num2 {
        sum = num2 << 1
    } else if (num1 % 2) == 0 || (num2 % 2) == 0  {
        sum = num1 ^ num2
    } else if (num1 % 2) == 1 || (num2 % 2) == 1 {
        
    }

    if sum >= 10 {
        switch sum {
        case 10:
            sum = 0
        case 11:
            sum = 1
        case 12:
            sum = 2
        case 13:
            sum = 3
        case 14:
            sum = 4
        case 15:
            sum = 5
        case 16:
            sum = 6
        case 17:
            sum = 7
        case 18:
            sum = 8
        case 19:
            sum = 9
        default:
            print("somthing wrong")
        }
        forSave = 1
    }
    return (sum, forSave)
}

print(sumTwoNumbers(num1: "12", num2: "8"))





