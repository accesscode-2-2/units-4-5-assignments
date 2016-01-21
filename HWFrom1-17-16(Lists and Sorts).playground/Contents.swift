//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

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

var rowNumbers = [[Int]]()
var columbNumbers = [[Int]]()
var potentialNumbers = [Int]()
var allNumbers = [Int]()


func getRowNumbers(sudokuBoard:[[Int]], row: Int, column: Int) -> [Int] {
    for var i = 0; i <= sudokuBoard.count - 1; i++ {
        for var j = 0; i <= sudokuBoard[i].count; j++ {
            print(sudokuBoard[i][j])
            //            allNumbers.append.[i]
        }
    }
    return (sudokuBoard[0])
}



for i in sudokuBoard {
    for j in i {
        print(j)
    }
}

for (var k = 0; k < sudokuBoard.count; k++) {
    for (var l = 0; l < k; l++) {
        print(l)
        
    }
}

// this is as far as I got with question 1. i think using a set and the exclusiveOr function could make this
// a lot easier to solve

// 2)
var rotateArray = [
    [1,2,3,4],
    [5,6,7,8],
    [9,0,1,2],
    [3,4,5,6]]

func rotate90Degrees(rotateArray:[[Int]], row: Int, column: Int) -> [Int] {
    for i in rotateArray {
        for j in i {
            print(j)
        }
    }
    return [3,9,5,1]
    
}


