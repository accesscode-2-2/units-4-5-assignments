/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth

*/

//Question 1

//Write an iterative (not recursive) fibonacci function that calculates the nth fibonacci number. How does its performance compare with the non-memoized recursive one (see Appendix A below), based on the number of iterations that Swift says it takes in the right margin?
//Appendix A: Recursive Fibonacci from class (non-memoized)
//func fib(n: Int) -> Int {
//    print("X")
//    if (n == 0 || n == 1) {
//        return 1
//    }
//    return fib(n - 1) + fib(n - 2)
//}

//memorized fib
var cache = [Int: Int]()
cache[0] = 1
cache[1] = 1

func fibm(n: Int) -> Int {
    print("X")
    if cache[n] != nil {
        return cache[n]!
    }
    let value = fibm(n - 1) + fibm(n - 2)
    cache[n] = value
    return value
}

fibm(15)

//non-memorized fib
func fib(n: Int) -> Int {
    print("X")
    if (n == 0 || n == 1) {
        return 1
    }
    return fib(n - 1) + fib(n - 2)
}

fib(15)

//interative fib

func fibonacci(n: Int) -> Int {
// Some temporary variables.
var a = 1
var b = 1
// Add up numbers to the desired iteration.
for _ in 0..<n {
    let temp = a
    a = b
    b = temp + b
}
return a
}

fibonacci(15)

// Loop over values 0 through 14 inclusive.
//for i in 0..<15 {
//    // Call Fibonacci method.
//    let result = fibonacci(i)
//    print("Fibonacci \(i) = \(result)")
//}




//Question 2

//The engineers have been hard at work on the clumsy robot project, and have released a new API with a new tryStep method (see Appendix B). Now it returns an Int, which is -1 if the robot fell down a step, 0 if the robot stayed on the same step, or 1 if the robot went to the next step. Write a new stepUp method using this new tryStep method that works the same as before.

//Appendix B: New and improved clumsy robot
import Foundation

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


/*
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
​
func stepUp() {
    if tryStep() {
        // We’re done!
        return
    }
    // Now we’re two steps below where we want to be :-(
    stepUp()
    stepUp()
}
*/



//Question 3
//Using the code in Appendix C as a starting point, create a Swift command line project to find files on your computer by name. Your solution should use recursion. Your method should return “NOT FOUND” if it couldn’t find the file, otherwise it should return the full path to that file.

//You can’t use a playground for this because they don’t have filesystem access for some reason. Instead, in XCode, go to File > New > Project, select “Application” under “OS X” in the sidebar, then select “Command Line Tool”; on the next screen, choose “Swift” as the language.

//Appendix C: File searching
import Foundation

func findFile(name: String, atPath: String) -> String {
    let fileManager = NSFileManager.defaultManager()
    let contents =
    try! fileManager.contentsOfDirectoryAtPath(atPath)
    for fileOrDir in contents {
        var isDir = ObjCBool(false);
        let fullPath = atPath + "/" + fileOrDir
        let exists = fileManager.fileExistsAtPath(fullPath, isDirectory: &isDir)
        if exists && Bool(isDir) {
            // YOUR CODE HERE
            print("DIR: " + fileOrDir)
        } else if exists {
            // YOUR CODE HERE
            print("FILE: " + fileOrDir)
        } else {
            print("NEITHER: " + fileOrDir)
        }
    }
    return "NOT FOUND"
}

//print(findFile("awesome-idea.txt", atPath: "/Users/calebegg/Documents"))


