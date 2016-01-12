//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit

*/


//1)Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.

func findMissingNumber1(N:Int, list:[Int]) -> Int {
    var totalSumOfNArray = 0
    var totalSumOfList = 0
    for i in 1...N {
        totalSumOfNArray += i
    }
    for i in list {
        totalSumOfList += i
    }
    return totalSumOfNArray - totalSumOfList
}

let arr = [1, 4, 6, 3, 2]
let N = arr.count + 1

findMissingNumber1(N, list: arr)

//2)Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not

func hasDuplicates(arr4: [Int]) -> Bool {
    
    for i in 0..<arr4.count {
        for j in i..<arr4.count {
            if i != j && arr4[i] == arr[j] {
                return true
            }
        }
    }
    return false
}

// The following code could be another solution
//    let mySet = Set<Int>(arr)
//    let result = Array<Int>(mySet)
//    if result.count != arr.count {
//        return true
//    }
//    return false
//}

let arr4 = [1, 2, 3, 5]
hasDuplicates(arr4)



//3)Given two lists, find the smallest value that exists in both lists.

func smallestCommonNum(list1: [Int], list2: [Int]) -> Int? {
    let set1 = Set(list1)
    let set2 = Set(list2)
    return set1.intersect(set2).minElement()
}

let list1 = [3, 6, 9]
let list2 = [9, 12, 28]

smallestCommonNum(list1, list2: list2)



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

let num = 12021
isPalindrome(num)




