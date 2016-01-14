//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit


1) */
func findMissingNumber(N:Int, list:[Int]) -> Int {
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


//2)
//Given a list of size N containing numbers 1 - N(inclusive) return true if there are duplicates, false if not
func hasDuplicates(arr: [Int]) ->Bool {
    
    return true
}


//3)
//Given two lists, find the smallest value that exists in both lists
func getSmallestCommonValue(list1:[Int], list2: [Int]) ->Int? {
    let list1 = [1,2,5,9]
    let list2 = [9, 20, 5]
    
    for i in (0..<list1.count) {
        if(i < i - 1) {
            print(list1[i])
        }
    }
    
    for j in (0..<list2.count) {
        if(j < j - 1) {
            print(list2[j])
        }
    }
    return nil
}

//4)
func isPalindromic(word:String) ->Bool {
    return String(word.characters.reverse()) == word
}



