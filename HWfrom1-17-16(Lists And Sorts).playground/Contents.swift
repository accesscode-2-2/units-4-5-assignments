//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
Work on your solutions here.
Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw
1) Given a partially filled in Sudoku board and a set of coordinates in that board pointing to an empty square, write a function that returns a list containing all numbers that the empty square could be.
2) Rotate a matrix by ninety degrees
3) Design an optimal algorithm for sorting four elements A, B, C, and D. By optimal, I mean one that sorts using the minimum number of comparisons. Hint: you may want to start by putting the first two items in order and the last two items in order... that takes two comparisons. How many more comparisons do you need to find the minimum element? The maximum? Once you’ve found the min and max, what if any additional comparisons are needed?
*/

// 1) review the rules of Sudoku: Each row, column and square (9 spaces each) needs to be filled out with the numbers 1-9, without repeating any numbers within the row, column or square
// 2) grab all numbers from the row and save them in an array
// 3) grab all numbers from that column and save them in an array
// 4) grab all numbers from square and save in an array
// 5) loop through arrays, if number is not in 1...9, save it in an array
// 6) return those numbers - these are your potential answers

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
var boxNumbers = [Int]()

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
getColumnNumbers(sudokuBoard, row: 1, column: 0)
returnPotentialNumbers(rowNumbers, columnNumbers: columnNumbers) // <--- here are the potential numbers!!

// 1b) get numbers from specific quadrants
// This code is way too long, see refactored version below.

func getQuadrantNumbers(sudokuBoard: [[Int]], row: Int, column: Int) -> [Int] {
    
    let point = (x: row, y: column)
    
    switch point {
    case let q1 where (point.x >= 0 && point.x <= 2) && (point.y >= 0 && point.y <= 2):
        print("\(q1) is in quadrant 1")
        
        for i in sudokuBoard[0][0...2] { 
            if i > 0 {
               boxNumbers.append(i)
                }
            }
        for i in sudokuBoard[1][0...2] {
            if i > 0 {
                boxNumbers.append(i)
            }
        }
        for i in sudokuBoard[2][0...2] {
            if i > 0 {
                boxNumbers.append(i)
            }
        }
        
    case let q2 where (point.x >= 0 && point.x <= 2) && (point.y >= 3 && point.y <= 5):
        print("\(q2) is in quadrant 2")
        
        for i in sudokuBoard[0][3...5] {
            if i > 0 {
                boxNumbers.append(i)
            }
        }
        for i in sudokuBoard[1][3...5] {
            if i > 0 {
                boxNumbers.append(i)
            }
        }
        for i in sudokuBoard[2][3...5] {
            if i > 0 {
                boxNumbers.append(i)
            }
        }

    case let q3 where (point.x >= 0 && point.x <= 2) && (point.y >= 6 && point.y <= 8):
        print("\(q3) is in quadrant 3")
        
        for i in sudokuBoard[0][6...8] {
            if i > 0 {
                boxNumbers.append(i)
            }
        }
        for i in sudokuBoard[1][6...8] {
            if i > 0 {
                boxNumbers.append(i)
            }
        }
        for i in sudokuBoard[2][6...8] {
            if i > 0 {
                boxNumbers.append(i)
            }
        }
        
    case let q4 where (point.x >= 3 && point.x <= 5) && (point.y >= 0 && point.y <= 2):
        print("\(q4) is in quadrant 4")
        
        for i in sudokuBoard[3][0...2] {
            if i > 0 {
                boxNumbers.append(i)
            }
        }
        for i in sudokuBoard[4][0...2] {
            if i > 0 {
                boxNumbers.append(i)
            }
        }
        for i in sudokuBoard[5][0...2] {
            if i > 0 {
                boxNumbers.append(i)
            }
        }
        
    case let q5 where (point.x >= 3 && point.x <= 5) && (point.y >= 3 && point.y <= 5):
        print("\(q5) is in quadrant 5")
        
    case let q6 where (point.x >= 3 && point.x <= 5) && (point.y >= 6 && point.y <= 8):
        print("\(q6) is in quadrant 6")
        
    case let q7 where (point.x >= 6 && point.x <= 8) && (point.y >= 0 && point.y <= 2):
        print("\(q7) is in quadrant 7")
        
    case let q8 where (point.x >= 6 && point.x <= 8) && (point.y >= 3 && point.y <= 5):
        print("\(q8) is in quadrant 8")
        
    case let q9 where (point.x >= 6 && point.x <= 8) && (point.y >= 6 && point.y <= 8):
        print("\(q9) is in quadrant 9")
        
    default:
        print("coordinates unknown.")
    }
    return boxNumbers
}
getQuadrantNumbers(sudokuBoard, row: 1, column: 4) // test it!
// Note: alternately, if you divide quadrants by 3, you will get the coordinate.



