//: Playground - noun: a place where people can play

import Foundation

/* 
1) Without looking at the Big O Cheatsheet, write down the average time and space complexity for bubble sort, insertion sort, selection sort, mergesort, and quicksort.

Bubble Sort:    O(n^2)
Insertion Sort: O(n^2)
Selection Sort: O(n^2)
Merge Sort:     O(n log n)
Quick Sort:     O(n log n)

2) What is the advantage of partitioning quicksort in place?

you don't need to take up additional memory when creating additional storage arrays (like in mergesort)

3) Without looking, implement quicksort.

var randomNumbers = [42, 12, 88, 62, 63, 56, 1, 77, 88, 97, 97, 20, 45, 91, 62, 2, 15, 31, 59, 5]

func partition(v: [Int], left: Int, right: Int) -> [Int] {
    var i = left
    for j in (left + 1)..(right + 1) {
        if v[j] < v[left] {
            i += 1
            (v[i], v[j]) = (v[j], v[i])
        }
    }
    (v[i], v[left]) = (v[left], v[i])
    return i
}

func quicksort(v: Int[], left: Int, right: Int) {
    if right > left {
        let pivotIndex = partition(v, left, right)
        quicksort(v, left, pivotIndex - 1)
        quicksort(v, pivotIndex + 1, right)
    }
}

quicksort(randomNumbers, left: 0, right: randomNumbers.count-1)

4) Write a function to generate an array of random numbers bounded between 1..<10,000 of size 10,000.

Int(arc4random_uniform(UInt32(10000)))
*/

func makeList(n: Int, max: Int) -> [Int] {
    var result: [Int] = [] // create storage variable
    for _ in 0..<n {
        result.append(Int(arc4random_uniform(UInt32(max) + 1))) // generate random number between 1...max
    }
    return result.sort(<) // sort it from least to greatest
}
// makeList(10000, max: 10000) // call method, set length and range

/*

5) Compare the time it takes to run mergesort, quicksort, and quicksort with the median.
https://gist.github.com/gummibeatz/8ff29bcec54d7e3ef683


6) Describe the algorithmic difference between mergesort and quicksort. Where does the sorting happen? As the recursive calls are being pushed onto the stack or as they are being popped off?


7) Given an array of strings containing “[“,”]”,”{“,”}”,”(“,”)”. Output whether or not the parentheses are balanced.
Good examples: () [] () ([]()[])
Bad examples: ( ( ] ([)]

func isBalanced(paren: [String]) -> Bool {

}

*/

