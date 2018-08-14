/*
 * Time of algorithm
 */

import UIKit


func printFuncTime1(function:()->()) {
    let startTime = CFAbsoluteTimeGetCurrent()
    function()
    let endTime = CFAbsoluteTimeGetCurrent() - startTime
    print("Time -  \(endTime) seconds")
}

func printFuncTime2(function:()->()) {
    let startTime = Double(Date().timeIntervalSince1970)
    function()
    let endTime = Double(Date().timeIntervalSince1970) - startTime
    print("Time -  \(endTime) seconds")
}

func algorithm(){
    for _ in 0...1000000{
        
    }
}

printFuncTime1(function: algorithm)
printFuncTime2(function: algorithm)
