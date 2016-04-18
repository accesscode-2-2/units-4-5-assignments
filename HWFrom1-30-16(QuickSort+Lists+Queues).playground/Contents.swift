//: Playground - noun: a place where people can play

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

//1)

//bubble sort- O(n)
//insertion sort- O(n^2)
//selection sort- O(n^2)
//mergesort- O(nlogn)
//quicksort- O(nlogn)

//2)advantage of partitioning quicksort in place- you can loop thru both right and left side simultaneously which cuts down the run time.

//3)Without looking, implement quicksort
func quickSort(inout arr: [Int], firstIdx: Int, lastIdx: Int) {
    // base case
    if firstIdx >= lastIdx { return }
    // partition
    let splitPoint = partition(&arr, firstIdx: firstIdx, lastIdx: lastIdx)
    // quickSort on leftHalf
    quickSort(&arr, firstIdx: firstIdx, lastIdx: splitPoint - 1)
    // quickSort on rightHalf
    quickSort(&arr, firstIdx: splitPoint + 1, lastIdx: lastIdx)
}

func quickSort(inout arr: [Int]) {
    quickSort(&arr, firstIdx: 0, lastIdx: arr.count-1)
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
        while arr[leftMark] < pivotValue && leftMark <= rightMark {
            leftMark += 1
        }
        while arr[rightMark] > pivotValue && leftMark <= rightMark{
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

var numbers = [22, 59, 38, 93,95, 0, 34, 58, 72, 15]

quickSort(&numbers)



//4) Write a function to generate an array of random numbers bounded between 1..<10,000 of size 10,000. 

// create an array of 0 through 1000
//var nums = Array(0...10000)

// remove the blacklist number
//nums.removeAtIndex(nums.indexOf(8)!)
//
//var randoms = [Int]()
//for _ in 1...10000 {
//    let index = Int(arc4random_uniform(UInt32(10000)))
//    randoms.append(nums[index])
//    nums.removeAtIndex(index)
//}



//5)The Merge Sort is usually required while sorting a too large set to hold or handle in internal memory. It divides the set into a number of subsets of one element and then repeatedly merge the subsets into increasingly larger subsets with the elements sorted correctly until one set is left. Sorting happens as elements are being popped off from the large sets.

//The Quick Sort operates by selecting a single element from the set and labelling it the pivot. The set is then reorder to ensure that all elements of lesser value than the pivot come before it and all elements of greater value come after it. This operation is recursively applied to the subsets on both sides of pivot until the entire set is sorted. Sorting happens as the recursive calls are being pushed onto the stack.


//6) 
//
//var paren = [ “[“,"]”,”{“,”}”,”(“,”)” ]
//
//    func isBalanced(paren: [String]) -> Bool {
//        for i in 0..<paren.count {
//            if paren[i] == "(" || paren[i] == "{" || paren[i] == "[" {
//                stack.push(paren[i])
//            } else if paren[i] == ")" || paren[i] == "}" || paren[i] == "]" {
//                stack.pop(paren[i])
//            } else if paren[i] == nil {
//                return yes;
//                break
//            }
//            
//            
//        }
//}
//



