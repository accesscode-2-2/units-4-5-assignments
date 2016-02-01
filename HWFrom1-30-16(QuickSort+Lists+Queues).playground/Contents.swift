//: Playground - noun: a place where people can play

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

//1)Without looking at the Big O Cheatsheet, write down the average time and space complexity for bubble sort, insertion sort, selection sort, mergesort, and quicksort.

// Bubble Sort = O(n^2) ... Because you have to iterate through n elements n times.

// Insertion Sort = O(n^2) ... Because, in the worst case, aside from looping through the unsorted array to grab the element to be compared, if the number being inserted is less than every element in the sorted list you will have to make a comparison with every element already sorted.

// Selection Sort = O(n^2) ... Because after looping through the whole array to grab the minimum element and looping through the array minus 1 each time until everything is sorted, the run time is O(n^2)/2 which means the time complexity is still O(n^2) because when it comes to Big Oh complexitiy, we disregard the constant.

// Merge Sort = O(n log n) ... Because it divides the input in half recursively  and has to make n comparisons each time.
// Quick Sort = O(n log n) ... Because you have to do n-1 comparisons on each iteration and log n becuase you have to divide the elements log n times

//2) What is the advantage of partitioning quicksort in place?
// No need to create another array and deal with merging them.

//3) Without looking, implement quicksort. * I looked. Couldn't do it and it was taking too long.*

func quickSort(inout arr: [Int]) {
    quickSort(&arr, firstIdx: 0, lastIdx: arr.count-1)
}

func quickSort(inout arr: [Int], firstIdx: Int, lastIdx: Int) {
    // base case
    if firstIdx - lastIdx >= 1 { return }
    
    // partition
    let splitPoint = partition(&arr, firstIdx: firstIdx, lastIdx: lastIdx)
    
    // quickSort on leftHalf
    quickSort(&arr, firstIdx: firstIdx, lastIdx: splitPoint - 1)
    
    // quickSort on rightHalf
    quickSort(&arr, firstIdx: splitPoint + 1, lastIdx: lastIdx)
}

func partition(inout arr: [Int], firstIdx: Int, lastIdx: Int) -> Int {
    // set pivotValue to firstElement
    let pivotValue = arr[firstIdx]
    // set leftMark
    var leftMark = firstIdx + 1
    // set rightMark
    var rightMark = lastIdx
   
    /*
    as leftMark and rightMark close in on each other,
    swap the items that are greater than the pivot value
    on the left side with the items that are less than the pivot
    value on the right side. Stop when rightMark crosses leftMark
    */
    while leftMark <= rightMark {
        while arr[leftMark] < pivotValue {
            leftMark += 1
        }
        while arr[rightMark] > pivotValue {
            rightMark -= 1
        }
        
        if leftMark < rightMark {
            swap(&arr[leftMark], &arr[rightMark])
        }
    }
    // set the correct value at the splitPoint
    if firstIdx != rightMark {
        swap(&arr[firstIdx], &arr[rightMark])
    }
    return rightMark  // return the splitPoint
}

var arrayForQuickSort = [22, 15, 38, 93, 95, 0, 34, 58, 72, 59]


quickSort(&arrayForQuickSort)

//4) Write a function to generate an array of random numbers bounded between 1..<10,000 of size 10,000.

// Int(arc4random_uniform(UInt32(10000)))

// Compare the time it takes to run mergesort, quicksort, and quicksort with the median.
// https://gist.github.com/gummibeatz/8ff29bcec54d7e3ef683



//5) Describe the algorithmic difference between mergesort and quicksort. Where does the sorting happen? As the recursive calls are being pushed onto the stack or as they are being popped off?
// For quicksort, the sorting happens as the recursive calls are being pushed onto the stack as opposed to mergesort which is sorted "on the way up" or as the stack is being popped off.

//6) Given an array of strings containing “[“,”]”,”{“,”}”,”(“,”)”. Output whether or not the parentheses are balanced.
//Good examples: () [] () ([]()[])
//Bad examples: ( ( ] ([)]

func samePair(element1: String?, element2: String) -> Bool {
    
    if element1 == "{" && element2 == "}" {
        return true
    } else if element1 == "[" && element2 == "]" {
        return true
    } else if element1 == "(" && element2 == ")" {
        return true
    } else {
        return false
    }
    
}

func isBalanced(paren: [String]) -> Bool {
    
    guard paren.count < 2 || paren.isEmpty || paren.count % 2 == 0 else {
        return false
    }
    
    var emptyArray = [String]()
    let openingSet = Set(["(", "[", "{"])
    
    for i in 0..<paren.count {
        if openingSet.contains(paren[i]) {
            emptyArray.append(paren[i])
        } else if emptyArray.isEmpty || !samePair(emptyArray.last, element2: paren[i]) {
            return false
        } else {
            emptyArray.removeLast()
        }
    }
    
    return emptyArray.isEmpty
}

var array = ["[","]","{","}","(",")"]
isBalanced(array)

