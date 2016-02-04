//: Playground - noun: a place where people can play

import UIKit

/*
1)
                  time complexity             space complexity
bubble sort         O(n^2)                      O(1)
insertion sort      O(n^2)                      O(1)
selection sort      O(n^2)                      O(1)
merge sort          O(nlogn)                    O(n)
quick sort          O(n^2)                      O(1)
*/


/* 2) What is the advantage of partitioning Quicksort in place? 
It has a constant space complexity
*/

/*
 3)   Without looking, implement quicksort.
*/

//func quickSort(inout arr: [Int], first: Int, last: Int) {
//
//    if first >= last { return }
//
//    let splitPoint = partition(&arr, first: first, last: last)
//
//    quickSort(&arr, first: first, last: splitPoint - 1)
//
//    quickSort(&arr, first: splitPoint + 1, last: last)
//}
//
//func quickSort(inout arr: [Int]) {
//    quickSort(&arr, first: 0, last: arr.count-1)
//}
//
//func partition(inout arr: [Int], first: Int, last: Int) -> Int {
//
//    let pivotValue = arr[first]
//    var leftMark = first + 1
//    var rightMark = last
//
//    while leftMark <= rightMark {
//        while arr[leftMark] < pivotValue && leftMark <= rightMark {
//            leftMark += 1
//        }
//        while arr[rightMark] > pivotValue && leftMark <= rightMark{
//            rightMark -= 1
//        }
//        if leftMark < rightMark {
//            swap(&arr[leftMark], &arr[rightMark])
//        }
//    }
//
//    if first != rightMark {
//        swap(&arr[first], &arr[rightMark])
//    }
//    return rightMark
//
//
//}
//
//var array = [22, 59, 38, 93, 95, 0, 34, 58, 72, 15]
//quickSort(&array)


/* 4) Write a function to generate an array of random numbers bounded between 1..<10,000 of size 10,000.


Compare the time it takes to run mergesort, quicksort, and quicksort with the median.
https://gist.github.com/gummibeatz/8ff29bcec54d7e3ef683
*/
//
//func quickSort(inout arr: [Int], firstIdx: Int, lastIdx: Int, medianPivot: Bool) {
//    // base case
//    if firstIdx >= lastIdx { return }
//    // partition
//    let splitPoint = partition(&arr, firstIdx: firstIdx, lastIdx: lastIdx, medianPivot: medianPivot)
//    // quickSort on leftHalf
//    quickSort(&arr, firstIdx: firstIdx, lastIdx: splitPoint - 1, medianPivot: medianPivot)
//    // quickSort on rightHalf
//    quickSort(&arr, firstIdx: splitPoint + 1, lastIdx: lastIdx, medianPivot: medianPivot)
//}
//
//func quickSort(inout arr: [Int], medianPivot: Bool) {
//    quickSort(&arr, firstIdx: 0, lastIdx: arr.count-1, medianPivot: medianPivot)
//}
//
//func partition(inout arr: [Int], firstIdx: Int, lastIdx: Int, medianPivot: Bool) -> Int {
//    // set pivotValue to firstElement
//    var pivotValue = 0
//    if medianPivot {
//        var pivotValues:[Int] = []
//        pivotValues.append(arr[0])
//        pivotValues.append(arr[arr.count-1])
//        pivotValues.append(arr[arr.count/2])
//        let maximum = pivotValues.maxElement()
//        let minimum = pivotValues.minElement()
//
//        for number in pivotValues{
//            if number != maximum && number != minimum{
//                pivotValue = number
//            }
//        }
//    }
//    else{
//        pivotValue = arr[firstIdx]
//    }
//
//    // set leftMark
//    var leftMark = firstIdx + 1
//    // set rightMark
//    var rightMark = lastIdx
//    /*
//    as leftMark and rightMark close in on each other,
//    swap the items that are greater than the pivot value
//    on the left side with the items that are less than the pivot
//    value on the right side. Stop when rightMark crosses leftMark
//    */
//    while leftMark <= rightMark {
//        while arr[leftMark] < pivotValue && leftMark <= rightMark {
//            leftMark += 1
//        }
//        while arr[rightMark] > pivotValue && leftMark <= rightMark{
//            rightMark -= 1
//        }
//        if leftMark < rightMark {
//            swap(&arr[leftMark], &arr[rightMark])
//        }
//    }
//    // set the correct value at the splitPoint
//    if firstIdx != rightMark {
//        swap(&arr[firstIdx], &arr[rightMark])
//    }
//    return rightMark  // return the splitPoint
//
//
//}
//func mergeSort(var unsortedArray:Array<Int>)->Array<Int>{
//    if unsortedArray.count < 2 {
//        return unsortedArray
//    }
//    
//    let pivot:Int = unsortedArray.count/2
//    let leftArray:Array<Int> = Array(unsortedArray[0..<pivot])
//    let rightArray:Array<Int> = Array(unsortedArray[pivot..<unsortedArray.count])
//    return mergeArrays(mergeSort(leftArray), B: mergeSort(rightArray))
//}
//
//func mergeArrays(A:Array<Int>,B:Array<Int>)->Array<Int>{
//    var leftIndex = 0
//    var rightIndex = 0
//    var orderedArray:Array<Int> = []
//    while leftIndex<A.count && rightIndex<B.count {
//        if A[leftIndex] < B[rightIndex] {
//            orderedArray.append(A[leftIndex++])
//        }
//        else if A[leftIndex] > B[rightIndex] {
//            orderedArray.append(B[rightIndex++])
//        }
//        else {
//            orderedArray.append(A[leftIndex++])
//            orderedArray.append(B[rightIndex++])
//        }
//    }
//    orderedArray = orderedArray + Array(A[leftIndex..<A.count])
//    orderedArray = orderedArray + Array(B[rightIndex..<B.count])
//    return orderedArray
//}
//
////var array = [22, 59, 38, 93, 95, 0, 34, 58, 72, 15]
////quickSort(&array, medianPivot: true)
//
//
//var numbersArray = [Int](count: 10000, repeatedValue: 0)
//
//for i in 0..<numbersArray.count{
//    numbersArray[i] = Int(arc4random_uniform(UInt32(1000)))
//}
//
//
//func profile(block:(()->())) {
//    let start = NSDate()
//    block()
//    let end = NSDate()
//    print(end.timeIntervalSinceDate(start))
//}
//
////run your function/code inside the block below
//profile({
//    //quickSort(&numbersArray) //0.00165402889251709
//    //quickSort(&numbersArray, medianPivot: true) //0.00196903944015503
//    //mergeSort(numbersArray)
//    print("hi")
//    
//})


/* 5)  In quicksort, the elements are sorted while the array is being split. In mergesort, the elements are placed in order when we merge two sorted lists.
*/


/* 6) Given an array of strings containing “[“,”]”,”{“,”}”,”(“,”)”. Output whether or not the parentheses are balanced.
    Good examples: () [] () ([]()[])
    Bad examples: ( (] ([)]
*/

func isBal(inout str: [String]) -> Bool {
    var container = [String]()
    
    for char in str{
        if char == "(" {
            container.append(char)
        }
        else if char == ")" && container.contains("("){
            container.removeAtIndex(container.indexOf("(")!)
        }
        
        else if char == "[" {
            container.append(char)
        }
        else if char == "]" && container.contains("["){
            container.removeAtIndex(container.indexOf("[")!)
        }
    }
    
    return container.isEmpty
    
    
}

var arr = ["(", ")", "[", "]", "(", ")", "(", "[", "]", "(", ")", "[", "]", ")"]

isBal(&arr)

