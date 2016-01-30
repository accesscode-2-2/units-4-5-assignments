//: Playground - noun: a place where people can play

//https://docs.google.com/document/d/1rlQ3lstnNb3fOR58EwGDysMQ0FSDkUGykcCoU14B9Go/edit#heading=h.za36ai6n5fth


//Insert code here:

func insertionSort(var array:[Int], index:Int) -> [Int]{
    
    if index == array.count{
        return array
    }
    else{
        
        var tempArray = array[index],
        i = 0,
        j = 0,
        maxIter = index - 1
        
        while (i <= maxIter  &&  array[i] < tempArray) {
            i++
        }
        while j<=maxIter{
            array[maxIter-j+1] = array[maxIter-j]
            j++
        }
        
        array[i] = tempArray;
        
        return insertionSort(array, index: index+1)
    }
    
}

//Test
insertionSort([44, 7, 2, 25, 0], index: 1)

