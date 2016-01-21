//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




//Work on your solutions here.

//Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

//1)

func getValidNumbers(sudokuBoard:[[Int]], row:Int, col:Int)->[Int]{
    var arrayNums: [Int] = []
    var value: Int
//    var x = row
//    var y = col
    
    for row in 0...8{
        if (row != 0){
        var x = row
        value = [x][col]
        x++
        arrayNums.append(value)
        }
    }
    for col in 0...8{
        if (col != 0){
        var y = col
        value = [row][y]
        y++
        arrayNums.append(value)
        }
    }
    return arrayNums
}

let sudokuBoard: [[Int]] = [[5,0,8,0,7,3,1,9,0],
                            [9,0,0,6,0,0,4,0,8],
                            [0,0,0,9,0,8,0,3,5],
                            [0,7,0,0,0,0,0,6,0],
                            [0,0,2,0,0,0,9,0,0],
                            [0,1,0,0,0,0,0,8,0],
                            [1,9,0,3,0,6,0,0,0],
                            [2,0,3,0,0,7,0,0,9],
                            [0,8,7,1,9,0,3,0,4]
                             ]

getValidNumbers(sudokuBoard, row: 4, col: 4)
//2)



//3)




