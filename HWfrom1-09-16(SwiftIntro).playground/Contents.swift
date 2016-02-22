//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



//Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

//https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit


//1)

func findNumber(n : Int, list : [Int]) -> Int
    
    {
            let sum = n*(n+1)/2
            var listSum = 0
    
            for i in list
               {
                    listSum += i
                }
        
            return sum - listSum
        }

//2)

func hasDuplicates(arr: [Int]) -> Bool {
var hasAppeared = Array(count: arr.count + 1, repeatedValue: false)
for i in 0..<arr.count {
if(hasAppeared[arr[i]]) {
return true
}
hasAppeared[arr[i]] = true
}
return false
}

//3)

func smallestCommonNum(list1: [Int], list2: [Int]) -> Int? {
    let set1 = Set(arrayLiteral: 1,2,5,9)
    let set2 = Set(arrayLiteral: 9,2,0,5)
    return set1.intersect(set2).minElement()
}

//4)

func findPalindrome(var num: Int) -> Bool {
    let originalNum = num
    var finalNum = 0
    while(num > 0) {
        finalNum *= 10
        finalNum += num % 10
        num /= 10
    }
    return finalNum == originalNum
}

