//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//: Playground - noun: a place where people can play

//https://docs.google.com/document/d/1rlQ3lstnNb3fOR58EwGDysMQ0FSDkUGykcCoU14B9Go/edit#heading=h.za36ai6n5fth


//Insert code here:

var arr = [10, 4, 6, 12, 3]
var index = 0
var count = arr.count

func insertionSort(inout values: [Int]) {
    print(arr)
    
    func keepSorting(var i: Int) -> Int {
        
        if(i < count) {
            func compare(var j: Int) ->Int {
                if (j < count) {
                    if arr[j] < arr[i] {
                        swap(&arr[i], &arr[j])
                    }
                    j++
                    print(arr)
                    return compare(j)
                }
                print(arr)
                return j

            }
            compare(i)
            
            i++
            print(arr)
            return keepSorting(i)
            
        }
        return i
        
    }
    keepSorting(index)
    
}
insertionSort(&arr)
print(arr)