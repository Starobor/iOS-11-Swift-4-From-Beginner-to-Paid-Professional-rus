/*
 * Task #8
 * - Create cycle in cycle on 200 iteration first, then secod break on 15
 * - Create if and switch construction for age
 * - Create more cycle for in
 * - Create if and switch construction for point
 * - Create arr then sorted and print
 */
import UIKit

for _ in 1...200 {
    for j in 1...200{
        if j == 15 {
            break
        }
    }
    break
}

var age = 15
var point = 10

if age >= 2 && age <= 6{
    print("go to kindergarten")
}else if age >= 7 && age <= 16 {
    print("go to scool")
}else if age >= 17 && age <= 25 {
    print("go to university")
}else if age >= 26 && age <= 65 {
    print("go to work")
}else if age >= 66 {
    print("go on retire")
}else {
    print("no way")
}


switch age {
case 2...6:
    print("go to kindergarten")
case 7...16:
    print("go to scool")
case 17...25:
    print("go to university")
case 26...65:
    print("go to work")
case 65...:
    print("go on retire")
default:
    print("no way")
}

for _ in 1...10{
    print("hello")
}

for i in "hello"{
    print(i)
}

for i in 0..."hello".count{
    print(i)
}

for index in [0,5,4,8,9]{
    print(index)
}

if point >= 0 && point <= 2{
    print("badly")
}else if point >= 3 && point <= 5 {
    print("medium")
}else if point >= 6 && point <= 8 {
    print("good")
}else if point >= 9 && point <= 11 {
    print("very good")
}else if point >= 12 {
     print("so nice")
}else {
    print("impossible")
}


switch point {
case 0...2:
    print("badly")
case 3...5:
    print("medium")
case 6...8:
    print("good")
case 9...11:
    print("very good")
case 12...:
    print("so nice")
default:
    print("impossible")
}


var names = ["Bob", "Sam", "Rodger", "Dilan", "Leo", "Nensi", "Anet", "Darla", "Dru", "Viliam", "Amonet"]

for name in names.sorted(){
    print(name)
}
