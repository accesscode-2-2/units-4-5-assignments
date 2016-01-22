//: Playground - noun: a place where people can play

import UIKit

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

1) */

func sudokuSpaceOptions(board: [[Int?]], x: Int, y: Int) -> [Int] {
    
    // for our purposes x is the horizontal axis and y the vertical
    // for this to make sense with the visual layout of the array of arrays
    // we need to index the numbers like so: number[y][x]
    
    //check if !nil
    if board[y][x] != nil {
        
        // if !nil return the number that is already there as the single member of
        // the return array
        return [board[y][x]!]
    }
    
    var possibilities: Set = Set([1, 2, 3, 4, 5, 6, 7, 8, 9])
    
    // check column
    for i in 0...8 {
        
        if board[i][x] != nil {
            
            // exclude numbers in column
            possibilities.remove(board[i][x]!)
        }
    }
    
    // check row
    for i in 0...8 {
        
        // exclude numbers in row
        if board[y][i] != nil {
            
            possibilities.remove(board[y][i]!)
        }
    }

    let indices: [[Int?]] = [[0, 2], [3, 5], [6, 8]]
    var xSquareBounds: [Int?] = [nil, nil]
    var ySquareBounds: [Int?] = [nil, nil]
    
    // figure out the square bounds
    for numArray in indices {
        
        if (x >= numArray[0] && x <= numArray[1]) {
            
            xSquareBounds = numArray
        }
        if (y >= numArray[0] && y <= numArray[1]) {
            
            ySquareBounds = numArray
        }
    }
    
    // check square
    for i in ySquareBounds[0]!...ySquareBounds[1]! {
        
        for j in xSquareBounds[0]!...xSquareBounds[1]! {
            
            if board[i][j] != nil {
                
                // exclude numbers in square
                possibilities.remove(board[i][j]!)
            }
        }
    }
    
    return Array(possibilities)
    
}

var sudokuBoard: [[Int?]] = [
    
    [5  , nil, 8  , nil, 7  , 3  , 1  , 9  , nil],
    [9  , nil, nil, 6  , nil, nil, 4  , nil, 8  ],
    [nil, nil, nil, 9  , nil, 8  , nil, 3  , 5  ],
    [nil, 7  , nil, nil, nil, nil, nil, 6  , nil],
    [nil, nil, 2  , nil, nil, nil, 9  , nil, nil],
    [nil, 1  , nil, nil, nil, nil, nil, 8  , nil],
    [1  , 9  , nil, 3  , nil, 6  , nil, nil, nil],
    [2  , nil, 3  , nil, nil, 7  , nil, nil, 9  ],
    [nil, 8  , 7  , 1  , 9  , nil, 3  , nil, 4  ]]

print(sudokuSpaceOptions(sudokuBoard, x: 2, y: 6))
print(sudokuSpaceOptions(sudokuBoard, x: 2, y: 0))

/*
2) */

func rotateMatrixByNinetyDegrees(matrix: [[Int]]) -> [[Int]] {
    
    // create an array of the same dimensions with all zeroes
    var rotated = [[Int]](count: matrix.count, repeatedValue: [Int](count: matrix[0].count, repeatedValue: 0))
    
    for i in 0..<matrix.count {
        
        for j in 0..<matrix[i].count {

            // replace the default zeroes with the rotated values according to the formula
            rotated[j][matrix.count - 1 - i] = matrix[i][j]
        }
    }
    
    return rotated
}

let test = [[1,2,3,4],
            [5,6,7,8],
            [9,0,1,2],
            [3,4,5,6]]

let test2 = [[1,2,3,4,0],
            [5,6,7,8,0],
            [9,0,1,2,0],
            [3,4,5,6,0],
            [7,8,9,0,0]]

print(rotateMatrixByNinetyDegrees(test))
print(rotateMatrixByNinetyDegrees(test2))

/*
3) */

func sortFourElements(inout nums: [Int]) -> [Int] {
    
    var temp: Int
    let indices = [[0,1], [2,3], [0,2], [1,3], [1,2]]
    
    for i in 0..<indices.count {
        
        if nums[indices[i][0]] > nums[indices[i][1]] {
            
            temp = nums[indices[i][0]]
            nums[indices[i][0]] = nums[indices[i][1]]
            nums[indices[i][1]] = temp
        }
    }
    
    return nums
    
}

var nums  = [4, 3, 2, 1]
var nums2 = [4, 3, 1, 2]
var nums3 = [4, 2, 1, 3]
var nums4 = [2, 4, 3, 1]
var nums5 = [3, 4, 1, 2]
var nums6 = [3, 4, 2, 1]
var nums7 = [2, 3, 1, 4]
var nums8 = [3, 2, 4, 1]

print(sortFourElements(&nums))
print(sortFourElements(&nums2))
print(sortFourElements(&nums3))
print(sortFourElements(&nums4))
print(sortFourElements(&nums5))
print(sortFourElements(&nums6))
print(sortFourElements(&nums7))
print(sortFourElements(&nums8))
