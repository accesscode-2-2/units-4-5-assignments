import Foundation


/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/


/*
***********Question 1
Write an iterative (not recursive) fibonacci function 
that calculates the nth fibonacci number. 
*/

let fibSeq = [1, 1, 2, 3, 5, 8, 13, 21]
//            0  1  2  3  4  5  6

func fibIterative(n: Int) -> Int
{
    if n == 1 || n == 0 {
        
        return 1
    }
    
    var fibNumArr = [1,1]
    var tempSum = 0
    
    for i in 1...n-1 {
    
        tempSum = fibNumArr[i] + fibNumArr[i-1]
        fibNumArr.append(tempSum)
    }
    
    return tempSum
}

fibIterative(9)
fibIterative(1)


//Non-memoized fibREcursive
//func fib(n: Int) -> Int {
//    
//    if (n == 0 || n == 1) {
//        return 1
//    }
//    return fib(n - 1) + fib(n - 2)
//}
//
//fib(9)
//fib(1)

/*
How does its performance compare with the non-memoized 
recursive one (see Appendix A below), based on the number 
of iterations that Swift says it takes in the right margin?

    - Wow. The recursive function runs over 10 times the number of times the iterative function runs.
*/




/*
***********Question 2
The engineers have been hard at work on the clumsy robot project, 
and have released a new API with a new tryStep method (see Appendix B). 

Now it returns an Int, which is: 
-1 if the robot fell down a step, 
0 if the robot stayed on the same step, 
or 1 if the robot went to the next step. 

Write a new stepUp method using this new tryStep method that works the same as before.
*/

func tryStep() -> Int {
    
    let step = Int(arc4random_uniform(3))
    
    switch step {
        
    case 0 :
        print("Stepped Down")
        return -1
        
    case 1 :
        print("Stayed on the same step")
        return 0
        
    case 2 :
        print("Stepped up!")
        return 1
        
    default:
        
        return 0
        
    }
    
}

tryStep()

func stepUp(var stepCounter: Int = 0) {
    
    stepCounter += tryStep()
    print(stepCounter)
    if stepCounter == 1 {
        
        return
    }
    
    stepUp(stepCounter)
    
}

stepUp()


/*
***********Question 3
Using the code in Appendix C as a starting point, 
create a Swift command line project to find files on your computer by name. 

Your solution should use recursion. 
Your method should return “NOT FOUND” if it couldn’t find the file, 
otherwise it should return the full path to that file.
*/

//func findFile(name: String, atPath: String) -> String {
//    let fileManager = NSFileManager.defaultManager()
//    let contents =
//    try! fileManager.contentsOfDirectoryAtPath(atPath)
//    for fileOrDir in contents {
//        var isDir = ObjCBool(false);
//        let fullPath = atPath + "/" + fileOrDir
//        let exists = fileManager.fileExistsAtPath(fullPath, isDirectory: &isDir)
//        if exists && Bool(isDir) {
//            
//            print("DIR: " + fileOrDir + "Path: " + fullPath)
//            
//            let found = findFile(name, atPath: fullPath)
//            
//            if found != "NOT FOUND" {
//                
//                return found
//            }
//            
//            
//        } else if exists {
//            
//            if fileOrDir == name {
//                
//                return ("Found file: " + name + " At Path: " + fullPath)
//                
//            }else {
//                
//                print("FILE: " + fileOrDir)
//                
//            }
//            
//        } else {
//            print("NEITHER: " + fileOrDir)
//            
//        }
//    }
//    return "NOT FOUND"
//}
//
//print(findFile("PriceList.docx", atPath: "/Users/justinegartner/Documents"))
