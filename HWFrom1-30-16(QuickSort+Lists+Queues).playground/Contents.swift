//: Playground - noun: a place where people can play

// FOR REFERENCE, insertion sort
func insertionSort(inout numberList:[Int]){
    var x, y, key : Int
    for (x = 0; x < numberList.count; x++) {
        
        key = numberList[x]
        for (y = x; y > -1; y--) {
            if (key < numberList[y]) {
                numberList.removeAtIndex(y + 1)
                numberList.insert(key, atIndex: y)
            }
        }
    }
}

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

//1)

//2)

//3)

//4)

//5)

//6)
