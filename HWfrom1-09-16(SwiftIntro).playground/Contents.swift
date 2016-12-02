//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit
*/

// 1) Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.


func findMissingNumber(n: Int, arr: [Int]) -> Int {
    let numberFrom1toN = n * (n + 1)/2
    var totalSumOfNumbersInArray = 0
    
    for x in arr {
        totalSumOfNumbersInArray += x
    }

    return numberFrom1toN - totalSumOfNumbersInArray
}


let number = 5
let arrayOfNumbers = [4, 2, 1, 5]

findMissingNumber(5, arr: arrayOfNumbers)



// 2) Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not

func hasDuplicates(firstList: [Int]) -> Bool {
    let set = Set(firstList)
    
    return set.count != firstList.count
}

let arrayOfDuplicates = [1,5,3,6,2,2,5,7,8,244]
let arrayOfUniqueValues = [1,2,3,4,5,6,7,8]

hasDuplicates(arrayOfUniqueValues)

// 3) Given two lists, find the smallest value that exists in both lists.
// L1 = [1,2,5,9]
// L2 = [9, 20 , 5]


func findSmallestValueInTwoLists(firstList: [Int], secondList: [Int]) -> Int? {
    let firstListSet = Set(firstList)
    let secondListSet = Set(secondList)
    
    let smallestValueInSet = firstListSet.intersect(secondListSet).minElement()
    
    return smallestValueInSet
}

// 4) Check to see if an integer is a palindrome don’t use casting
func isPalindrome(var num: Int) -> Bool {
    
    let originalNumber = num
    var alteredNumber = 0
    
    while (num > 0) {
        alteredNumber = alteredNumber * 10
        alteredNumber = alteredNumber + (num % 10)
        num = num / 10
    }
    
    return alteredNumber == originalNumber

}

isPalindrome(9000009)

