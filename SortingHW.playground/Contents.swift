//: Playground - noun: a place where people can play

import Cocoa

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


