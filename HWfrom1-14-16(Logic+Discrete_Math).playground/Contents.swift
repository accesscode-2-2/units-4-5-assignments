//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*

Question 1: https://www.hackerrank.com/challenges/minimum-draws

in Python:

import sys

line = 1
for lines in sys.stdin:
    if line == 1:
        line += 1
        continue
    line += 1
    print(int(lines) +1)
constant time, after all we are only reading the int value of the line, the formula is number of pairs + 1 to determine worst-case for pairs of socks

I did it in Python because I can't figure out how to read newlines in Swift, even with your example Ben


Copy and paste your code:

What is the big O runtime of your code?:

Question 2: https://www.hackerrank.com/challenges/handshake


Copy and paste your code:

*/


func factorial(num: Int) -> Int {
    
    
   var product = 1
    for number in 1...num {
        product *= number
    }
    
    return product
}

func combination(n: Int, r: Int) -> Int {
    
    
    return factorial(n) / (factorial(r) * factorial(n-r))
    
    
}

print(combination(5, r: 2))

//it's a combination algorithm, only two people can shake hands at a time so n will be the number of people, and r will be 2 because two handshakers.


/*

What is the big O runtime of your code?: IIRC my solution will be O(n)

Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code:

//okay I didn't understand the format of this AT ALL, that site is barely readable, but you just multiply all the numbers of routes together

What is the big O runtime of your code?: 

*/

