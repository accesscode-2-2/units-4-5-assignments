/*
Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth
*/


import Foundation

//Question 1

func fib(n: Int) -> Int {
    
    var a = 1
    var b = 1
    
    for _ in 0..<n {
        let t = a
        a = b
        b = t + b
    }
    return b
}

//Question 2

var stepNum = 0
func tryStep() -> Int {
    let stepCount = Int(arc4random_uniform(3)) - 1
    stepNum += stepCount;
    switch(stepCount) {
    case -1: print("Ouch \(stepNum)")
    case 1: print("Yay  \(stepNum)")
    default: print("Beep \(stepNum)")
    }
    return stepCount
}

func stepUp() {
    
    switch tryStep() {
    case 1:
        return
    case -1:
        stepUp()
        stepUp()
    default:
        stepUp()
    }
}

//Question 3
