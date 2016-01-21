//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
Work on your solutions here.
Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw
1)
2)
3)
*/

//i = r
//j = c


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

let possibleOutcomes: [Int] = [1,2,3,4,5,6,7,8,9]


for var i = 0; i <  sudokuBoard.count; i++ {
    var line = ""
    for  var j = 0; j < sudokuBoard[i].count; j++ {
        line += String(sudokuBoard[i][j])
        line += " "
        
        

    }
    //print(sudokuBoard [4][4])
    //print(line)

}
print(sudokuBoard [4][4])
// print(sudokuBoard)
//print("sudokuBoard equals \(sudokuBoard) at iteration \(i)")

func getValidNumbers(sudokuBoard:[[Int?]], i:Int, j:Int) -> [Int] {
    return [Int]()
}


