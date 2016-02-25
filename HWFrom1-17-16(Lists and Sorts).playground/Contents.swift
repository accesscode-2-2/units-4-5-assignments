//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#

1) 

func getNumbers(board: [[Int]], row: Int, col: Int) -> [Int] {

var possibleNums: [Int] = []

for i in 0...board.count-1 {
    for j in 0...board[i].count-1 {
        if row == i && col == j {
            board[i][j]
            for k in 1...9  {
                if board[i][j] != k {

                    possibleNums.append(k)
                    }
                }
            }
        }
    }
    
    return possibleNums
}



2)



//          [[3,9,5,1],
//			 [4,0,6,2],
//			 [5,1,7,3],
//			 [6,2,8,4] ]


var input = [[1,2,3,4],
    [5,6,7,8],
    [9,0,1,2],
    [3,4,5,6]]

func ninetyDegrees(input: [[Int]]) {
    var output: [[Int]] = []
    var newArr: [Int] = []
    
    
    for var i = input.count - 1; i < input.count; i-- {
        for var j = 0; j < input.count; j++ {
            if j == 0  {
                newArr.append(input[i][j])
                output.append(newArr)
                print(newArr)
            }
            
            
            
            
        }
    }
}




3)

var input = [4,0,6,2]

func sortElements (inputArr: [Int]) -> [Int] {

    var sortedOutput: [Int] = []

    for var i = 0; i < inputArr.count; i++ {
        for var j = i + 1; j < inputArr.count; i++ {
            if i > j {
            var temp = input[i]
            input[j] = input[i]
            input[i] = input[j]

            }

        }

    }

        return sortedOutput
}








*/






















