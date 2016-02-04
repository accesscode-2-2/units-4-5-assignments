//: Playground - noun: a place where people can play
import Foundation

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

//1) Without looking at the Big O Cheatsheet, write down the average time and space complexity for bubble sort, insertion sort, selection sort, mergesort, and quicksort.

//    Bubble sort       - T: O(n^2),    S: O(1)
//    Insertion sort    - T: O(n^2),    S: O(1)
//    Selection sort    - O(n^2),       S: O(1)
//    Mergesort         - T: O(n log n), S: O(n)
//    Quicksort         - O(n log n),   S: O(log n)


//2) What is the advantage of partitioning quicksort in place?
    // Wouldn't need to crate another array, so the space complexity would be smaller

//3) Without looking, implement quicksort.

    func partition(inout array: [Int], first: Int, last: Int) -> Int {
        let pivot = array[first]
        var leftMark = first + 1
        var rightMark = last
    
        while leftMark <= rightMark {
            while leftMark <= rightMark && array[leftMark] < pivot {
                leftMark = leftMark + 1
            }
            while leftMark <= rightMark && array[rightMark] > pivot {
                rightMark = rightMark - 1
            }
            if  leftMark < rightMark {
                swap(&array[leftMark], &array[rightMark])
            }
        }
        if first != rightMark {
            swap(&array[first], &array[rightMark])
        }
        return rightMark
    }


    func quickSort(inout array: [Int], first: Int, last: Int) {
        if first >= last { return }
        let splitPoint = partition(&array, first: first, last: last)
        quickSort(&array, first: first, last: splitPoint - 1)
        quickSort(&array, first: splitPoint + 1, last: last)
    }
    func quickSort(inout arr: [Int]){
        quickSort(&arr, first: 0, last: arr.count - 1)
    }

    //Test
    var numberList = [4, 1, 35, 22, 66, 12]
    quickSort(&numberList)


/*4)  Write a function to generate an array of random numbers bounded between 1..<10,000 of size 10,000.

Int(arc4random_uniform(UInt32(10000)))

Compare the time it takes to run mergesort, quicksort, and quicksort with the median.
https://gist.github.com/gummibeatz/8ff29bcec54d7e3ef683
*/


    func randomNumbers(size: Int, highestValue: Int) -> [Int] {
    
        var array = Array<Int>(count: size, repeatedValue: 0)
    
        for i in 0..<array.count {
        
            array[i] = Int(arc4random_uniform(UInt32(highestValue)))  //10.000 times
        }
        return array
    }

    var randomArray = randomNumbers(10000, highestValue: 10000)

    quickSort(&randomArray, first: 0, last: randomArray.count - 1)


//5) Describe the algorithmic difference between mergesort and quicksort. Where does the sorting happen? As the recursive calls are being pushed onto the stack or as they are being popped off?

//    Quicksort - the sorting happens when the calls are being pushed onto the stack
//    Mergesort - the sorting happens when the calls are being popped off.


/* 6)  Given an array of strings containing “[“,”]”,”{“,”}”,”(“,”)”. Output whether or not the parentheses are balanced.
Good examples: () [] () ([]()[])
Bad examples: ( ( ] ([)]

func isBalanced(paren: [String]) -> Bool {
 // will finish it in a few minutes....
}

*/











