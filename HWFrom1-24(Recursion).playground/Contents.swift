import Foundation

/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/


//Question 1

/*

Write an iterative (not recursive) fibonacci function that calculates the nth fibonacci number. How does its performance compare with the non-memorized recursive one (see Appendix A below), based on the number of iterations that Swift says it takes in the right margin?

*/

//Appendix A: Recursive Fibonacci from class (non-memoized)

func fib(n: Int) -> Int {
    print("X")
    if (n == 0 || n == 1) {
        return 1
    }
    return fib(n - 1) + fib(n - 2)
}

print(fib(18))

(0...5).map { i in fib(i) }

// iterative fibonacci function 

func fibonacciIterative(n: Int) -> Int {
    var a = 0
    var b = 1
    
    for _ in 0..<n {
        let temp = a
        a = b
        b = temp + b
    }
    return b
}

print(fibonacciIterative(18))


//Question 2

/*

The engineers have been hard at work on the clumsy robot project, and have released a new API with a new tryStep method (see Appendix B). Now it returns an Int, which is -1 if the robot fell down a step, 0 if the robot stayed on the same step, or 1 if the robot went to the next step. Write a new stepUp method using this new tryStep method that works the same as before.

*/

// Appendix B: New and improved clumsy robot

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

stepUp()

//func stepUp() {
//    tryStep() {
//        switch(stepCount) {
//        case -1: stepUp()
//            stepUp()
//        case 1: return
//        default: stepUp()
//        }
//    }
//}



//Question 3












