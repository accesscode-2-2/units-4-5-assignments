//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

1)
*/
let board : [[Int?]] = [ [1,   7, 9, 8, 5, 4, 3, nil, 6],
                         [nil, 1, 4,nil,5, 4, 3, nil, 6],
                         [1, nil, 9, 8, 5, 4, 3, nil, 6],
                         [1,   2, 9, 8, 5, 4, 3, nil, 6],
                         [1, nil, 9, 8, 5, 4, 3, nil, 6],
                         [1, nil, 9, 8, 5, 4, 3, nil, 6],
                         [1, nil, 9, 8, 5, 4, 3, nil, 6],
                         [1, nil, 9, 8, 5, 4, 3, nil, 6],
                         [1, nil, 9, 8, 5, 4, 3, nil, 6] ]

func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int) -> [Int] {

    let completeSet = Set.init(arrayLiteral: 1,2,3,4,5,6,7,8,9)

    var alreadyUsedSet = Set<Int>()

    for i in 0..<sudokuBoard.count {

        if let colValue = sudokuBoard[row][i] {
            alreadyUsedSet.insert(colValue)
        }
        if let rowValue = sudokuBoard[i][col] {
            alreadyUsedSet.insert(rowValue)
        }

    }

    let refRow = (row/3)*3
    let refCol = (col/3)*3

    for r in refRow..<(refRow+3) {
        for c in refCol..<(refCol+3) {
            if let squareValue = sudokuBoard[r][c] {
                alreadyUsedSet.insert(squareValue)
            }
        }
    }

    let possibleValues = completeSet.subtract(alreadyUsedSet)

    return Array(possibleValues)
}

getValidNumbers(board, row: 1, col: 3)

/*
2) 
*/

func rotateNinetyDegrees(matrix : [[Int]]) -> [[Int]] {

    var rotatedAray = [[Int]]()

    for i in 0..<matrix.count {
        var colToRow = [Int]()

        for var j = (matrix.count-1); j >= 0; j-- {
            colToRow.append(matrix[j][i])
        }
        rotatedAray.append(colToRow)
    }

    return rotatedAray
}

let array = [[1,3,4],
             [5,2,6],
             [9,8,4]]
rotateNinetyDegrees(array)

/*
3)
*/

func sortFour(inout array: [Int]) {

    if array[0] > array[1] {
        let temp = array[1]
        array[1] = array[0]
        array[0] = temp
    }

    if array[2] > array[3] {
        let temp = array[3]
        array[3] = array[2]
        array[2] = temp
    }


}




