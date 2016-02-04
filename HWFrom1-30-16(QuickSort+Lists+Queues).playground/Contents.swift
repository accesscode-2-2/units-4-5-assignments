//: Playground - noun: a place where people can play

import Darwin

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

//1)

// My original answers compared to bigocheatsheet

// Bubble: O(n^2), O(n)
// Insertion: O(2n), O(1)
// Selection: O(n^2) but why? O(1)
// Merge: O(n^2), O(nlogn)
// Quick: O(n^2), O(n^2)


// Bubble: O(n), O(1)
// Insertion: O(n), O(1)
// Selection: O(n^2), O(1) 
// Merge: O(n log (n)), O(n)
// Quick: O(n log(n)), O(log (n))

//2) Partitioning makes quicksort more efficient by having 2 points, a leftMark and a rightMark.

//3) Can't do it yet without looking but I can explain how to do it, sort of. 
    // Pick a pivot point, in our case, the element closest to the left
    // Set a leftMark and rightMark on the indices of the array
    // Swap the elements that are on the wrong side of the "wall" or pivot point
    // Keep swapping elements until the rightMark crosses the leftMark
    // Finally, swap rightMark with the pivot point so that all numbers to the left are < than pivot point, and numbers to the right are > than pivot point

//4) Write a function to generate an array of random numbers bounded between 1..<10,000 of size 10,000.

func generateNumbers() -> [Int] {
var int = 1
    Int(arc4random_uniform(UInt32(10000)))
//    for int in Int {
        // not sure how to run the for loop to generate random numbers each time.
    return []
    } // why can't I return an array of ints even though I have it return an array of ints?


// https://www.quora.com/What-is-the-difference-between-quicksort-and-mergesort
//5) The difference between merge and quick sorts are the elements in the array are not completely sorted, just sorted based on the pivot point. Quicksort is generally much faster than merge sort because of the constant multiplier. Quicksort cannot be done iteratively

//6)

func isBalanced(paren: [String]) -> Bool {
return true
    // think of it like a stack so that whatever enters last needs to be the closer. 
    // so whenever a symbol enters a stack, check if the first one entered is the closing brace/parenthesis, etc. (is this the right logic?!)

} 

