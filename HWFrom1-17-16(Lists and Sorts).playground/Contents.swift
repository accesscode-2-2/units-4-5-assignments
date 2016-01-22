//: Playground - noun: a place where people can play

import UIKit

/*
Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

1) Get possible numbers in sudoku board

*/

func setValuesToFalse(inout arr:[Bool]) {
    for i in 0..<arr.count {
        arr[i] = false
    }
}

func getValidNumbers(sudokuBoard:[[Int]], row:Int, col:Int) -> [Int] {
    var numberUsed = Array(count: 9, repeatedValue: false) // map each index to a number used
    var invalidNumbers = [Int]()
    var validNumbers = [Int]()
    // add all the numbers in that row to an array
    
    for pos in (0..<sudokuBoard[row].count) {
        let num = sudokuBoard[row][pos]     // subtract one to account for offset
        if num>=0{
            invalidNumbers.append(num)
            
        }
    }
    
    // add all the numbers in that column to an array
    
    for pos in (0..<9) {
        let num = sudokuBoard[pos][col]     // subtract one to account for offset
        if num>=0 && !invalidNumbers.contains(num){
            invalidNumbers.append(num)
        }
    }
    
    
    // check the 3x3 box that it's in
    
    for i in(0..<3) {
        for j in (0..<3) {
            let num = sudokuBoard[row*3+i][col*3+j]
            if num>=0 && !invalidNumbers.contains(num){
                invalidNumbers.append(num)
            }
            
        }
    }
        
        setValuesToFalse(&numberUsed)
        for i in 0..<invalidNumbers.count{
            numberUsed[invalidNumbers[i]-1] = true
        }
        
        for j in 0..<numberUsed.count{
            if !numberUsed[j]{
                validNumbers.append(j+1)
            }
        }
        
        return validNumbers
    }
    
    
    let sudokuBoard = [ [-1, 7,1,9,-1,4,6,8,3], [-1,9,3,6,2,8,1,4,7], [4,6,8,1,3,7,2,5,9], [7,3,6,4,1,5,8,9,2], [1,5,9,8,6,2,3,7,4], [8,4,2,3,7,9,5,6,1], [9,8,5,2,4,1,7,3,6], [6,1,7,5,9,3,4,2,8], [3,2,4,7,8,6,9,1,5] ]
    
    getValidNumbers(sudokuBoard, row: 0, col: 0)




/*
2)rotate a matrix by ninety degrees
*/

let matrix =  [ [1, 2, 3, 4],
                [5, 6, 7, 8],
                [9, 0, 1, 2],
                [3, 4, 5, 6] ]
// m x n matrix
// 0,0 goes to 0,3
// 1,0 goes to 0,2
// 2,0 goes to 0,1
// 3,0 goes to 0,0

func rotateMatrix(matrix:[[Int]])->[[Int]]{
    
    let columns = matrix[0].count
    let rows = matrix.count
    var arr = [[Int]](count: rows, repeatedValue: [Int](count: columns, repeatedValue: 0))
    
    for row in 0..<rows{
        for col in 0..<columns{
            arr [ col ] [ rows - row - 1 ] = matrix [ row ] [ col ];
        }
    }
    
    return arr
}

rotateMatrix(matrix)

/*
3)Design an optimal algorithm for sorting four elements A, B, C, and D. By optimal, I mean one that sorts using the minimum number of comparisons. Hint: you may want to start by putting the first two items in order and the last two items in order... that takes two comparisons. How many more comparisons do you need to find the minimum element? The maximum? Once you’ve found the min and max, what if any additional comparisons are needed?



*/

func mySort(values: [Int]) -> [Int]{

        var left = values[0...1]
    
    if left[0] > left [1]{
        let t = left[0]
        left[0] = left[1]
        left[1] = t
    }
    
    var right = values[2...4]
    
    if right[0] > right [1]{
        let t = right[1]
        right[0] = right[1]
        right[1] = t
    }
    
    
    
}
