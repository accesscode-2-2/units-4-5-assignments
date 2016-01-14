//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit


1) Not sure what you're asking.

*/

//2)
    var numbers = [1,2,2,4,6,54,7,9,1,4]
    var numbers2 = [5, 3, 8, 11]

func duplicateElements(arr1: [Int]) -> Bool {
    
    let arr2 = Array(Set(arr1))
    
    if arr2.count < arr1.count {
        return true
    } else {
        return false
    }
}

duplicateElements(numbers)
duplicateElements(numbers2)

//3)



var list1 = [1,2,5,9]
var list2 = [9, 20 , 5]

list1.sort()
let smallestVal = list1[0]

list2.sort()
let list2SmallestVal = list2[0]



//4)

















