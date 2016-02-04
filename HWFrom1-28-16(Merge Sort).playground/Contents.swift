//: Playground - noun: a place where people can play

//https://docs.google.com/document/d/1rlQ3lstnNb3fOR58EwGDysMQ0FSDkUGykcCoU14B9Go/edit#heading=h.za36ai6n5fth


//Insert code here:

//selection sort
// for i..<n-1{
// select the smallest thing among A[i]...A[n] and
//  swap it with A[i] or pull it out of array and put it first
//}
func selectionSort(inout values: [Int]!) {
    var lowestNum = values[0]
    if values[1] < lowestNum{
        lowestNum == values[1]
        values[1] == values[0]
    }
}

let arrayNums = [1,3,5,7,9]

selectionSort(&array(arrayNums))








//func printAllElements(values: [Int]) {  //takes the array and just prints each element
//    for value in values {
//        print(value)
//    }
//}
//
//func printAllElementsRecursive(values: [Int]) {  //
//    printElementsHelper(values, index: 0)
//}
//
//func printElementsHelper(values: [Int], index: Int) {
//    if index < values.count {
//        print(values[index])
//        printElementsHelper(values, index: index + 1)
//    }
//}
//
//func setValue(inout array: [Int], value: Int, atIndex index: Int) {
//    array[index] = value
//}
//
//var values = [10, 20, 30]
//printAllElements(values)
//
//setValue(&values, value: 100, atIndex: 1)
//values
//
//func reverse(inout array: [Int]) {
//    for i in 0..<array.count / 2 {
//        swap(&array[i], &array[array.count - i - 1])
//    }
//}
//reverse(&values)
//values
//
//
//printAllElements(arrayNums)





