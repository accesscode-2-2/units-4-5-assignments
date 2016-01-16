//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*

Question 1: https://www.hackerrank.com/challenges/minimum-draws

Copy and paste your code:
*/

//Maximum number of draws will always equal the number of pairs + 1.

func maxDraws(let n:Int) -> Int
{
    return n + 1
}

let numOfPairs = 3
maxDraws(numOfPairs)

/*
What is the big O runtime of your code?:

 0(1)


Question 2: https://www.hackerrank.com/challenges/handshake

Copy and paste your code:
*/

//Total number of Handshakes (Combinations)
// C(n,2)
// n! / 2! * (n-2)!

func factorial(var n: Int) -> Int
{
    var num = n - 1
    
    for _ in 1..<n {
        
        n *= num
        num--
        
    }
    
    return n
}

factorial(3)
factorial(5)


func handshakes(let n: Int) -> Int
{
    
    return factorial(n) / (factorial(2) * factorial(n - 2))
}

handshakes(3)
handshakes(5)


/*
What is the big O runtime of your code?:

0(n^2)


Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code:

What is the big O runtime of your code?:

*/