// HOMEWORK REVIEW NOTES:

let sampleInput: [[Int?]] =
[[5,0,8,9,0,0,0,0,0],
    [0,7,3,6,0,0,9,0,8],
    [1,9,0,4,0,8,0,3,5],
    [0,7,0,0,0,2,0,1,0],
    [0,0,0,0,0,0,0,0,0],
    [0,6,0,9,0,0,0,8,0],
    [1,9,0,2,0,3,0,8,7],
    [3,0,6,0,0,7,1,9,0],
    [0,0,0,0,0,9,3,0,4]]

func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int) -> [Int] {
    var valid: Set<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    for c in 0..<sudokuBoard[row].count {
        if c == col {
            continue
        }
        if let value = sudokuBoard[row][c] {
            valid.remove(value)
        }
    }
    
    for r in 0..<sudokuBoard.count {
        if r == row {
            continue
        }
        if let value = sudokuBoard[r][col] {
            valid.remove(value)
        }
    }
    
    let sqRow = row / 3
    let sqCol = col / 3
    
    for r in sqRow..<(sqRow + 3) {
        for c in sqCol..<(sqCol + 3) {
            if r == row && c == col {
                continue
            }
            if let value = sudokuBoard[r][c] {
                valid.remove(value)
            }
        }
    }
    
    // Turn the set into an array
    return Array<Int>(valid)
}
getValidNumbers(sampleInput, row: 0, col: 1)


// 2.
let matrix = [[1,2,3,4], // this is a 4X4 array
              [5,6,7,8],
              [9,0,1,2],
              [3,4,5,6]]

func rotate(matrix: [[Int]]) -> [[Int]] {
    let n = matrix.count
    
    var result: [[Int]] = [] // start with empty array
    
    for _ in 0..<n { // initialize empty matrix
        var row: [Int] = []
        for _ in 0..<n {
            row.append(0)
        }
        result.append(row)
    }
    for (r, row) in matrix.enumerate() {
        for (c, val) in row.enumerate() {
            result[c][n - r - 1] = val
        }
    }
    return result
}
rotate(matrix)

// 3) 

// use merge sort
// walk through array, compare values:

func mySort(values: [Int]) -> [Int] {
    var left = values[0...1]
    if left[0] > left[1] {
        let t = left[0]
        left[0] = left[1]
        left[1] = t
    }
    
    var right = values[2...4]
    if right[0] > right[1] {
        let t = right[1]
        right[0] = right[1]
        right[1] = t
    }
    
    // 1 3
    // 2 4
    
    return []
}

// n x n matrix

// 4 - 0 - 1 = 3
//
// 0, 0 -> 0, n - 1
//   r, c -> r, n - c - 1
// 0, n - 1 -> n - 1, n - 1
//   r, c -> n - r - 1, c
// n - 1, n - 1 -> n - 1, 0
//   r, c -> n - r - 1
// n - 1, 0 -> 0, 0

/*
------------
fib(5)
a = 3
b = 4
------------
fib(3)
a = 1
b = 2
------------
fib(2)
a = 0
b = 1
------------
fib(0) 1
*/