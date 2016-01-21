//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




//Work on your solutions here.

//Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

//1)

func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int)->[Int]{
    var arrayNums: [Int] = []
    var value: Int
//    var x = row
//    var y = col
    
    for row in 0...8{
        var x = row
        value = [x][col]
        x++
        arrayNums.append(value)
    }
    for col in 0...8{
        var y = col
        value = [row][y]
        y++
        arrayNums.append(value)
    }
    return arrayNums
}



//2)



//3)




