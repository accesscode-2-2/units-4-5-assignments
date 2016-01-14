//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth


1)  Memory access takes 1 picosecond
    Math operations take 3 picoseconds
    Storing data in memory takes 10 picoseconds
    Friends algo takes 200 picoseconds to run. 
    
How long would my computer take to execute the following code if the input image is 1000px wide by 2000px tall?
    (10 + 3 + 3) * 1000
    (10 + 3 + 3) * 2000
    2 + 200
    1
    = 16000+ 32000 + 202 + 1 = 48,203

    What if it’s n by m?
    15n + 15m + 203

b) O(n)

c) I'm not sure, O(n^2)


2)
    a) O(n^4)
    b) O(n)
    c) O(n^2)
    d) O(n)
3)
    a) Tree

    b) Hash Table

    c) Tree


4)*/

func factorial(n : Int) -> Int {
    
    if n <= 1 {
        return 1
    }
    
    return factorial(n-1)*n
}

/* time complexity: O(n) */


/*

5) */
func product(number: Int, times: Int) -> Int {
    
    var totProduct = 0
    
    for _ in 1...times{
        totProduct = totProduct + number
    }
    
    return totProduct
}
product(2, times: 3)

/* complexity is O(n)*/

/*

6)

7)


*/


