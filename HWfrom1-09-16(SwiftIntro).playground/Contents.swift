//: Playground - noun: a place where people can play

import UIKit



/*
Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit

Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.
*/

// 1) I really don't know how to do this one through code so I'm going to try and explain it through writing... Been at it for like 20 minutes and I don't even know where to start

// Getting help from http://stackoverflow.com/questions/3492302/easy-interview-question-got-harder-given-numbers-1-100-find-the-missing-numbe

let sum = (n + 1)(n / 2)
// then have a for loop that goes through the total sum
var totalSum = 0
for i in numbers {
    totalSum += i
}
return sum - totalSum // because the missing number will always be the difference of the sum and totalSum?

// copy/paste from my other playground because we did these in class

// 2)Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not

func checkForDuplicates() {
    
    for var i = 0; i < numbers.count; i++ {
        for var n = 0; n < numbers.count; n++ {
            if n != i {
                if numbers[i] == numbers[n] {
                    return false
                }
            }
        }
    }
    return true
}


/* Given two lists, find the smallest value that exists in both lists.
L1 = [1,2,5,9]
L2 = [9, 20 , 5]
*/


// I doubt that this is even remotely correct but I think I understand it. You need to compare both arrays and have a for loop for each, going through each number and finding the smallest value. Once it does, the loop stops and it should return true(?) Not sure what it should be returning.
let arr1 = [1,2,5,9]
let arr2 = [9,20,5]

func findSmallestValue() {
    for var i = 0; i < arr1.count; i++ {
        for var n = 0; n < arr2.count; n++ {
            if i && n <= 5 {
                return true
            }
        }
    }
}

// Check to see if an integer is a palindrome don’t use casting
// Still don't understand what casting is... this might help https://howtoprogramwithjava.com/java-cast/

func isPalindrome(var number : Int) -> Bool {
let originalNumber = number
    var finalNum = 0
    while (number >  0) {
        finalNum *= 10
        finalNum += number % 10
        number /= 10
    }
return finalNum == number
}
