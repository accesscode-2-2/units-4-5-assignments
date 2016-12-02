//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth


1) 
a. 424,009,011 Picoseconds // n x m.. 10 + 9(n) + 10(n) + 212(m)(n) + 1
b. O(n^2)
c. O(n^4)

2)

a. O(n^4)
b. O(n)
c. O(nlogn)
d. O(n)

3)
a. Tree
b. Stack
c. Tree
*/

// 4)
func factorial(n: Int) -> Int {
    
    guard n >= 1 else {
    return 1
}
    
    var product = 1
    for x in 0...n {
        product *= x
    }
    
    return product
}


// 5) O(n)
func multiplication(x: Int, y: Int) -> Int {
    
    guard x != 0 || y != 0 else {
        return 0
    }
    
    return x + multiplication(x, y: y-1)
    
}

// 6) O(n)

func russianPeasantMultiplication(firstNumber: Int, secondNumber: Int) -> Int{
    
    var increasingArray = [firstNumber]
    var decreasingArray = [secondNumber]
    
    while true {
        decreasingArray.append(decreasingArray.last! / 2)
        increasingArray.append(increasingArray.last! * 2)
    
        if decreasingArray.last! == 1 {
            break
        }
        
    }
    
    for var x = 0 ; x < decreasingArray.count; {

        if decreasingArray[x] % 2 == 0 {
            
            decreasingArray.removeAtIndex(x)
            increasingArray.removeAtIndex(x)
    
            continue
        }
        
        x++
    }
    
    var sumOfIncreasingArray = 0
    for i in increasingArray {
        sumOfIncreasingArray += i
    }
    
    return sumOfIncreasingArray
}


// 7) 










