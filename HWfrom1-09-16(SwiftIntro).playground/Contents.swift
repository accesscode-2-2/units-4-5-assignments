//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit

*/


//1)Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.

func findMissingNumber(N: Int, list: [Int]) -> Int {
    var totalSum = N*(N+1)/2   //Gaussian sum-sum everything up from 1 to 10 for example
    var totalSumOfList = 0
    for i in list {
        totalSumOfList += i
    }
    
    return totalSum - totalSumOfList
}





//2)Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not

var list3 = [Int]()
list3.sort()

func hasDuplicates(list3: [Int]) -> Bool {
    for i in 0..<list3.count {
    
        if(list3[i] == list3[i-1]) {

            return true
    
                    }
            }
        return false
}

var duplicates = hasDuplicates(list3)

print(duplicates)




//3)Given two lists, find the smallest value that exists in both lists.

var list1 = [1,2,3]
var list2 = [3,4,5]
var com = [Int]()

func getCommonValues (list1: [Int], list2: [Int]) -> [Int] {
    var com = [Int]()
    for i in 0..<list1.count {
        for j in 0..<list2.count {
            if (list1[i] == list2[j]) {
                com.append(list1[i])
            }
        }
    }
    return com
}


func getSmallestValue (com: [Int]) -> Int {
    var min = Int.max
    
    for i in 0..<com.count {
        if (com[i] < min) {
            min = com[i]
        }
    }
    return min
}


func smallestCommonVal (list1: [Int], list2: [Int]) -> Int? {
    var commonElements = getCommonValues(list1, list2: list2)
    if (commonElements.count == 0) {
        return nil
    }
    var smallestVal = getSmallestValue(commonElements)
    
    return smallestVal
}

var answer = smallestCommonVal(list1, list2: list2)
print(answer)





//4)Check to see if an integer is a palindrome don’t use casting

func isPalindrome(var num: Int) -> Bool {
    let originalNum = num
    var finalNum = 0
    while(num > 0) {
        finalNum *= 10
        finalNum += num % 10
        num /= 10
    }
    return finalNum == originalNum
}

let num = 21012
isPalindrome(num)



