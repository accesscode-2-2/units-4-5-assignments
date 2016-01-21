//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
Work on your solutions here.
Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw
1) Given a partially filled in Sudoku board and a set of coordinates in that board pointing to an empty square, write a function that returns a list containing all numbers that the empty square could be.

2)
3)
*/

// Sudoku Rules: Each row, column and square (9 spaces each) needs to be filled out with the numbers 1-9, without repeating any numbers within the row, column or square.

// 1) grab all numbers from the row and save them in an array
// 2) grab all numbers from that column and save them in an array
// 3) grab all numbers from square and save in an array
// 4) loop through arrays, if number is not in 1...9, it is a potential solution to the puzzle!
// 5) return those number(s)

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

print(sudokuBoard[0][1]) // coordinates for 1, 2

var rowNumbers = [Int]()
var columnNumbers = [Int]()

func getRowNumbers(sudokuBoard: [[Int]], row: Int, column: Int) -> [Int] {
    for i in sudokuBoard[row] {
        if i > 0 {
            rowNumbers.append(i)
        }
    }
return rowNumbers
}

func getColumnNumbers(sudokuBoard: [[Int]], row: Int, column: Int) -> [Int] {
    for i in sudokuBoard {
        if i[column] > 0 {
            columnNumbers.append(i[column])
        }
    }
    return columnNumbers // should be [5, 9, 1, 2]
}

func returnPotentialNumbers(rowNumbers: [Int], columnNumbers: [Int]) -> Set<Int> {
    
    let allNumbers = rowNumbers + columnNumbers
    let setOfAllNumbers = Set(allNumbers)
    let setCompare = Set([1, 2, 3, 4, 5, 6, 7, 8, 9])

   return setOfAllNumbers.exclusiveOr(setCompare)
    }

getRowNumbers(sudokuBoard, row: 1, column: 0) // test it!
getColumnNumbers(sudokuBoard, row: 1, column: 0) // test it!
returnPotentialNumbers(rowNumbers, columnNumbers: columnNumbers)





