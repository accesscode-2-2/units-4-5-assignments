//: Playground - noun: a place where people can play

import Cocoa

var arr = "Hello, Felicia"

/* 1.
Without looking at the Big O Cheatsheet, write down the average time and space complexity for bubble sort, insertion sort, selection sort, mergesort, and quicksort.

    Sort                time complexity             space complexity
-Bubble Sort:               O(n^2)                        O(n)
-Insertion Sort:            O(n^2)                        O(1)
-Selection Sort:            O(n^2)                        O(1)
-Merge Sort:                O(nlog(n))                    O(n)
-Quick Sort:                O(nlogn)                    log(n)
*/

/* 2.
What is the advantage of partitioning quicksort in place?

The partitioning takes place as the quicksort moves downward, allowing for a faster sort because the elements are being sorted as it iterates through the elements/array.
*/

/* 3.
Without looking, implement quicksort.

*/

func partition(inout arr: [Int], firstIdx: Int, lastIdx: Int) -> Int {
    let pivotValue = arr[firstIdx]
    
    var leftMark = firstIdx + 1
    
    var rightMark = lastIdx
    
    while leftMark <= rightMark {
        while arr[leftMark] < pivotValue {
            leftMark += 1
        }
        
        while  arr[rightMark] > pivotValue {
            rightMark -= 1
        }
        
        if leftMark < rightMark {
            swap(&arr[leftMark], &arr[rightMark])
        }
    }
    
    if firstIdx != rightMark {
        swap(&arr[firstIdx], &arr[rightMark])
    }
    
    return rightMark
}

func quickSort(inout arr: [Int], firstIdx: Int, lastIdx: Int) {
   // base case
    if firstIdx >= lastIdx {
        return
    }
    
    let splitPoint = partition(&arr, firstIdx: firstIdx, lastIdx: lastIdx)
    
    //left half
    quickSort(&arr, firstIdx: firstIdx, lastIdx: splitPoint - 1)
    
    //right half
    quickSort(&arr, firstIdx: splitPoint + 1, lastIdx: lastIdx)
}

func quickSort(inout arr: [Int]) {
    quickSort(&arr, firstIdx: 0, lastIdx: arr.count - 1)
}
1
var array = [22, 15, 38, 93, 95, 0, 34, 58, 72, 59]
quickSort(&array)


/* 4.
Write a function to generate an array of random numbers bounded between 1..<10,000 of size 10,000.

Int(arc4random_uniform(UInt32(10000)))
*/

func uniqueRandoms(numberOfRandoms: Int, minNum: Int, maxNum: UInt32) -> [Int] {
    var uniqueNumbers = Set<Int>()
    while uniqueNumbers.count < numberOfRandoms {
        uniqueNumbers.insert(Int(arc4random_uniform(maxNum + 1)) + minNum)
    }
    return Array(uniqueNumbers)
}
print(uniqueRandoms(10000, minNum: 0, maxNum: 10000))


/* 5.
Describe the algorithmic difference between mergesort and quicksort. Where does the sorting happen? As the recursive calls are being pushed onto the stack or as they are being popped off?

- MergeSort breaks into smaller subarrays and sorts the elements, merging and sorting as the iteration goes back upward, whereas, QuickSort sort is in place and sorts as it goes down.
*/

/* 6.
Given an array of strings containing “[“,”]”,”{“,”}”,”(“,”)”. Output whether or not the parentheses are balanced.
Good examples: () [] () ([]()[])
Bad examples: ( ( ] ([)]


*/
//var arrParen = ["][“,”]”,”{“,”}”,”(“,”)"]
//
//func isBalanced(paren: [String]) -> Bool {
//   
//}
//var arr1 = ["(,),[,]"]
//isBalanced(arr1)
//isBalanced(arrParen)
