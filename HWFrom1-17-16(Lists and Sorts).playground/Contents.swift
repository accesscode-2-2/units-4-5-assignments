//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

1) 

Given a partially filled in Sudoku board and a set of coordinates in that board pointing to an empty square, write a function that returns a list containing all numbers that the empty square could be.

Input: sudokuBoard:[[Int?]]. (Each location on the board will be either be an Int from 1-9 or nil(empty cell))
row: Int
col: Int

func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int) -> [Int] {
return [Int]()
}

*/

var sudoku =
   [[2,7,1,9,5,4,6,8,3],
    [5,9,3,6,2,8,1,4,7],
    [4,6,8,1,3,7,2,5,9],
    [7,3,6,4,1,5,8,9,2],
    [1,5,9,8,6,2,3,7,4],
    [8,4,2,3,7,9,5,6,1],
    [9,8,5,2,4,1,7,3,6],
    [6,1,7,5,9,3,4,2,8],
    [3,2,4,7,8,6,9,1,5]]

var incompleteSudoku =

   [[5,0,8,0,7,3,1,9,0],
    [9,0,0,6,0,0,4,0,8],
    [0,0,0,9,0,8,0,3,5],
    [0,7,0,0,1,0,0,6,0],
    [0,0,2,0,0,0,9,0,0],
    [0,1,0,0,0,0,0,8,0],
    [1,9,0,3,0,6,0,0,0],
    [2,0,3,0,0,7,0,0,9],
    [0,8,7,1,9,0,3,0,4]]


func getValidNumbers(sudokuBoard: [[Int]], row: Int, col: Int) -> [Int] {
    
    let topleftX = row - (row % 3)
    let topleftY = col - (col % 3)
    var grid = [Int]()

    for i in Range(start: topleftX, end: topleftX+3) {
        
        for j in Range(start: topleftY, end: topleftY+3) {
            grid.append(sudokuBoard[i][j])
        }
        
    }
    let complete = Set([1, 2, 3, 4, 5, 6, 7, 8, 9])
    
    let column = sudokuBoard[col]
    var rows = [Int]()
    for cell in 0..<sudokuBoard.count {
        
        rows.append(sudokuBoard[cell][row])
        
    }
    
    let invalid = Set(column).union(Set(rows))
    
    
    return(Array(complete.subtract(invalid).subtract(Set(grid))))
    
  
    
}



/*
2) 
rotate a matrix by ninety degrees
Input: matrix:[[Int]]
Output: matrix: [[Int]]

Sample Input: [[1,2,3,4],
[5,6,7,8],
[9,0,1,2],
[3,4,5,6]]

Sample Output: [ [3,9,5,1],
*/

func rotateMatrix(matrix: [[Int]]) -> [[Int]] {
    
    
    var temparr = [[Int]](count: 4, repeatedValue: [])
    
    for var i = 0; i < matrix.count; i++ {
        
        for var j = matrix.count - 1; j >= 0; j-- {
            
            temparr[i].append(matrix[j][i])
            print(j, i)
            
        }
    
    }
    
    
    return temparr
}
print(rotateMatrix([
    [1,2,3,4],
    [5,6,7,8],
    [9,0,1,2],
    [3,4,5,6]]
))



// 3)

// split ABCD into two groups, AB and CD and compare those which will be fewer steps than checking all of them, then merge the two groups



