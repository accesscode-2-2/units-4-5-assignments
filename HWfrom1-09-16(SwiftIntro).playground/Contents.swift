//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit
*/

//1)
//Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.
func findMissing (N: Int, list: [Int]) -> Int {
    
    var totalSumOfArray = 0
    var totalSumOfList = 0
    
    for i in 1...N {
        
        totalSumOfArray += i
    }
    
    for i in list {
        
        totalSumOfList += i
    }
    
    return totalSumOfArray - totalSumOfList
    
}



//2)
//Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not
func hasDuplicates(arr: [Int]) -> Bool {
    
    for i in 0..<arr.count {
        
        for j in 0..<arr.count {
            
            if i != j && arr[i] == arr[j] {
                
                return true
            }
        }
    }
    
    return false
}

let list = [2, 5, 1, 3, 3]
let N2 = list.count
hasDuplicates(list)

let list3 = [3, 2, 1]
let N3 = list3.count
hasDuplicates(list3)



//3)

//Given two lists, find the smallest value that exists in both lists.
func getSmallestCommonValue(list1: [Int], list2: [Int]) -> Int? {
    
    let sortedList1 = list1.sort()
    let sortedList2 = list2.sort()
    
    for numInList1 in sortedList1 {
        
        for numInList2 in sortedList2 {
            
            if numInList1 == numInList2 {
                
                return numInList1
            }
        }
    }
    
    return nil
}

let list4 = [56, 23, 7, 78]
let list5 = [78, 79, 101, 23]
getSmallestCommonValue(list4, list2: list5)

let list6 = [34, 1, 7, 78]
let list7 = [78, 7, 101, 23]
getSmallestCommonValue(list6, list2: list7)



//4)
//Check to see if an integer is a palindrome don’t use casting
func isPalindrome(var num: Int) -> Bool {
    
    let orgNum = num
    var newNum = 0
    
    while(num > 0) {
        
        newNum *= 10
        newNum += num % 10
        num /= 10
    }
    
    return newNum == orgNum
    
}

let number = 12321
let number2 = 134543
isPalindrome(number)
isPalindrome(number2)




