/*
 * Task #10
 * - Create 3 func
 * 1. Empty func without parameters
 * 2. Empty func with parameters
 * 3. Some param and some return
 * - Create student arr
 * - Create name arr then sort and print
 * - Create func that return circle area
 */
import UIKit

func emptyFunc(){
    
}

func getParam (str: String){
    
}

func getAndReturn (num: Int) -> String{
    return "Your number is \(num)"
}

print(emptyFunc())
print(getParam(str: "echo"))
print(getAndReturn(num: 10))

var studentArr = [(name: String, profesion: String, point: Int)]()

func addStudent (name: String, profesion: String, point: Int){
    studentArr.append((name,profesion,point))
}

addStudent(name: "Bob", profesion: "Builder", point: 4)
addStudent(name: "Sam", profesion: "HR", point: 3)
addStudent(name: "Jo", profesion: "Java dev", point: 5)
addStudent(name: "Anna", profesion: "IOS dev", point: 4)
addStudent(name: "Kate", profesion: "Tester", point: 2)
addStudent(name: "Viliam", profesion: "Builder", point: 3)
addStudent(name: "Susen", profesion: "HR", point: 4)
addStudent(name: "Metiu", profesion: "Tester", point: 4)
addStudent(name: "Pitter", profesion: "C++ dev", point: 3)
addStudent(name: "Gary", profesion: "Builder", point: 5)

for (sName, sProfesion, sPoint) in studentArr {
    print("\(sName) - \(sProfesion) - \(sPoint)")
}

var fullNames = [String]()
func addFullName (firstName: String, lastName: String){
    fullNames.append("\(firstName) \(lastName)")
}

addFullName(firstName: "Bob", lastName: "Dilan")
addFullName(firstName: "Lara", lastName: "Croft")
addFullName(firstName: "Aaron", lastName: "Macdonald")

for name in fullNames.sorted(){
    print("\(name)")
}

func circleArea (radius: Double) -> Double {
    return Double.pi * (radius * radius)
}






