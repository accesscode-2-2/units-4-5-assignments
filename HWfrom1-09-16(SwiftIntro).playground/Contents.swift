//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit


1)
    func findMissingNumber(n : Int, list : [Int]) -> Int
    {
        let totalSum = n*(n+1)/2
        var totalSumOfList = 0

        for i in list
        {
            totalSumOfList += i
        }
        return totalSum - totalSumOfList
    }

2)  
    func findDuplicates(list : [Int]) ->Bool
    {
        let set = Set(list)
        if (set.count != list.count)
        {
            return true
        }
        else
        {
            return false
        }
    }

3) 
    func findSmallesValue(list1 : [Int], list2 : [Int]) -> Int
    {
        let set1 = Set(list1)
        let set2 = Set(list2)

        let intersectionArray = Array(set1.intersect(set2))

        if(intersectionArray.isEmpty)
        {
            return -1
        }

        return intersectionArray.minElement()!
    }



4)

    func checkIfIntegerIsPalindrome(var number : Int) -> Bool
    {
        let originalNum = number
        var finalNum = 0
        while(number > 0)
        {
            finalNum = finalNum * 10 + number % 10
            number /= 10
        }
        return originalNum == finalNum
    }




*/
