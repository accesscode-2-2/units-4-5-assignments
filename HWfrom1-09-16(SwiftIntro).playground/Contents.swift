//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit */

// 1) Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.

/* A series of google search results led to this, and I decided to go with this strategy: https://www.glassdoor.com/Interview/We-have-numbers-from-1-to-52-that-are-put-into-a-51-number-array-what-s-the-best-way-to-find-out-which-number-is-missing-QTN_79443.htm
What they are looking for is probably how good you are at math and algorithms. My answer would be: 1) Calculate the sum of all numbers stored in the array of size 51. 2) Subtract the sum from (52 * 53)/2 ---- Formula : n (n+1)/2. The result of subtraction is the answer for this question. */

func findMissingNumber(n : Int, numbers : [Int]) -> Int {
    let totalSum = n * (n + 1) / 2
    var totalSumOfAllNumbers = 0
    for i in numbers {
        totalSumOfAllNumbers += i
    }
    return totalSum - totalSumOfAllNumbers
}
    findMissingNumber(5, numbers: [1, 4, 3, 2])
    

// 2) Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not
    // this solution is from in-class exercise
    
    func hasDuplicates(numbers : [Int]) -> Bool {
        for var i = 0; i < numbers.count; i++ {
            for var j = 0; j < numbers.count; j++ {
                if j != i {
                    if numbers[i] == numbers[j]{
                        return false
                    }
                }
            }
        }
        
        return true
}
        hasDuplicates([1, 2, 3])
        hasDuplicates([1, 2, 2, 3, 4])
    
// 3) Given two lists, find the smallest value that exists in both lists.
//L1 = [1,2,5,9]
//L2 = [9, 20 , 5]

        
        // this was the second result in google search, and I didn't find anything else: https://gist.github.com/xhenna92/ea27fb0496a3ae0ee334
        
        func findMin(arr1 : [Int], arr2 : [Int]) -> Int {
            
            // return (arr1.minElement()! > arr2.minElement()! ? arr2.minElement()! : arr1.minElement()!)
            
            var minArr1 = arr1.first
            var minArr2 = arr2.first
            
            for var i = 0; i < arr1.count; i++ {
                
                if arr1[i] < minArr1 {
                    minArr1 = arr1[i]
                }
                
            }
            
            for var j = 0; j < arr2.count; j++ {
                
                if arr2[j] < minArr2 {
                    minArr2 = arr2[j]
                }
                
            }
            
            return (minArr1! > minArr2! ? minArr2 : minArr1)!
}

findMin([1, 2, 2, 3, 4], arr2: [-1, 2, 2, 3, 4])

findMin([1,2,5,9],arr2: [9, 20 , 5]) // the function doesn't work


// 4) Check to see if an integer is a palindrome don’t use casting
        // http://beginnersbook.com/2015/02/c-program-to-check-if-a-number-is-palindrome-or-not/ using recursion
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
isPalindrome(232)
