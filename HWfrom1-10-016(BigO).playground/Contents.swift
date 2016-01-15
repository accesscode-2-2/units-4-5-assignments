//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth


1a)
How long would my computer take to execute the following code if the input image is 1000px wide by 2000px tall? What if it’s n by m?

    1000px by 2000px = 3 + 15 + 15 + 202 = 237 = O(1) (Right? Because the algorithm doesn’t depend on the input)

    n by m = 3 + 15n + 15n^2 + 202n^2 = 217n^2 => O(n^2 x m)


1b)
What is the time complexity of this method, expressed in big O notation? Assume the image is square, and both dimensions are ‘n’.

    O(n^3)
    (Because n by m = O(n^2 x m) so n by n would be O(n^2 x n) = O(n^3), yes?)


1c)
My friend sends me an improved version of his algorithm, makeEvenMoreAwesome, that takes into account the pixels around the image. He says it’s O(n2) in the amount of pixels in the image. What is the new time complexity of the method? 
    
    It stays the same.  O(n^2 x m)


2a)
If foo(xs) is a function with time complexity n (where n is the size of the input array), and bar(xs) is a function with time complexity n2, what is the time complexity of each of the following snippets of code or algorithms?

    n + n^2 + n^3 + n + n^2 + n^4 + n + n^2 = n^4  =>>> O(n^4)


2b)
    O(n)

    Tip: Write down a table with n from 0 to 5 and trace through to find out how many times frobnicate is called with each value of n. 
    (Not really sure how to do this)


2c)
An algorithm that takes as its input a list of friends of length n, filters out duplicates using a method similar to our hasDuplicates method, sorts the list using merge sort (see bigocheatsheet.com), then prints each item to the screen.

    If hasDuplicates = O(n^2)
    And if mergeSort = O(n log(n))
    Then… 
    I’m not quite sure how to add them together...


2d)
An algorithm that searches the now-sorted list of friends for a specific friend (not including the time it takes to sort).  
    
    O(n)


3a)
    Array


3b)
    Stack or List


3c)
    Hash Table


4)
Write an algorithm using one of the methods from exercise 1 (your choice) to calculate the factorial of a number n. What is the time complexity of your method in terms of the input value?

    For any number “n”, multiply all numbers 1 through n.  The product is the factorial of n.
    Time complexity = O(n)

5)
Write an Objective C or Swift function to multiply two numbers without using the * operator. Use the grade school method of multiplying by doing repeated addition. For instance, 5 * 8 = 5 + 5 + 5 + 5 + 5 + 5 + 5 + 5 = 40. Find the big O of your function in terms of n and m (the two operands).
*/
func multiplyByAddition(let numA: Int, let numB: Int) -> Int{
    
    var sum = 0
    
    for _ in 0...numB {
        
        sum += numA
    }
    
    return sum
}
/*




6)
Look up Russian Peasant Multiplication. It’s a faster way to multiply numbers, especially on a binary computer (like yours!). Implement a new multiplication function using this technique and find the big O of your method.


7)
Using the technique from exercise 4, profile the built in sorting method in objective C (use an NSMutableArray and google how to sort an array of numbers in objective C).



Here's a link to my notes:
https://docs.google.com/document/d/1LkEgzBhDxOQqecoH4CyhOqCKsCn6XpPyO7e47a8hnik/edit?usp=sharing

*/

