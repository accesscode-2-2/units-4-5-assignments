//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//https://docs.google.com/document/d/1KfnTOtPnBrYPFhBRAQPZBXor_mKDQvuJp4zwZbtHkRs/edit#heading=h.16sfqfmanxte
/*
//Caleb's Homework
//1
Write an iterative (not recursive) fibonacci function that calculates the nth fibonacci number.


func fibnoacci(n: Int) -> Int {
    var result = [1,1]
    if n < 2 {
        return n
    }
    for i in 2...n {
        result.insert(result[i-1] + result[i-2], atIndex: i)
    }
    return result[n]
}

The iterative version is much better than the non-memoized recursive function. For example, calculating fib(10) takes 88 calls to the recursive case where as it takes only 9 calls to the iterative segment of the function. Therefore, the iterative function is much more efficient


//2
The engineers have been hard at work on the clumsy robot project, and have released a new API with a new tryStep method (see Appendix B). Now it returns an Int, which is -1 if the robot fell down a step, 0 if the robot stayed on the same step, or 1 if the robot went to the next step. Write a new stepUp method using this new tryStep method that works the same as before.

func stepUp(){
if tryStep() == 1 {
return
}
if tryStep() == -1 {
stepUp()
stepUp()
}
else{
stepUp()
}
}


//3


*/