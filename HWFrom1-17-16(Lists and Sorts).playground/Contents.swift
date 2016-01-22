//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

*/


// 1) Given a partially filled in Sudoku board and a set of coordinates in that board pointing to an empty square, write a function that returns a list containing all numbers that the empty square could be.


func getAllColArrayIndexRefactored(paramCol: Int, board: [[Int]]) -> [String: [Int]] {
    // grab all the index Array that are associated with col
    let col = paramCol-1
    var xArray = [Int]()
    let numberOfColBox = Int(sqrt(Double(board.count)))
    var xNumber = (col)/numberOfColBox
    for _ in 0..<numberOfColBox - 1 {
        xArray.append(xNumber)
        xNumber += numberOfColBox
        
    }
    
    var xArrayAtIndex = [Int]()
    var n = Int()
    if (col % numberOfColBox == 0) {
        n = 0
    } else if (col % numberOfColBox == 1) {
        n = 1
    } else {
        n = 2
    }
    for _ in 0..<numberOfColBox - 1 {
        xArrayAtIndex.append(n)
        n += numberOfColBox
    }
    return ["sudokuSmallBox": xArray, "indexNumber":xArrayAtIndex]
}


func getAllRowArrayIndexRefactored(paramRow: Int, board: [[Int]]) -> [String: [Int]] {
    // grab all the index Array that are associated with row
    let row = paramRow - 1
    var yArray = [Int]()
    let numberOfRowBox = Int(sqrt(Double(board.count)))
    var yNumber = row / numberOfRowBox
    
    for _ in 0..<numberOfRowBox - 1 {
        yArray.append(yNumber)
        yNumber += 1
    }
    
    // grall all the index number that are row Array
    var yArrayAtIndex = [Int]()
    var n = Int()
    if(row % numberOfRowBox == 0){
        n = 0
    } else if (row % numberOfRowBox == 1) {
        n = 3
    } else {
        n = 6
    }
    
    for _ in 0..<numberOfRowBox - 1 {
        yArrayAtIndex.append(n)
        n += 1
    }
    
    return ["sudokuSmallBox":yArray, "indexNumber":yArrayAtIndex]
}



func getAllColArrayIndex(paramCol: Int) -> [String: [Int]] {
    // grab all the index Array that are associated with col
    let col = paramCol-1
    var xArray = [Int]()
    var xNumber = (col)/3
    xArray.append(xNumber)
    xNumber += 3
    xArray.append(xNumber)
    xNumber += 3
    xArray.append(xNumber)
    var xArrayAtIndex = [Int]()
    if (col % 3 == 0) {
        xArrayAtIndex.appendContentsOf([0,3,6])
    } else if (col % 3 == 1) {
        xArrayAtIndex.appendContentsOf([1,4,7])
    } else {
        xArrayAtIndex.appendContentsOf([2,5,8])
    }
    
    return ["sudokuSmallBox": xArray, "indexNumber":xArrayAtIndex]
}

func getAllRowArrayIndex(paramRow: Int) -> [String: [Int]] {
    // grab all the index Array that are associated with row
    let row = paramRow - 1
    var yArray = [Int]()
    var yNumber = (row)/3
    yArray.append(yNumber)
    yNumber += 1
    yArray.append(yNumber)
    yNumber += 1
    yArray.append(yNumber)
    
    // grall all the index number that are row Array
    var yArrayAtIndex = [Int]()
    if(row % 3 == 0){
        yArrayAtIndex.appendContentsOf([0,1,2])
    } else if (row % 3 == 1) {
        yArrayAtIndex.appendContentsOf([3,4,5])
    } else {
        yArrayAtIndex.appendContentsOf([6,7,8])
    }
    
    return ["sudokuSmallBox":yArray, "indexNumber":yArrayAtIndex]
}

func getValidNumbers(sudokuBoard: [[Int]], row: Int, col: Int) -> Set<Int>{
    let colDictionary = getAllColArrayIndexRefactored(col, board: sudokuBoard)
//    let colDictionary = getAllColArrayIndex(col)
//    let rowDictionary = getAllRowArrayIndexRefactored(row, board: sudokuBoard)
    let rowDictionary = getAllRowArrayIndex(row)
    
    var colValue = [Int]()
    for i in colDictionary["sudokuSmallBox"]! {
        for j in colDictionary["indexNumber"]! {
            colValue.append(sudokuBoard[i][j])
        }
    }
    
    var rowValue = [Int]()
    for i in rowDictionary["sudokuSmallBox"]! {
        for j in rowDictionary["indexNumber"]! {
            rowValue.append(sudokuBoard[i][j])
        }
    }
    
    let combinedRowColValue = Set(colValue).union(Set(rowValue))
    let completeNumber = Set([0,1,2,3,4,5,6,7,8,9])
    
    return completeNumber.subtract(combinedRowColValue)
}

let sampleInput =   [[5,0,8,9,0,0,0,0,0],
                    [0,7,3,6,0,0,9,0,8],
                    [1,9,0,4,0,8,0,3,5],
                    [0,7,0,0,0,2,0,1,0],
                    [0,0,0,0,0,0,0,0,0],
                    [0,6,0,9,0,0,0,8,0],
                    [1,9,0,2,0,3,0,8,7],
                    [3,0,6,0,0,7,1,9,0],
                    [0,0,0,0,0,9,3,0,4]]
getValidNumbers(sampleInput, row: 4, col: 4)



// 2) rotate a matrix by ninety degrees
//      Input: matrix:[[Int]]
//      Output: matrix: [[Int]]
//
//      Sample Input: [[1,2,3,4],
//                      [5,6,7,8],
//                      [9,0,1,2],
//                      [3,4,5,6]]
//
//      Sample Output: [[3,9,5,1],
//                      [4,0,6,2],
//                      [5,1,7,3],
//                      [6,2,8,4]]

func rotateMatrixNinetyDegree(matrix: [[Int]]) -> [[Int]] {
    var rotatedMatrix = [[Int]]()
    for i in 0..<matrix[0].count {
        var rowMatrix = [Int]()
        for j in 0..<matrix.count {
            rowMatrix.insert(matrix[j][i], atIndex: 0)
        }
        rotatedMatrix.append(rowMatrix)
    }
    
    return rotatedMatrix
}
let matrix = [[1,2,3,4],
            [5,6,7,8],
            [9,0,1,2],
            [3,4,5,6]]
rotateMatrixNinetyDegree(matrix)


// 3) Design an optimal algorithm for sorting four elements A, B, C, and D. By optimal, I mean one that sorts using the minimum number of comparisons. Hint: you may want to start by putting the first two items in order and the last two items in order... that takes two comparisons. How many more comparisons do you need to find the minimum element? The maximum? Once you’ve found the min and max, what if any additional comparisons are needed?


// Once the the first two and the last two are in order then compare the C element with the B element. If C element is greater than B element then all four elements are in order. if not then compare C with A element, if C < A then insert C before A otherwise after A.

