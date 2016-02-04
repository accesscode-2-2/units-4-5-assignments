// Exercises from: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#

import UIKit
import Foundation

/* 1) Write an iterative (not recursive) fibonacci function that calculates the nth fibonacci number. How does its performance compare with the non-memoized recursive one (see Appendix A below), based on the number of iterations that Swift says it takes in the right margin?

Note: In the Fibonacci sequence, each number is the sum of the two previous numbers. 
ie: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34] */

//Appendix A: Recursive Fibonacci from class (non-memoized)
func fib1(n: Int) -> Int {
    if (n == 0 || n == 1) {
        return 1
    }
    return fib1(n - 1) + fib1(n - 2)
}
print(fib1(10))
(0...5).map { i in fib1(i) } // create map

// Answer: this non recursive method is waaay faster.

var fibNo = 1
var index = 0

func fib2(numbers: Int) -> Int {

for number in 1...numbers { // loop through numbers 1...10
    print("index \(number): \(fibNo)")
    let temp = fibNo + index
    index = fibNo
    fibNo = temp
    }
return fibNo
}



print(fib2(10)) // Note: this is actually returning the 11th fib no because the function is starting with a 0 indexed number

/* 2) The engineers have been hard at work on the clumsy robot project, and have released a new API with a new tryStep method (see Appendix B). Now it returns an Int, which is -1 if the robot fell down a step, 0 if the robot stayed on the same step, or 1 if the robot went to the next step. Write a new stepUp method using this new tryStep method that works the same as before. */

// Original Program: 
/*
var stepNum = 0
func tryStep() -> Bool {
    let success = Int(arc4random_uniform(2)) > 0 // generate rando number
    if (success) {
        stepNum++
        print("Yay! \(stepNum)")
    } else {
        stepNum--;
        print("Ow!  \(stepNum)")
    }
    return success
}

func stepUp() {
    if tryStep() {
        // We’re done!
        return
    }
    // Now we’re two steps below where we want to be :-(
    stepUp()
    stepUp()
}
print(stepUp())
*/

// Appendix B:
var steppNum = 0

func tryStepp() -> Int {
    let stepCount = Int(arc4random_uniform(3)) - 1 // generate rando number
    steppNum += stepCount;
    
    switch(stepCount) {
    case -1: print("Ouch \(steppNum)")
    case 1: print("Yay  \(steppNum)")
    default: print("Beep \(steppNum)")
    }
    return stepCount
}

//// My code:
//func steppUp(var stepsTaken: Int = 0) {
//    stepsTaken += tryStepp()
//    if stepsTaken == 1 {
//        // we're done!
//        return
//    }
//    steppUp(stepsTaken)
//}
//steppUp()

// Cameron's Code:
func stepUp() {
    switch tryStepp() {
    case 1:
        return
    case -1:
        stepUp()
        stepUp()
    default:
        stepUp()
    }
}
stepUp()







































