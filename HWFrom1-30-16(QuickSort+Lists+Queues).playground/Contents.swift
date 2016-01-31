//: Playground - noun: a place where people can play

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

//1)Without looking at the Big O Cheatsheet, write down the average time and space complexity for bubble sort, insertion sort, selection sort, mergesort, and quicksort.

// bubble sort: time - O(n^2)
//              space - O(1) auxiliary  (Additional space complexity can be O(n) in an implementation using arrays and O(1) in linked list implementations.)

// insertion sort: time - O(n^2)   best case could be O(n)
//                 space - О(n) total, O(1) auxiliary

// selection sort: time - O(n^2)
//                 space - О(n) total, O(1) auxiliary

// mergesort:      time - O(nlog(n))
//                 space - О(n) total, O(n) auxiliary

// quicksort:      time - O(nlog(n))  worst could O(n^2)
//                 space - O(n) auxiliary (naive), O(log n) auxiliary



//2)What is the advantage of partitioning quicksort in place?

//This ensures the partitioning phase of quicksort partitions the arrays into sub-arrays of almost equal size and hence that the expected running time remains O(nlogn)

//3)Without looking, implement quicksort.

/*func partition(inout arr: [Int], first: Int, last: Int) -> Int {
    let pivot = arr[first]
    var lM = first + 1
    var rM = last
    
    while lM <= rM {
        while lM <= rM && arr[lM] < pivot {
            lM += 1
        }
        while lM <= rM && arr[rM] > pivot {
            rM -= 1
        }
        if  lM < rM {
        swap(&arr[lM], &arr[rM])
        }
    }
    if first != rM {
        swap(&arr[first], &arr[rM])
    }
    return rM
}

func quickSort(inout arr: [Int], first: Int, last: Int) {
    if first >= last { return }
    let splitPoint = partition(&arr, first: first, last: last)
    quickSort(&arr, first: first, last: splitPoint - 1)
    quickSort(&arr, first: splitPoint + 1, last: last)
}

func quickSort(inout arr: [Int]){
    quickSort(&arr, first: 0, last: arr.count - 1)
}

var numberList = [22, 3, 43, 55, 23, 29, 17, 90]
quickSort(&numberList)
*/


//4)Write a function to generate an array of random numbers bounded between 1..<10,000 of size 10,000.

//Int(arc4random_uniform(UInt32(10000)))

//Compare the time it takes to run mergesort, quicksort, and quicksort with the median.
//https://gist.github.com/gummibeatz/8ff29bcec54d7e3ef683
/*

func profile(block:(()->())) {
    let start = NSDate()
    block()
    let end = NSDate()
    print(end.timeIntervalSinceDate(start))
}


func partition(inout arr: [Int], first: Int, last: Int) -> Int {
    let pivot = arr[first]
    var lM = first + 1
    var rM = last
    
    while lM <= rM {
        while lM <= rM && arr[lM] < pivot {
            lM += 1
        }
        while lM <= rM && arr[rM] > pivot {
            rM -= 1
        }
        if  lM < rM {
            swap(&arr[lM], &arr[rM])
        }
    }
    if first != rM {
        swap(&arr[first], &arr[rM])
    }
    return rM
}

func quickSort(inout arr: [Int], first: Int, last: Int) {
    if first >= last { return }
    let splitPoint = partition(&arr, first: first, last: last)
    quickSort(&arr, first: first, last: splitPoint - 1)
    quickSort(&arr, first: splitPoint + 1, last: last)
}

func quickSort(inout arr: [Int]){
    quickSort(&arr, first: 0, last: arr.count - 1)
}

var arr = [Int(arc4random_uniform(UInt32(10000)))]

//run your function/code inside the block below
profile({
    quickSort(&arr)
})
*/


//5)Describe the algorithmic difference between mergesort and quicksort. Where does the sorting happen? As the recursive calls are being pushed onto the stack or as they are being popped off?
/*
Quick sort does not require any additional memory while executing. It just sorts everything in the very array where the unsorted elements are present. On the other hand Merge sort requires extra memory (a lot of memory if the array is large). And the amount of extra memory required is O(n) which means it is directly proportional to the input size n. so the concluding statement is: "Quick sort is an IN-PLACE Algorithm while Merge sort is not."
"Quick Sort is NOT a stable sorting algorithm while Merge is." Quick sort is not stable because it exchanges the non adjacent elements. So preservance of order is not taken care of. The result might be stable or unstable. While Merge is a stable sort.
Quick sort is likely to run 1.2 to 1.4 times faster than Merge sort. It is always a good choice to use Quick over merge if Stability is not required. Moreover a good implementation of Quick sort is easier to code than a good implantation of Merge sort. Although Quick Sort's worse case of running time is O(n2) but it is always avoided using a randomized version of quick sort.
MergeSort exhibits end order or bottom up recursion in that all the significant actions take place after the recursive calls. This means that the array is split all the way down to singletons (of size 1) and that all actions take place on the way out of recursion.
In contrast, quickSort is exactly the opposite, namely top down recursion in the sense that the main action of partitioning is done before the recursive calls.

*/

//6)Given an array of strings containing “[“,”]”,”{“,”}”,”(“,”)”. Output whether or not the parentheses are balanced.
//Good examples: () [] () ([]()[])
//Bad examples: ( ( ] ([)]
//
func isBalanced(paren: [String]) -> Bool {
    

    return true
}

