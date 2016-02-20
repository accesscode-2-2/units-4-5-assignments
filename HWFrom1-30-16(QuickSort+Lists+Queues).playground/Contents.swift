//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

//1)Without looking at the Big O Cheatsheet, write down the average time and space complexity for bubble sort, insertion sort, selection sort, mergesort, and quicksort.

//bubble sort = O(n^2)
//insertion sort = O(n^2)
//selection sort = O(n^2)
//mergesort = O(nlog(n))
//quicksort = O(nlog(n))

//2) What is the advantage of partitioning quicksort in place?
//Answer: You dont have to calculate the median?


//3)Without looking, implement quicksort.

//4)Write a function to generate an array of random numbers bounded between 1..<10,000 of size 10,000.

//5)Describe the algorithmic difference between mergesort and quicksort. Where does the sorting happen? As the recursive calls are being pushed onto the stack or as they are being popped off?

//6)Given an array of strings containing “[“,”]”,”{“,”}”,”(“,”)”. Output whether or not the parentheses are balanced.
//Good examples: () [] () ([]()[])
//Bad examples: ( ( ] ([)]
//
//func isBalanced(paren: [String]) -> Bool {
//
//}