//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.
https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit
*/


// * VERY EXCITING DISCOVERY *
// Here are some other helpful functions that can be performed on two sets:
let array1 = ["a", "b", "c"]
let array2 = ["a", "b", "d"]

let set1 = Set(array1) // create set
let set2 = Set(array2)

set1.union(set2)        // {"a", "b", "c", "d"}
set1.intersect(set2)    // {"a", "b"}
set1.subtract(set2)     // {"c"}
set1.exclusiveOr(set2)  // {"c", "d"}



// 1) Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.
func findMissingValue(list1: [Int], list2: [Int]) -> Int? {
    let set1 = Set(list1) // create set, remove duplicates
    let set2 = Set(list2)
    let matches = set1.exclusiveOr(set2) // gather items that aren't in both arrays
    return matches.minElement() //return the smallest one
}
findMissingValue([1, 2, 4, 5, 6, 7, ], list2:  [1, 2, 3, 4, 5, 6, 7])



// 2) Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not.
func hasDuplicates(arr: [Int]) -> Bool {
    
    let noDoublesSet = Set(arr) // convert array into a set (this removes duplicates)
    if noDoublesSet.count != arr.count {
        return true
    }
    return false
}
hasDuplicates([5, 3, 2, 1, 1]) // test it!



// 3) Given two lists, find the smallest value that exists in both lists.
// create two sets and intersect them to get common elements.
func smallestCommonNum(list1: [Int], list2: [Int]) -> Int? {
    let set1 = Set(list1) // create set, remove duplicates
    let set2 = Set(list2)
    return set1.intersect(set2).minElement() // intersect() pulls common numbers from two sets!
}
smallestCommonNum([1, 2, 5, 9], list2: [9, 20, 5]) // test it



// 4) Check to see if an integer is a palindrome don’t use casting.
// divide each digit and rebuild number again then compare with original:
func isPalindrome(var num: Int) -> Bool {
    let originalNum = num
    var finalNum = 0
    
    while(num > 0) {
        finalNum *= 10
        finalNum += num % 10
        num  /= 10
    }
    return finalNum == originalNum // return true if is palindrome
}
isPalindrome(134543) // test it


