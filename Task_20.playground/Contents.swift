import UIKit

extension String {
    
    subscript(range: Range<Int>) -> String{
        get {
            let start = index(startIndex, offsetBy: range.lowerBound)
            let end = index(startIndex, offsetBy: range.upperBound)
            return String(self[Range(start ..< end)])
        }
    }
    
    subscript(num: Int) -> Character{
        return self[index(startIndex, offsetBy: num)]
    }
    
}

extension Int {
    
    func count() -> Int {
        var num = self
        var count = (num == 0) ? 1 : 0
        while num != 0 {
            count += 1
            num /= 10
        }
        return count
    }
    
    func toSquared() -> Int {
        return self * self
    }
    
    func toCube() -> Int {
        return self * self * self
    }
    
    func exponentiation(power: Int) -> Int {
        var num = self
        for _ in 1..<power {
            num *= self
        }
        return num
    }
    
    func negativeOrPositive() -> String {
        if self < 0 {
            return "negative"
        } else {
            return "positive"
        }
    }
}

print(a.negativeOrPositive())
