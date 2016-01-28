//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//https://docs.google.com/document/d/1KfnTOtPnBrYPFhBRAQPZBXor_mKDQvuJp4zwZbtHkRs/edit#heading=h.16sfqfmanxte


//1

func printBinaryRepresentation(number:Int) -> Int{
    if (number == 0)
    {
        return 0;
    }
    else
    {
        return (number % 2 + 10 * printBinaryRepresentation(number / 2))
    }
}

// Test
print(printBinaryRepresentation(13))


//2
var swappedArray = [Int]()

func swapAdjacentElements(var array:[Int]) -> [Int]{
    swap(&array[0], &array[1])
        swappedArray.append(array[0])
        swappedArray.append(array[1])
        array .removeAtIndex(0)
        array .removeAtIndex(0)
    if (array.count == 0) {
        return swappedArray
    }
    return swapAdjacentElements(array)
}



//Test
print(swapAdjacentElements([1,2,3,4,5,6]))





//3 

func binarySearch(var array:[Int], number:Int) -> Bool{
 
    let midIndex = array.count / 2
    
    if number == array[midIndex] {
        
        return true
    }
    if number < midIndex {
        array[0..<midIndex]
//         binarySearch(array, number: number)
    }
    if number > midIndex {
        array[midIndex...array.count]
//        binarySearch(array, number: number)
    }
    return false
}

//Test 
print(binarySearch([23, 45, 2, 27], number: 2))






