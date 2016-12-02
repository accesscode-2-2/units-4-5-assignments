////: Playground - noun: a place where people can play
//
import Cocoa
//
////1.
func fibonacci(n: Int) -> Int {
    // Some temporary variables.
    var a = 0
    var b = 1
    // Add up numbers to the desired iteration.
    for _ in 0..<n {
        let temp = a
        a = b
        b = temp + b
    }
    return a
}

for i in 0..<15 {
    // Call Fibonacci method.
    let result = fibonacci(i)
    print("Fibonacci \(i) = \(result)")
    
    func fib(n: Int) -> Int {
        print("X")
        if (n == 0 || n == 1) {
            return 1
        }
        return fib(n - 1) + fib(n - 2)
    }
}

// Apendix A
func fib(n: Int) -> Int {
    print("X")
    if (n == 0 || n == 1) {
        return 1
    }
    return fib(n - 1) + fib(n - 2)
}
(0...5).map { i in fib(i) }


//2.
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

func stepUp(_: Int) -> Int {
    let steps = 0
    if stepNum > 0 {
        stepNum += steps
        print("yay, made it up a stair")
    } else if stepNum == 0 {
        stepNum == 0
        print("try again")
        tryStep()
    } else {
        stepNum -= steps
        print("gotta make up that step")
        tryStep()
        tryStep()
    }
    return stepNum
}

print(stepUp(7))