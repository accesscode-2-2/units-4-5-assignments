//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth

1) Given a partially filled in Sudoku board and a set of coordinates in that board pointing to an empty square, write a function that returns a list containing all numbers that the empty square could be.

Input: sudokuBoard:[[Int?]]. (Each location on the board will be either be an Int from 1-9 or nil(empty cell))
row: Int
col: Int

func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int) -> [Int] {
return [Int]()
}

Sample input:  ,4,4

sample output: [1,3,4,5,6,8]
*/
/*

func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int)->[Int] {
    var availableNumbersMap = Array(count: 9, repeatedValue: true)
    // check rows
    for i in (0..<9) {
        if( i != row && sudokuBoard[i][col] != nil) {
            let usedNumber = sudokuBoard[i][col]!
            availableNumbersMap[usedNumber - 1] = false
        }
    }
    
    //check cols
    for i in (0..<9) {
        if( i != row && sudokuBoard[row][i] != nil) {
            let usedNumber = sudokuBoard[row][i]!
            availableNumbersMap[usedNumber - 1] = false
        }
    }
    
    //check 3x3 box
    let rowMultiplier = row/3           // taking advantage of integer division
    let rowOffset = rowMultiplier*3     // ex: 8/3 = 2
    let colMultiplier = col/3
    let colOffset = colMultiplier*3
    for i in (0..<3) {
        for j in (0..<3) {
            if rowOffset+i != row && colOffset+j != col && sudokuBoard[rowOffset+i][colOffset+j] != nil {
                let usedNumber = sudokuBoard[rowOffset+i][colOffset+i]!
                availableNumbersMap[usedNumber - 1] = false
            }
        }
    }
    
    // convert availableNumbers to an array of Ints
    var availableNumbers = [Int]()
    for i in (0..<availableNumbersMap.count) {
        if availableNumbersMap[i] {                 //number is still valid
            availableNumbers.append(i+1)
        }
    }
    return availableNumbers
}
*/
/* Method 1
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
    
    let sqRow = row/3
    let sqCol = col/3
    
    for r in sqRow..<(sqRow+3) {
        for c in sqCol..<(sqCol + 3) {
            
        if r == row && c == col {
            continue
        }
        if let value = sudokuBoard[r][col] {
            valid.remove(value)
        }
    }
    }
    
    // Turn the set into an array
    return Array<Int>(valid)

}
    let sampleInput: [[Int?]] = [
        [5, 0, 8, 0, 7, 3, 1, 9, 0],
        [9, 0, 0, 6, 0, 0, 4, 0, 8],
        [0, 0, 0, 9, 0, 8, 0, 3, 5],
        [0, 7, 0, 0, 0, 0, 0, 6, 0],
        [0, 0, 2, 0, 0, 0, 9, 0, 0],
        [0, 1, 0, 0, 0, 0, 0, 8, 0],
        [1, 9, 0, 3, 0, 6, 0, 0, 0],
        [2, 0, 3, 0, 0, 7, 0, 0, 9],
        [0, 8, 7, 1, 9, 0, 3, 0, 4]]
    
    getValidNumbers(sampleInput, row: 0, col: 1)
    
  */
    
    //Method 1
    // loop through the row, the column and the box, create a set.
    // call .subtract to get the values
    
    //Method 2
    // loop through the row and create an array with existing integers on the row
    // loop through the column, add the integers on the column to the array if they are not there
    // loop through the box, add the integers on the box to the array if they are not there
    // compare the array with the array [1, 2, 3, 4, 5, 6, 7, 8, 9], the missing integest will be the numbers that the empty square could be.
    
    
//    var sudokuBoard = [
//        [5, 0, 8, 0, 7, 3, 1, 9, 0],
//        [9, 0, 0, 6, 0, 0, 4, 0, 8],
//        [0, 0, 0, 9, 0, 8, 0, 3, 5],
//        [0, 7, 0, 0, 0, 0, 0, 6, 0],
//        [0, 0, 2, 0, 0, 0, 9, 0, 0],
//        [0, 1, 0, 0, 0, 0, 0, 8, 0],
//        [1, 9, 0, 3, 0, 6, 0, 0, 0],
//        [2, 0, 3, 0, 0, 7, 0, 0, 9],
//        [0, 8, 7, 1, 9, 0, 3, 0, 4]]
//
    
    




