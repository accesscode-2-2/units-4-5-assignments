//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit
*/
//: ### Questions
//: 1. Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number.
//:
//: 2. Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not
//:
//: 3. Given two lists, find the smallest value that exists in both lists.
//:
//:    L1 = [1,2,5,9]             L2 = [9, 20 , 5]
//:
//: 4. Check to see if an integer is a palindrome don’t use casting

//: ### Solutions

//: #1

func sumOfNConsecutives(n : Int) -> Int{
    return (n*(n+1))/2
}

func findMissingNumberFrom(list : [Int]) -> Int {

    let sumOfConsecutives = sumOfNConsecutives(list.count)
    var sumOfList : Int = 0
    for i in list {
        sumOfList += i
    }

    return sumOfConsecutives - sumOfList
}

//: #2

func hasDuplicates(var list: [Int]) -> Bool {

    for i in 0..<list.count {

        let elt = abs(list[i])

        if list[elt] < 0 {
            return true
        }
        else{
            let temp = list[elt]
            list.removeAtIndex(elt)
            list.insert(-temp, atIndex: elt)
        }

    }

    return false
}

//: #3

func mutualMin(list1 : [Int], list2: [Int]) -> Int? {

    guard list1.count != 0 && list2.count != 0 else{
        return nil
    }

    let set1 = Set(list1)
    let set2 = Set(list2)
    let intersection = Array(set1.intersect(set2))

    return findMin(intersection)

}

func findMin(list: [Int]) -> Int {

    var min: Int = list[0]

    for i in list{
        if i < min {
            min = i
        }
    }
    return min
}

//: #4

func isIntegerPalindrome(var value : Int) -> Bool {

    if value < 10 {
        return true
    }

    var n: Int = 0

    while n <= value {

        if n == value {
            return true
        }

        n = n*10 + value%10
        value = value/10
    }
    
    return false
    
}






