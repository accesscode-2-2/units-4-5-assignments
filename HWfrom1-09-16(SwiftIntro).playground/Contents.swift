//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit
*/

// 1) Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.

func missingNumber(N: Int, list:[Int]) -> Int {
    
    var sumOfNArray = 0
    var sumOfList = 0
    var missingNumber : Int
    
    for i in 1...N {
        sumOfNArray += i
    }
    
    for i in list {
        sumOfList += i
    }
    
    missingNumber = sumOfNArray - sumOfList
    return missingNumber
    
}



// 2) Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not

func hasDuplicates(list: [Int]) -> Bool {
    
    for i in 0..<list.count {
        
        for j in i..<list.count {
            
            if i != j && list[i] == list[j] {
                
                return true
            }
        }
    }
    return false
}


// 3) Given two lists, find the smallest value that exists in both lists.

func findTheSmallestNumberInBothLists(list1: [Int], list2:[Int]) -> Int? {
    var commonArray = [Int]()
    var smallestCommonNumber: Int
    
    for i in list1 {
        for j in list2 {
            if i == j {
                commonArray.append(i)
            }
        }
    }
    
    if commonArray.count == 0 {
        return nil
    }
    else {
        smallestCommonNumber = commonArray[0]
        
        for i in commonArray{
            
            if (i < smallestCommonNumber) {
                smallestCommonNumber = i
            }
        }
        return smallestCommonNumber
    }
}

// 4) Check to see if an integer is a palindrome don’t use casting

func isPalindrome(number: Int) -> Bool {
    let convertedToString = String(number)
    return String (convertedToString.characters.reverse()) == convertedToString
}





// Test 1
    let array1 = [1,4,6,3,2]
    let N = 6
    print(missingNumber(N, list: array1))

// Test 2
    let array2 = [10, 4, 6, 7, 2, 9, 4, 0]
    print(hasDuplicates(array2))

// Test 3
    print(findTheSmallestNumberInBothLists(array1, list2: array2))

// Test 4
    print(isPalindrome(12321))


