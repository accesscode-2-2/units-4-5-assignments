//: Playground - noun: a place where people can play

//https://docs.google.com/document/d/1rlQ3lstnNb3fOR58EwGDysMQ0FSDkUGykcCoU14B9Go/edit#heading=h.za36ai6n5fth


//Insert code here:
func selectionSort(inout values: [Int]) -> [Int] {
    
    recursiveLoop(&values, index: 0)
    
    return values
}

func recursiveLoop(inout values: [Int], index: Int){
    if index < values.count {
        var minimumIndex = index
        innerRecursiveLoop(&values, index: index + 1, minimumIndex: &minimumIndex)
        
        if minimumIndex != index {
            swap(&values[index], &values[minimumIndex])
        }
        recursiveLoop(&values, index: index + 1)
    }
    
}

func innerRecursiveLoop(inout values: [Int], index: Int, inout minimumIndex: Int) {
    if index < values.count {
        
        if values[index] < values[minimumIndex] {
            minimumIndex = index
        }
        
        innerRecursiveLoop(&values, index: index + 1, minimumIndex: &minimumIndex)
    }
}

var array = [50, 46, 82, 19, 33, 35, 99, 2, 5, 1009]
selectionSort(&array)
