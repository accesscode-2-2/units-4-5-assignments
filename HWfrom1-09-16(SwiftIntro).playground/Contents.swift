//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit

*/

//1) Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.

func findMissingNumber(input: Int, list: [Int]) -> Int {
    
    var sumArr = 0
    var sumList = 0
    
    for i in 1...input {
        
        sumArr += i
    }
    
    for i in list {
        
        sumList += i
    }
    
    return sumArr - sumList
    
}

//2) Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not

func isDuplicate(numArray: [Int]) -> Bool {
    let set = Set(numArray)
    
    if set.count == numArray.count {
        return false
    }
    return true
}
    
let arrTest = [2, 3, 4, 5, 6, 7]
isDuplicate(arrTest)


//3) Given two lists, find the smallest value that exists in both lists.
//L1 = [1,2,5,9]
//L2 = [9, 20 , 5]
var firstList = [1, 2, 5, 9]
var secondList = [9, 20, 5]

func smallestValue(theFirstList: [Int], theSecondList: [Int]) -> Int? {
    let list1 = Set(theFirstList)
    let list2 = Set(theSecondList)
    
    return list1.intersect(list2).minElement()
    
}

smallestValue(firstList, theSecondList: secondList)


//4) Check to see if an integer is a palindrome don’t use casting

func Palindrome(var num: Int) -> Bool {
    let originalNum = num
    var finalNum = 0
    while(num > 0) {
        finalNum *= 10
        finalNum += num % 10
        num /= 10
    }
    return finalNum == originalNum
}
