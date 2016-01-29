//: Playground - noun: a place where people can play

import UIKit
import Foundation


/*
Write an iterative (not recursive) fibonacci function that calculates the nth fibonacci number. How does its performance compare with the non-memoized recursive one (see Appendix A below), based on the number of iterations that Swift says it takes in the right margin?

When n is 4, the iterative function, although running with O(n) complexity, is run 4 times while the recursive is run  9 times.
*/

//Appendix A: Recursive Fibonacci from class (non-memoized)
func fib(n: Int) -> Int {
    print("X")
    if (n == 0 || n == 1) {
        return 1
    }
    return fib(n - 1) + fib(n - 2)
}

fib(4)

// HW ANSWER

func fibIter(n: Int) -> Int {
    //0, 1, 1, 2, 3, 5, 8, 13, 21
    if n == 0{
        return 0;
    }
    
    //if the number isn't 0, proceed
    
    var x = 0, y = 1, z = 1;
    
    for _ in 0..<n {
        x = y;
        y = z;
        z = x + y;
    }
    return x;
}
(0...5).map{ i in fibIter(i) }




/*

The engineers have been hard at work on the clumsy robot project, and have released a new API with a new tryStep method (see Appendix B). Now it returns an Int, which is -1 if the robot fell down a step, 0 if the robot stayed on the same step, or 1 if the robot went to the next step. Write a new stepUp method using this new tryStep method that works the same as before.
*/

//Appendix B: New and improved clumsy robot


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

// HW ANSWER

func stepUp() {
    
    switch tryStep() {
    case 1:
        return
    case 0:
        stepUp()
    case -1:
        stepUp()
        stepUp()
    default:
        stepUp()
        
    }
}


/*

Using the code in Appendix C as a starting point, create a Swift command line project to find files on your computer by name. Your solution should use recursion. Your method should return “NOT FOUND” if it couldn’t find the file, otherwise it should return the full path to that file.

You can’t use a playground for this because they don’t have filesystem access for some reason. Instead, in XCode, go to File > New > Project, select “Application” under “OS X” in the sidebar, then select “Command Line Tool”; on the next screen, choose “Swift” as the language.

*/









