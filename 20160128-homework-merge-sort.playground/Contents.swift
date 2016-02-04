//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

/* 

Use recursion to implement Insertion Sort in Swift:

Requirements:
You may not use loops
Your implementations should be in-place (try not to create additional arrays)
You should implement and use additional helper functions

Tips:
Add additional parameters to your helper functions to pass information between recursive calls
You can use the swap function to exchange two values in a mutable (var) array:

var array = [1, 2]
swap(&array[0], &array[1])
array // [2, 1]

// Insertion Sort from Stack Overflow: 
public static int[] RecursiveInsertionSort(int[] array, int n) {
int i;
if (n > 1)
RecursiveInsertionSort(array, n - 1);
else {
int k = array[n];
i = n - 1;
while (i >= 0  & &  array[i] > k) {
array[i + 1] = array[i];
i = i - 1;
}
array[i + 1] = k;
}
return array;
}
*/

// regular insertion sort:
func exchange<T>(inout data: [T], i:Int, j:Int) {
    let temp:T = data[i]
    data[i] = data[j]
    data[j] = temp
}

func insertionSort(var unsortedArray:Array<Int>)->Array<Int>{
    if(unsortedArray.count<2) {
        return unsortedArray
    }
    for var j = 1; j < unsortedArray.count; j++ {
        var i = j
        while i>0 && unsortedArray[i-1]>unsortedArray[i] {
            exchange(&unsortedArray, i: i-1, j: i)
            i--;
        }
    }
    return unsortedArray;
}
insertionSort([3, 4, 5, 1, 2])

// Cameron's notes for homework:
func printAllElements(values: [Int]) {
    for value in values {
        print(value)
    }
}

func printAllElementsRecursive(values: [Int]) {
    printElementsHelper(values, index: 0)
}

func printElementsHelper(values: [Int], index: Int) {
    if index < values.count {
        print(values[index])
        printElementsHelper(values, index: index + 1)
    }
}

func setValue(inout array: [Int], value: Int, atIndex index: Int) {
    array[index] = value
}

var values = [10, 20, 30]
printAllElements(values)

setValue(&values, value: 100, atIndex: 1)
values



func reverse(inout array: [Int]) {
    for i in 0..<array.count / 2 {
        swap(&array[i], &array[array.count - i - 1])
    }
}

reverse(&values)
values


