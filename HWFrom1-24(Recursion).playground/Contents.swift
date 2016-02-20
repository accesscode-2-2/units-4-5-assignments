//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth
*/



//Question 1

//Appendix A: Recursive Fibonacci from class (non-memoized)
//func fib(n: Int) -> Int {
//    print("X")
//    if (n == 0 || n == 1) {
//        return 1
//    }
//    return fib(n - 1) + fib(n - 2)
//}
//fib(5)

//Iterative
func fib(n: Int) -> Int {
    var a = 1
    var b = 1
    for i in 0..<n {
        let
    }
    
    return fib(n - 1) + fib(n - 2)
}



//Question 2
var stepNum = 0
func tryStep() -> Bool {
    let success = Int(arc4random_uniform(2)) > 0
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




//Question 3
