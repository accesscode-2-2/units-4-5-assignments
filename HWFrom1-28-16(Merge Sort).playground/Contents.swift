//: Playground - noun: a place where people can play

//https://docs.google.com/document/d/1rlQ3lstnNb3fOR58EwGDysMQ0FSDkUGykcCoU14B9Go/edit#heading=h.za36ai6n5fth


//Insert code here:

func insertionSort(numberList: [Int]) -> [Int]
{
     
    //mutated copy
    var output = numberList
     
    for primaryIndex in 0..<output.count {
         
        let key = output[primaryIndex]
         
        for var secondaryIndex = primaryIndex; secondaryIndex > -1; secondaryIndex-- {
             
            //move into correct position
            if key < output[secondaryIndex] {
                output.removeAtIndex(secondaryIndex + 1)
                output.insert(key, atIndex: secondaryIndex)
            }
        }
    }
    
    return output
    
}

insertionSort([4,5,2,88,7,11])
