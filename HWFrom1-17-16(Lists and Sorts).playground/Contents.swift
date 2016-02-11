//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"

//Work on your solutions here.

//Link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth

//1) Write an iterative (not recursive) fibonacci function that calculates the nth fibonacci number. How does its performance compare with the non-memoized recursive one (see Appendix A below), based on the number of iterations that Swift says it takes in the right margin?

//recursive - NO LOOPS
func fib(n: Int) -> Int {
    print("X")
    if (n == 0 || n == 1) {
        return 1
    }
    return fib(n - 1) + fib(n - 2)
}

//iterative - W/ Loops

func fibIt(n:Int) -> Int{
    for fib in 1..<n{
        let sum = (n-1)+(n-2)
    }
    return sum
}

print(fibIt(4))

fibIt(4)
