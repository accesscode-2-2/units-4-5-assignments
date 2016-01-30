//: Playground - noun: a place where people can play

import UIKit


func insertionSort(var numbers:[Int], index:Int) -> [Int]{
    
    if index == numbers.count{
        return numbers
    }
    else{

        var temp = numbers[index],
        iter = 0,           //final index
        iter2 = 0,
        maxIter = index - 1
        
        while (iter <= maxIter  &&  numbers[iter] < temp) {

            iter++
        }
        
        while iter2<=maxIter{
            numbers[maxIter-iter2+1] = numbers[maxIter-iter2]
            iter2++
        }

        
        numbers[iter] = temp;
        
        return insertionSort(numbers, index: index+1)
    }
    
}




insertionSort([9, 3, 4, 2, 1], index: 1)