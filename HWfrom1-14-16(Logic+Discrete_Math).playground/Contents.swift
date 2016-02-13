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



//Second solution
//Break down the  C(n,2) formula
//so that factorials are not necessary

func handshakes2(let n: Int) -> Int
{
    
    return n * (n-1) / 2
}

handshakes2(3)
handshakes2(5)


/*
What is the big O runtime of your code?:
    
    First solution
    0(n^2)

    Second solution
    O(n^2)


Question 3: https://www.hackerrank.com/challenges/connecting-towns

For x number of towns there are an array of [a, b, c, ...] numbers of routes between each pair of towns.
We are given x and [a, b, c, ...]
You can find the number of routes by multiplying each number of routes together

Copy and paste your code:
*/

func totalRoutes(let routes: [Int]) -> Int
{
    var productOfRoutes = 1
    
    for i in 0..<routes.count {
        
        productOfRoutes *= routes[i]
    }
    
    return productOfRoutes
}


let routes = [2, 1, 2, 3]
totalRoutes(routes)

/*
What is the big O runtime of your code?:

O(n)

*/

