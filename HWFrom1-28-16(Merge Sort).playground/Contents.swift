//: Playground - noun: a place where people can play

//https://docs.google.com/document/d/1rlQ3lstnNb3fOR58EwGDysMQ0FSDkUGykcCoU14B9Go/edit#heading=h.za36ai6n5fth


//Insert code here:

func recursiveInsertionSort<T: Comparable>(inout arr: [T], index: Int){

    if index == arr.count {
        return
    }

    findAndInsert(&arr, toIndex: index, compared: 0)
    recursiveInsertionSort(&arr, index: index+1)
}

func findAndInsert<T: Comparable>(inout arr: [T], toIndex: Int, compared: Int) {

    if toIndex == 0 || compared == toIndex {
        return
    }

    if arr[toIndex] < arr[compared] {
        let temp = arr[toIndex]
        arr.removeAtIndex(toIndex)
        arr.insert(temp, atIndex: compared)
        return
    }

    findAndInsert(&arr, toIndex: toIndex, compared: compared+1)
}

var array = [8,2,33,1,13,66]
recursiveInsertionSort(&array, index: 0)

//Find next min and swap with current index
func recursiveSelectionSort<T: Comparable>(inout arr: [T], index: Int) {

    if index == arr.count {return}

    let indexOfMin = indexOfNextMin(arr, from: index, lastMin: index)
    swap(&arr[index], &arr[indexOfMin])
    recursiveInsertionSort(&arr, index: index+1)

}

func indexOfNextMin<T: Comparable>(arr: [T], from: Int, var lastMin: Int) -> Int {

    if from == arr.count {return lastMin}

    if arr[from] < arr[lastMin] {
        lastMin = from
    }
    return indexOfNextMin(arr, from: from+1, lastMin: lastMin)
}

var array2 = [2,41,13,63,12,6,1]
recursiveSelectionSort(&array2, index: 0)


func mult(a: Int,_ b: Int) -> Int{

    if a == 0 || b == 0{
        return 0
    }

    if b == 1 {
        return a
    }

    if b < 0 {
        return 0 - (a + mult(a, (0 - b) - 1))
    }
    else{
        return a + mult(a, b - 1)
    }
}

mult(-3, -6)