/*

2) rotate a matrix by ninety degrees
Input: matrix:[[Int]]
Output: matrix: [[Int]]

Sample Input: [[1,2,3,4],
[5,6,7,8],
[9,0,1,2],
[3,4,5,6]]

Sample Output: [ [3,9,5,1],
[4,0,6,2],
[5,1,7,3],
[6,2,8,4] ]


*/

// O(N*M) space
// Extra: think of a way to do the rotation inplace
// meaning don't use any extra arrays.
func rotateMatrix(mat:[[Int]]) -> [[Int]] {
    let newRowCount = mat[0].count // new number of rows will be the same as
    let newColCount = mat.count    // the old number of cols. vice versa for cols
    var newMat = Array(count: newRowCount, repeatedValue: Array(count: newColCount, repeatedValue: 0))
    for i in (0..<mat.count) {
        for j in (0..<mat[0].count) {
            newMat[j][newColCount - 1 - i] = mat[i][j]
        }
    }
    return newMat
}

let rotateInput = [[1,2,3,4],
    [5,6,7,8],
    [9,0,1,2],
    [3,4,5,6]]

rotateMatrix(rotateInput)


/* method 1

func rotate90(matrix: [[Int]]) -> [[Int]] {
    let n = matrix.count
    
    var result: [[Int]] = []
    
    for _ in 0..<n {
        var row: [Int] = []
        for _ in 0..<n {
            row.append(0)
        }
        result.append(row)
    }
    
    for (r,row) in matrix.enumerate() {
        for (c,val) in row.enumerate(){
            result[c][n - r - 1] = val
        }
    }
    return result
}

let rotateInput = [[1,2,3,4],
[5,6,7,8],
[9,0,1,2],
[3,4,5,6]]

rotate90(rotateInput)

*/

    // n * n matrix
    
    // 0, 0 -> 0, n - 1
    // r, c -> r, n - c -1
    
    // 0, n - 1 -> n - 1, n - 1
    // r, c -> n - r - 1, c
    
    // n - 1, n -1 -> n - 1, 0
    // r, c -> n
    

//The old matrix [arr1[0], arr1[1], arr1[2],...arr1[n-1],
//                arr2[0], arr2[1], arr2[2],...arr2[n-1],
//                arr3[0], arr3[1], arr3[2],...arr3[n-1],
//                ...
//                arrN[0], arrN[1], arrN[2],...arrN[n-1]]

//   The new matrix will be [arrN[0],...,arr3[0],arr2[0], arr1[0],
//                           arrN[1],...,arr3[1],arr2[1], arr1[1],
//                           arrN[2],...,arr3[2],arr2[2], arr1[2],
//                           ...
//                           arrN[n-1],...,arr3[n-1],arr2[n-1], arr1[n-1]]


/*

3)Design an optimal algorithm for sorting four elements A, B, C, and D. By optimal, I mean one that sorts using the minimum number of comparisons. Hint: you may want to start by putting the first two items in order and the last two items in order... that takes two comparisons. How many more comparisons do you need to find the minimum element? The maximum? Once you’ve found the min and max, what if any additional comparisons are needed?




<<<<<<< HEAD
func mySort(values: [Int]) -> [Int] {
    var left = values[0...1]
    if left[0] > left[1] {
        let t  = left[0]
        left[0] = left[1]
        left[1] = t
    }
    var right = values[2...4]
    if right[0] > right[1] {
        let t = right[0]
        right[0] = right[1]
        right[1] = t
    }
    
    return
    
}
*/
//put A and B in order, and put C and D in order
//find the minAB and maxAB for A and B
//find the minCD and maxCD for C and D
//compare minAB and minCD to get min, compare maxAB and maxCD to get max
//
=======
*/
>>>>>>> df0dff8f1511200af5eae06e949d0d5f90c95b74
