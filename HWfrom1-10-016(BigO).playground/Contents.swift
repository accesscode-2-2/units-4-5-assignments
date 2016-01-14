//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth


1)a. (1 + 3 + 10) * 1000 + (1 + 3 + 10) * 2000 + 200 * (1000 * 2000)
     14,000ps + 28,000ps + 400000000ps = 400042000ps

  b. O(n^2)
  c. O(n^4)


2)a. O(n^3) + O(n^4) + O(n^2) = O(n^4)
  b. frobnicate(xs, n) = xs[n] + xs[n-1] + xs[n-2] + ... + xs[1] + 0, so for n we make n+1 calls to frobnicate so it's 0(n)

  c. O(n^2) + O(nlog n) + O(n) = O(n^2)
  d. O(log n)
3)
  a. Hash Table
  b. A Stack, Singly-Linked List, Doubly Linked List, or a Hash Table
  c. A Skip List, HashTable or BST

4)
    func factorial(num : Int) -> Int {

        if(num == 0 || num == 1)
        {
            return 1
        }
        return num * factorial(num - 1)
    }
    Time complexity O(n!)
5)

    func multiplication(num1 : Int, num2 : Int) -> Int {
        var product = 0
        for _ in 1...num2
        {
            product += num1
        }
        return product
    }

multiplication(8, num2: 5) = 40
multiplication(6, num2: 4) = 24   

Time Complexity O(num2) which is still constant so O(1)



6)

func russian_peasant_multiplication(var left_num : Int, var right_num : Int) -> Int {

var product = 0
if(left_num % 2 != 0)
{
product += right_num
}
while(left_num > 1)
{
left_num /= 2
right_num *= 2

if( left_num % 2 != 0)
{
product += right_num
}
}
return product
}

russian_peasant_multiplication(36, right_num: 12) = 432
russian_peasant_multiplication(17, right_num: 13) = 221
russian_peasant_multiplication(2, right_num: 3) = 6

Time Complexity : 0(1)

7)


*/

