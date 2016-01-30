//: Playground - noun: a place where people can play

//https://docs.google.com/document/d/1rlQ3lstnNb3fOR58EwGDysMQ0FSDkUGykcCoU14B9Go/edit#heading=h.za36ai6n5fth


//Insert code here:

var array = [1, 2, 6, 4, 7]
swap(&array[0], &array[1])
array // [2, 1]


func selectionSort(var arr: [Int]) -> [Int]
{
    var minIndex = 0
    
    for i in 0..<arr.count {
        minIndex = i
        
        for j in (i + 1)..<arr.count {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
        }
        
        if (minIndex != i) {
            swap(&arr[i], &arr[minIndex])
        }
    }
    return arr;
}