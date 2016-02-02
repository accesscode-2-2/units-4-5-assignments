//: Playground - noun: a place where people can play

//https://docs.google.com/document/d/1rlQ3lstnNb3fOR58EwGDysMQ0FSDkUGykcCoU14B9Go/edit#heading=h.za36ai6n5fth


//Insert code here:

func recursiveInsertionSort<T: Comparable>(inout arr: [T], index: Int){

    if index == arr.count {
        return
    }

    findAndInsert(&arr, fromIndex: index, compared: 0)
    recursiveInsertionSort(&arr, index: index+1)
}

func findAndInsert<T: Comparable>(inout arr: [T], fromIndex: Int, compared: Int) {

    if fromIndex == 0 || compared == fromIndex {
        return
    }

    if arr[compared] > arr[fromIndex] {
        let temp = arr[fromIndex]
        arr.removeAtIndex(fromIndex)
        arr.insert(temp, atIndex: compared)
        return
    }

    findAndInsert(&arr, fromIndex: fromIndex, compared: compared+1)
}

var array = [8,2,33,1,13,66]
recursiveInsertionSort(&array, index: 0)

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


