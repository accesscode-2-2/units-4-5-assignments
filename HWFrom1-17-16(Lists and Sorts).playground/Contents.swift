//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth

1) Input: sudokuBoard:[[Int?]]. (Each location on the board will be either be an Int from 1-9 or nil(empty cell))
row: Int
col: Int

//check if duplicate exists in row
//check if duplicate exists in column
//check if duplicate exists in box (3X3)

func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int) -> [Int] {
return [Int]()

for (i = 1; i < 10; i++){
    for (j = 0; j < 10; j++)

if duplicates exist;
    
    preclude those numbers

return all numbers not precluded

func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int) -> [Int] {
return [Int]()

var valid: set <int> = {1,2,3,4,5,6,7,8,9}
for c in 0 ..< SudokuBoard[row].count {

    if c == col {
continue}


}
if let value = SudokuBoard[row][c]
{

valid.remove(value)

}

let sqRow = row/3
}

//new function
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

<<<<<<< HEAD
// Turn the set into an array
return Array<Int>(valid)
}

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
getValidNumbers(sampleInput, row: 0, col: 1)

2)

//start off by empty matrix
func roatate(matrix: [[Int]]) -> [[Int]] {
    var result: [[Int]] = []

func rotate(matrix: [[Int]]) -> [[Int]] {
let n = matrix.count

var result: [[Int]] = []

for _ in 0..<n {
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

let rotateInput = [[1,2,3,4],
[5,6,7,8],
[9,0,1,2],
[3,4,5,6]]

rotate(rotateInput)


}

3) check if A is greater then B

    check if B is greater than C

    check if C is greater than D

    repeat for number of elements

    //non-optimized

    //optimized - split array in half, then merge


func sort(values: [Int]) -> [Int] {
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

return []

=======
>>>>>>> e4827c92554b75e4dccf0e98751ea7fef5cbde66
*/
