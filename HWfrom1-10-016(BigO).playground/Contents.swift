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
            10          3       3
    for (int i = 0; i < width; i++) {
            10          3       3
    for (int j = 0; j < height; j++) {
        1           200
    [image[i][j] makeMoreAwesome];
    }
    }
    return image;

((10 + 3 + 3) * 1000) * ((10 + 3 + 3 + 201) * 2000) = 16000 * 488000 = 7.8* 10^9

    What if it’s n by m?
    16n * 217m

b) O(n^2)

c) O(n^4)


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

6)Russian Peasant Multiplication 

Write each number at the head of a column.
Double the number in the first column, and halve the number in the second column.
If the number in the second column is odd, divide it by two and drop the remainder.
If the number in the second column is even, cross out that entire row.
Keep doubling, halving, and crossing out until the number in the second column is 1.
Add up the remaining numbers in the first column. The total is the product of your original numbers.
source: http://polynomialtimes.com/algorithms/decrease-and-conquer/russian-peasant-multiplication/
*/

func russain(n1: Int, n2: Int) -> Int{
    if n1 == 1 {
        return n2
    }
    
    if n1 % 2 == 1{
        return n2 + russain(n1 / 2, n2: 2 * n2)
    }
    
    return russain(n1 / 2, n2: 2 * n2)

}

russain(4, n2: 2)

/* O(log(n)

any time you divide by two its likely a log(n) algorithm

*/

/*

7)


*/


