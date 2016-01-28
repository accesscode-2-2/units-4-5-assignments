//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//41Array + Lists Homework
//
//Given a partially filled in Sudoku board and a set of coordinates in that board pointing to an empty square, write a function that returns a list containing all numbers that the empty square could be.
//
//Input: sudokuBoard:[[Int?]]. (Each location on the board will be either be an Int from 1-9 or nil(empty cell))
//row: Int
//col: Int
//
//func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int) -> [Int] {
//    return [Int]()
//}
//
//Sample input:  ,4,4
//
//sample output: [1,3,4,5,6,8]
//
//
//rotate a matrix by ninety degrees
//Input: matrix:[[Int]]
//Output: matrix: [[Int]]
//
//Sample Input: [[1,2,3,4],
//[5,6,7,8],
//[9,0,1,2],
//[3,4,5,6]]
//
//Sample Output: [ [3,9,5,1],
//[4,0,6,2],
//[5,1,7,3],
//[6,2,8,4] ]
//Design an optimal algorithm for sorting four elements A, B, C, and D. By optimal, I mean one that sorts using the minimum number of comparisons. Hint: you may want to start by putting the first two items in order and the last two items in order... that takes two comparisons. How many more comparisons do you need to find the minimum element? The maximum? Once you’ve found the min and max, what if any additional comparisons are needed?



/*
Work on your solutions here.
Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw
1)
//So this is my plan
// Step 1: Print out the the suduko board as as squar with columns
// Step 2: Make an array *possibleOutcomes
// Step 3: Remove the numbers that appear on the x and y axises off possibleOutcomes as they appear
            -The numbers remainin gwould be the possible outcome for that coordiante

2)
3)
*/

//i = r
//j = c

/////////////////////////////////Problem 1
let sudokuBoard: [[Int]] = [
    [5, 0, 8, 0, 7, 3, 1, 9, 0],
    [9, 0, 0, 6, 0, 0, 4, 0, 8],
    [0, 0, 0, 9, 0, 8, 0, 3, 5],
    [0, 7, 0, 0, 0, 0, 0, 6, 0],
    [0, 0, 2, 0, 0, 0, 9, 0, 0],
    [0, 1, 0, 0, 0, 0, 0, 8, 0],
    [1, 9, 0, 3, 0, 6, 0, 0, 0],
    [2, 0, 3, 0, 0, 7, 0, 0, 9],
    [0, 8, 7, 1, 9, 0, 3, 0, 4]]

let possibleOutcomes: Set<Int> = [1,2,3,4,5,6,7,8,9]


for var i = 0; i <  sudokuBoard.count; i++ {
    var line = ""
    for  var j = 0; j < sudokuBoard[i].count; j++ {
        line += String(sudokuBoard[i][j])
        line += " "
        
        

    }
    //print(sudokuBoard [4][4])
    print(line)

}
//print(sudokuBoard [4][4])
// print(sudokuBoard)
//print("sudokuBoard equals \(sudokuBoard) at iteration \(i)")

func getValidNumbers(sudokuBoard:[[Int?]], i:Int, j:Int) -> [Int] {
    return [Int]()
}
/////////////////////////////////Problem 2

let matrix: [[Int]] =
[[1,2,3,4],
    [5,6,7,8],
    [9,0,1,2],
    [3,4,5,6]]


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

/////////////////////////////////Problem 2
