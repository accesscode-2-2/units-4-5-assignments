//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

1) 

func getValidNumbers(sudokuBoard: [[Int]], row: Int, col: Int) -> [Int] {

var notValidNumsArr = [Int]()
//loop thru cols picking up non-empty values, row is held constant
for j in 0..<sudokuBoard.count {

if ( sudokuBoard[row][j] != 0)//since 0 represents empty space
{
notValidNumsArr.append(sudokuBoard[row][j])
}
}
//loop thru rows picking up non-empty values, col is held constant
for i in 0..<sudokuBoard.count {

if ( sudokuBoard[i][col] != 0)//since 0 represents empty space
{
notValidNumsArr.append(sudokuBoard[i][col])

}
}

let squareRowCoorArr = getSqaureRowCoordinates(sudokuBoard, row: row)
let squareColCoorArr = getSquareColumnRowCoordinates(sudokuBoard, col: col)

let rowStartIndex = squareRowCoorArr[0]
let rowEndIndex = squareRowCoorArr[1]


let colStartIndex = squareColCoorArr[0]
let colEndIndex = squareColCoorArr[1]


for i in rowStartIndex...rowEndIndex
{
for j in colStartIndex...colEndIndex
{
if sudokuBoard[i][j] != 0 {
notValidNumsArr.append(sudokuBoard[i][j])
}
}
}

let arrToSet = Set(notValidNumsArr)
var numbersSet = getNumbersSet()
numbersSet.subtractInPlace(arrToSet)


return Array(numbersSet)
}

//Takes in a row and outputs the starting and ending coordinates
//for the rows that make up the sqaure containing the given row
func getSqaureRowCoordinates(sudokuBoard: [[Int]],row: Int) -> [Int] {
var coordinatesArr = [Int]()
if row <= (sudokuBoard.count/3) - 1 {
coordinatesArr.append(0)
coordinatesArr.append( (sudokuBoard.count/3) - 1 )
}
else if row >= sudokuBoard.count/3 && row <= (sudokuBoard.count/3) + 2 {
coordinatesArr.append(sudokuBoard.count/3)
coordinatesArr.append((sudokuBoard.count/3) + 2 )
}
else {
coordinatesArr.append((sudokuBoard.count/3) + 3)
coordinatesArr.append(sudokuBoard.count - 1)
}
return coordinatesArr
}

func getNumbersSet() -> Set<Int>
{
var numbers = Set<Int>()

numbers.insert(1)
numbers.insert(2)
numbers.insert(3)
numbers.insert(4)
numbers.insert(5)
numbers.insert(6)
numbers.insert(7)
numbers.insert(8)
numbers.insert(9)

return numbers
}

//Takes in a column and outputs the starting and ending coordinates
//for the columns that make up the sqaure containing the given column
func getSquareColumnRowCoordinates(sudokuBoard: [[Int]],col: Int) -> [Int] {
var coordinatesArr = [Int]()
if col <= (sudokuBoard.count/3) - 1 {
coordinatesArr.append(0)
coordinatesArr.append( (sudokuBoard.count/3) - 1 )
}
else if col >= sudokuBoard.count/3 && col <= (sudokuBoard.count/3) + 2 {
coordinatesArr.append(sudokuBoard.count/3)
coordinatesArr.append((sudokuBoard.count/3) + 2 )
}
else {
coordinatesArr.append((sudokuBoard.count/3) + 3)
coordinatesArr.append(sudokuBoard.count - 1)
}
return coordinatesArr
}

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

getValidNumbers(sudokuBoard, row: 5, col: 5) -> [2, 4, 9, 5]
getValidNumbers(sudokuBoard, row: 4, col: 4) -> [4, 5, 6, 3, 1, 8]
getValidNumbers(sudokuBoard, row: 8, col: 7) -> [2, 5]


2)


func rotateMatrixBy90(matrix: [[Int]]) ->[[Int]] {

var rotatedMatrix = [[Int]](count: matrix.count, repeatedValue: matrix[0])


for j in 0..<matrix.count
{
for i in 0..<matrix.count
{
let row  = matrix.count - i - 1
rotatedMatrix[j][i] = matrix[row][j]
}
}
return rotatedMatrix
}


var input =
[
[1,2,3,4],
[5,6,7,8],
[9,0,1,2],
[3,4,5,6]
]

print( (rotateMatrixBy90(input))) ->  [[3, 9, 5, 1], [4, 0, 6, 2], [5, 1, 7, 3], [6, 2, 8, 4]]
print( (rotateMatrixBy90(sudokuBoard))) -> [[0, 2, 1, 0, 0, 0, 0, 9, 5], [8, 0, 9, 1, 0, 7, 0, 0, 0], [7, 3, 0, 0, 2, 0, 0, 0, 8], [1, 0, 3, 0, 0, 0, 9, 6, 0], [9, 0, 0, 0, 0, 0, 0, 0, 7], [0, 7, 6, 0, 0, 0, 8, 0, 3], [3, 0, 0, 0, 9, 0, 0, 4, 1], [0, 0, 0, 8, 0, 6, 3, 0, 9], [4, 9, 0, 0, 0, 0, 5, 8, 0]]



3)



*/
