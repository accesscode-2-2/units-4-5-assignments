//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth

1)
*/
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


func getNumbersInRow(sudokuBoard:[[Int]], row: Int) -> Set<Int> {
    var numbersInRow = [Int]()
    
    for i in sudokuBoard[row] {
        if i != 0 {
            numbersInRow.append(i)
        }
    }
    
    return Set(numbersInRow)
}

func getNumbersInColumn(sudokuBoard:[[Int]], col: Int) -> Set<Int> {
    var numbersInColumn = [Int]()
    
    for i in 0..<sudokuBoard.count {
        
        if sudokuBoard[i][col] != 0 {
            numbersInColumn.append(sudokuBoard[i][col])
            
        }
    }
    
    return Set(numbersInColumn)
}

func getNumbersInSquare(sudokuBoard: [[Int]], row: Int, col: Int) -> Set<Int> {
    var numbersInGrid = [Int]()
    
    let coordinateOfSquare = checkForTopLeftCoordinates(row, col: col)
    
    for i in coordinateOfSquare.row...coordinateOfSquare.row + 2 {
        for j in coordinateOfSquare.col...coordinateOfSquare.col + 2 {
            if sudokuBoard[i][j] != 0 {
                numbersInGrid.append(sudokuBoard[i][j])
            }
        }
    }
    
    return Set(numbersInGrid)
}

func checkForTopLeftCoordinates(row: Int, col: Int) -> (row: Int, col: Int) {
    let topLeftRowCoordinateOfSquare = (row / 3) * 3
    let topLeftColCoordinateOfSquare = (col / 3) * 3
    
    return (topLeftRowCoordinateOfSquare, topLeftColCoordinateOfSquare)
}

func getNumbers1to9NotInSet(set: Set<Int>) -> [Int] {
    var numbersAvailable = [Int]()
    
    for i in 1...9 {
        if set.contains(i) == false {
            numbersAvailable.append(i)
        }
    }
    return numbersAvailable
}


func getValidNumbers(sudokuBoard:[[Int]], row: Int, col: Int) -> [Int] {
    
    
    let numbersUsedInRow = getNumbersInRow(sudokuBoard, row: row)
    let numbersUsedInColumn = getNumbersInColumn(sudokuBoard, col: col)
    let numbersUsedInSquare = getNumbersInSquare(sudokuBoard, row: row, col: col)
    
    let numbersUsed = numbersUsedInRow.union(numbersUsedInColumn).union(numbersUsedInSquare)
    
    let numbersAvailable = getNumbers1to9NotInSet(numbersUsed)
    
    return numbersAvailable
}

getValidNumbers(sudokuBoard, row: 4, col: 4)


// 2)
let array = [
    [1,2,3,4,5],
    [5,6,7,8,9],
    [9,0,1,2,16],
    [3,4,5,6,20],
    [5,19,29,102,2]]

func rotateArray90Degrees(arrayToRotate: [[Int]]) -> [[Int]] {
    var newArray = arrayToRotate
    
    for i in 0..<arrayToRotate.count {
        for j in 0..<arrayToRotate.count {
            newArray[j][arrayToRotate.count-1-i] = arrayToRotate[i][j]
        }
    }
    
    return newArray
}

rotateArray90Degrees(array)

/*
i = 0, j =0, newArray[0, 3] = arrayToRotate[0][0]
i = 0, j = 1, newArray[1, 3] = arrayToRotate[0][1]
i = 0, j = 2, newArray[2, 3] = arrayToRotate[0][2]
i = 0, j = 3, newArray[3, 3] = arrayToRotate[0][3]
i = 1, j =0, newArray[0,4-1-1] = arrayToRotate[1][0]
i = 1, j = 1, newArray[1, 4-1-1] = arrayToRotate[1][1]
i = 1, j = 2, newArray[2, 4-1-1] = arrayToRotate[1][2]
i = 1, j = 3, newArray[3, 4-1-1] = arrayToRotate[1][3]
etc.
etc.

*/



// 3)

var unSortedArray = [11, 50, 20, 1]

func sortArray(inout arr: [Int]) -> [Int] {
    var temp: Int
    
    if arr[0] > arr[1] {
        temp = arr[0]
        arr[0] = arr[1]
        arr[1] = temp
    }
    
    if arr[2] > arr[3] {
        temp = arr[2]
        arr[2] = arr[3]
        arr[3] = temp
    }
    
    if arr[0] > arr[2] {
        temp = arr[0]
        arr[0] = arr[2]
        arr[2] = temp
    }
    
    if arr[1] > arr[3] {
        temp = arr[1]
        arr[1] = arr[3]
        arr[3] = temp
    }
    
    if arr[1] > arr[2] {
        temp = arr[1]
        arr[1] = arr[2]
        arr[2] = temp
    }
    
  
    return arr
}

sortArray(&unSortedArray)



<<<<<<< HEAD
=======
*/
>>>>>>> 73de515ec342afcee5a0edcbce4663c779ecf94b
