//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit

*/

// 1) Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.
func findTheMissingNumberFromAnArray(numberList:[Int], totalN: Int) -> Int {
    var totalSumOfAnArray = 0
    var totalSumOfNonMissingArray = 0
    
    for i in 1...totalN {
        totalSumOfNonMissingArray += i
    }
    for i in 1...numberList.count {
        totalSumOfAnArray += i
    }
    
    return totalSumOfNonMissingArray - totalSumOfAnArray
}

// 3)Given two lists, find the smallest value that exists in both lists.
// L1 = [1,2,5,9]
// L2 = [9, 20 , 5]
func smallestValueFromTwoArray(list1: [Int], list2: [Int]) -> Int {
    let sortedList1 = list1.sort({$0 < $1})
    let sortedList2 = list2.sort({$0 < $1})
    if sortedList1.first > sortedList2.first {
        return sortedList2.first!
    } else {
        return sortedList1.first!
    }
}

// 4) Check to see if an integer is a palindrome don’t use casting
func isIntegerPalindrome(number: Int) -> Bool {
    var digits = 1
    var tens = 10
    while (number / tens > 0) {
        digits += 1
        tens *= 10
    }
    
    var moduleOfTen = 10
    for i in 0...digits {
        var prevBackEndNumber : Int?
        var backEndNum = 0
        if (prevBackEndNumber != nil) {
            backEndNum = number % moduleOfTen
            backEndNum -= prevBackEndNumber!
        } else {
         backEndNum = number % moduleOfTen
        }
        
        
        var frontEndNum = 0
        var prevFrontEndNumber : Int?
        if (prevFrontEndNumber != nil){
            frontEndNum = number / Int(pow(Double(10), Double(digits - i)))
            frontEndNum -= prevFrontEndNumber!
        } else {
            frontEndNum = number / Int(pow(Double(10), Double(digits - i)))
        }
        
        if (frontEndNum != backEndNum){
            return false
        } else {
            moduleOfTen *= 10
            prevBackEndNumber = backEndNum
            prevFrontEndNumber = frontEndNum
        }
    }
    print(digits)
    return true
}
let num = 12321
isIntegerPalindrome(num)


