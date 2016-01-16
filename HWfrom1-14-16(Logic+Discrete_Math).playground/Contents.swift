//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"


/*
 
Question 1: https://www.hackerrank.com/challenges/minimum-draws

Copy and paste your code:
*/
    func matchingSocks(n: Int) {
        var nextLine = 0
        
        for _ in 0..<n {
            nextLine = Int(readLine(stripNewline: true)!)!
            print((nextLine + 1))
        }
    }

/*
What is the big O runtime of your code?:  

            O(n)

Question 2: https://www.hackerrank.com/challenges/handshake

Copy and paste your code: */

    func handshakes(n: Int)-> Int{
        return (n-1)*(n)/2
    }

    handshakes(4)

/*
What is the big O runtime of your code?: 
            
            O(1)


Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code:  */

    func travelling (n : [Int]) -> Int {
         var total = 0
    
            for f in n {
                 total = (total * f)
            }
        return total
    }


// What is the big O runtime of your code?:

       // O(n)
