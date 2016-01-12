//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit

*/

// 1) Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.
func findMissingNumber(max : Int, numbers : [Int]) -> Int{
    
    //    for i in 1...max{
    //        if !numbers.contains(i){
    //            return i
    //        }
    //
    //    }
    //
    //    return -1
    
    let totalSum = max * (max + 1) / 2
    var totalSumOfList = 0
    for i in numbers {
        totalSumOfList += i
    }
    return totalSum - totalSumOfList
    
}

findMissingNumber(5, numbers: [1, 4, 3, 2])



// 2) Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not
func hasDupes(numbers : [Int]) -> Bool{
    //    let set = Set(numbers)
    //
    //    return numbers.count == set.count ? true : false
    
    for var i = 0; i<numbers.count; i++ {
        for var j = 0; j<numbers.count; j++ {
            if j != i {
                if numbers[i] == numbers[j]{
                    return false
                }
            }
        }
    }
    
    return true
    
    
}

hasDupes([1, 2, 3])
hasDupes([1, 2, 2, 3, 4])

// 3) Given two lists, find the smallest value that exists in both lists.

func findMin(arr1 : [Int], arr2 : [Int]) -> Int {
    
    // return (arr1.minElement()! > arr2.minElement()! ? arr2.minElement()! : arr1.minElement()!)
    
    var minArr1 = arr1.first
    var minArr2 = arr2.first
    
    for var i = 0; i < arr1.count; i++ {
        
        if arr1[i]<minArr1 {
            minArr1 = arr1[i]
        }
        
    }
    
    for var j = 0; j < arr2.count; j++ {
        
        if arr2[j]<minArr2 {
            minArr2 = arr2[j]
        }
        
    }
    
    return (minArr1! > minArr2! ? minArr2 : minArr1)!
}

findMin([1, 2, 2, 3, 4], arr2: [-1, 2, 2, 3, 4])


// 4) Check to see if an integer is a palindrome, no casting


func isPalindromeInt (var number : Int) -> Bool {
    
    if number < 0{
        return false
    }
    
    // initialize how many zeros
    var div = 1;
    while ( number/div >= 10) {
        div *= 10
    }
    
    while (number != 0) {
        var left = number / div;
        var right = number % 10;
        
        if (left != right){
            return false
        }
        
        number = (number % div) / 10;
        div /= 100;
    }
    
    return true;
    
}

isPalindromeInt(232)