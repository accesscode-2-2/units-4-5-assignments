//: Playground - noun: a place where people can play

import Cocoa

//1.
var sudokuBoard = [
    [5, 0, 8, 0, 7, 3, 1, 9, 0],
    [9, 0, 0, 6, 0, 0, 4, 0, 8],
    [0, 0, 0, 9, 0, 8, 0, 3, 5],
    [0, 7, 0, 0, 0, 0, 0, 6, 0],
    [0, 0, 2, 0, 0, 0, 9, 0, 0],
    [0, 1, 0, 0, 0, 0, 0, 8, 0],
    [1, 9, 0, 3, 0, 6, 0, 0, 0],
    [2, 0, 3, 0, 0, 7, 0, 0, 9],
    [0, 8, 7, 1, 9, 0, 3, 0, 4]]

func getValidOutputs(arr:[[Int]], r:Int, c:Int) -> [Int] {
    //checking row
    var validNumbers = Array(count: 10, repeatedValue: true)
    for i in 0..<sudokuBoard.count {
        let numberToBeMarked = sudokuBoard[r][i]
       validNumbers[numberToBeMarked] = false
        
    }
    
    
    
    //checking column
    for i in 0..<sudokuBoard.count {
        let numberToBeMarked = sudokuBoard[i][c]
        validNumbers[numberToBeMarked] = false
    }
    
    //checking 3 x 3 
    
    return [Int]()
}

getValidOutputs(sudokuBoard, r: 0, c: 1)
//check to see if the number is equal to any number in the row
//check to see if the number is equal to any number in the column
//check to see if the number is equal to any in the 3 * 3
//if no matches, print the number

//2. 
var sampleInput =
[[1,2,3,4],
 [5,6,7,8],
 [9,0,1,2],
 [3,4,5,6],
 [3,4,5,6]]

func rotateNinetyDegrees(arry:[[Int]]) -> [[Int]] {
    var matrixBoard = Array(count: sampleInput[0].count, repeatedValue: Array(count: sampleInput.count, repeatedValue: 0))
    
    //horizontal
    for i in 0..<sampleInput.count {
        //vertical
        for j in 0..<sampleInput[0].count {
            //new matrix : matrixBoard [horizontal][vertical] =
            //modified original matrix : sampleInput [reversed vertical -> sampleInput.count - 1 - i][revers
            matrixBoard[j][sampleInput.count - 1 - i] = sampleInput[i][j]
        }
    }
    return matrixBoard
}
print(rotateNinetyDegrees(sampleInput))


//let number of rows == number of columns and number of columns == number of rows
//output column(s) in a row(s) in reverse order


//3.
//var array = [4,3,2,1]
//
//func sort(values:[Int]) -> [Int] {
//    let left = values[0...1]
//    return values
//    var left = values[0...1]
//    if left[0] > left[1] {
//        let t = left[0]
//        left[0] = left[1]
//        left[1] = t
//    }
//    var right = values[2...4]
//    if right[0] > right[1] {
//        let t = right[1]
//        right[0] = right[1]
//        right[1] = t
//        print(right)
//    }
//}

//print(sort(array))

var data = [4, 3, 2, 1]

func merge_sort<T: Comparable>(inout array: [T]){
    if array.count <= 1{
        return
    }
    
    // Split lists into equal sized sublists
    var middle = array.count
    middle /= 2
    var left = [T]()
    var right = [T]()
    
    for x in 0..<middle{
        left.append(array[x])
    }
    
    for y in middle..<array.count{
        right.append(array[y])
    }
    
    // Recursively sort sublists
    merge_sort(&left)
    merge_sort(&right)
    
    // Merge the sorted sublists
    array = merge(&left,right: &right)
}

/*
Merges two lists
*/
func merge<T: Comparable>(inout left: [T], inout right:[T])-> [T]{
    
    var result = [T]()
    
    // Merge taking lowest value first seen
    while (!left.isEmpty && !right.isEmpty){
        if left[0] <= right[0]{
            result.append(left[0])
            left.removeAtIndex(0)
        }else{
            result.append(right[0])
            right.removeAtIndex(0)
        }
    }
    
    // Handle remaining elements
    while !left.isEmpty{
        result.append(left[0])
        left.removeAtIndex(0)
    }
    while !right.isEmpty{
        result.append(right[0])
        right.removeAtIndex(0)
    }
    
    return result
}

merge_sort(&data)

