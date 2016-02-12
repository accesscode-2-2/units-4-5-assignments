//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit

*/


//1 Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.


func missingNum (arr: [Int], n: Int) -> Int {
    
    var total = 0
    total = (n+1)*(n+2)/2
    for(var i = 0; i < n; i++) {
        total -= arr[i]
    }
    
    return total
}

var input1 = [1,2,4,5,6]
var input2: [Int] = Array(1...50)
input2.removeAtIndex(8)
input2.count

var miss = missingNum(input1, n: 5)
missingNum(input2, n: 49)


//2 Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not

var numbers = [1,2,2,4,6,54,7,9,1,4]
var numbers2 = [5, 3, 8, 11]

func duplicateElements(arr1: [Int]) -> Bool {
    
    let arr2 = Array(Set(arr1))
    
    if arr2.count < arr1.count {
        return true
    } else {
        return false
    }
}

duplicateElements(numbers)
duplicateElements(numbers2)


//3  Given two lists, find the smallest value that exists in
//   both lists.
//      L1 = [1,2,5,9]
//      L2 = [9, 20 , 5]

var list1 = [1,2,5,9]
var list2 = [9, 20 , 5]

list1.sort()
let smallestVal = list1[0]

list2.sort()
let list2SmallestVal = list2[0]

//4 Check to see if an integer is a palindrome don’t use casting

func isPalindrome (number: Int) -> Bool {
    var palindrome = number
    var reverse = 0
    
    while(palindrome != 0) {
        let remainder = palindrome % 10
        reverse = reverse * 10 + remainder
        palindrome = palindrome / 10
    }
    
    if (number == reverse) {
        return true
    }
    
    return false
}

isPalindrome(818)
isPalindrome(1005)
