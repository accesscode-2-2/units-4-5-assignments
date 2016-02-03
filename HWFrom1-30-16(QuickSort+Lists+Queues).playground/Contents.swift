//: Playground - noun: a place where people can play

import Foundation

// FOR REFERENCE, insertion sort
func insertionSort(inout numberList:[Int]){
    var x, y, key : Int
    for (x = 0; x < numberList.count; x++) {
        
        key = numberList[x]
        for (y = x; y > -1; y--) {
            if (key < numberList[y]) {
                numberList.removeAtIndex(y + 1)
                numberList.insert(key, atIndex: y)
            }
        }
    }
}

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

/* 1) 

BUBBLE SORT T: O(n^2), S: O(1)
INSERTION SORT T: O(n^2), S: O(1)
SELECTION SORT T: O(n^2), S: O(1)
MERGE SORT T: O(n log n), S: O(n)
QUICK SORT T: O(n log n), S: O(log n) <- not sure why this space complexity value. Ask in class */

/* 2)

Smaller space complexity */

/* 3) */

// function to determine a good pivot value
func median(inout array: [Int], first: Int, last: Int) {
    
    if last - first > 4 {
        
        var medianIndex: Int
        var candidates: [Int] = [array.first!, array[(last+first) / 2], array.last!]
        
        if (candidates[0] >= candidates[1] && candidates[0] <= candidates[2]) ||
            (candidates[0] >= candidates[2] && candidates[0] <= candidates[1]) {
                
                medianIndex = first
                
        } else if (candidates[1] >= candidates[2] && candidates[1] <= candidates[0]) ||
            (candidates[1] >= candidates[0] && candidates[1] <= candidates[2]) {
                
                medianIndex = array.count / 2
                
        } else {
            
            medianIndex = last
        }
        
        if medianIndex != first {
            
            swap(&array[first], &array[medianIndex])
        }
    }
}

// function to sort values in the array in relation to the pivot point
func partition(inout array: [Int], first: Int, last: Int) -> Int {
    
    let pivotIndex = first
    var rightIndex = last
    var leftIndex = pivotIndex + 1
    
    while leftIndex <= rightIndex {
        
        if array[leftIndex] > array[pivotIndex] {
            
            if array[rightIndex] < array[pivotIndex] {
                
                swap(&array[rightIndex], &array[leftIndex])
                
            } else {
                
                rightIndex--
            }
            
        } else {
            
            leftIndex++
        }
    }
    
    if pivotIndex != rightIndex {
        
        swap(&array[pivotIndex], &array[rightIndex])
    }
    
    return rightIndex
}

// putting everything together for recursive goodness
func quickSort(inout array: [Int], first: Int, last: Int) {
    
    if last - first <= 0 {
        return
    }
    median(&array, first: first, last: last)
    let splitPoint = partition(&array, first: first, last: last)
    quickSort(&array, first: 0, last: splitPoint - 1)
    quickSort(&array, first: splitPoint + 1, last: last)
}


/* 4) */

func generateArray(size: Int, valueUpperBound: Int) -> [Int] {
    
    var array = Array<Int>(count: size, repeatedValue: 0)
    
    for i in 0..<array.count {
        
        array[i] = Int(arc4random_uniform(UInt32(valueUpperBound)))
    }
    return array
}

var randomLongArray = generateArray(10, valueUpperBound: 10000)
var quickShortArray = [22, 59, 38, 93, 95, 0, 34, 58, 72, 15]
quickSort(&randomLongArray, first: 0, last: randomLongArray.count - 1)
print(randomLongArray)

/* 5) 

Mergesort does the sorting as the function pops back up, while Quicksort doesn't do any computation as 
the functions are popping off the statck. Also Quicksort sorts in place while Mergesort uses greater 
space complexity by breaking the array down into many other smaller arrays. */

/* 6) Do this on paper first [easier to visualize] */

//func isBalanced(array: [String]) -> Bool {
//    
//    for i in 0..<array.count {
//        
//        
//    }
//}
