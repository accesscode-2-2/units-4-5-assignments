//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.




Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

1) Given a partially filled in Sudoku board and a set of coordinates in that board pointing to an empty square, write a function that returns a list containing all numbers that the empty square could be

    Input: sudokuBoard:[[Int?]]. (Each location on the board will be either be an Int from 1-9 or nil(empty cell))
    row: Int
    col: Int
*/

let sudokuBoard = [
    [5, 0, 8, 0, 7, 3, 1, 9, 0],
    [9, 0, 0, 6, 0, 0, 4, 0, 8],
    [0, 0, 0, 9, 0, 8, 0, 3, 5],
    [0, 7, 0, 0, 0, 0, 0, 6, 0],
    [0, 0, 2, 0, 0, 0, 9, 0, 0],
    [0, 1, 0, 0, 0, 0, 0, 8, 0],
    [1, 9, 0, 3, 0, 6, 0, 0, 0],
    [2, 0, 3, 0, 0, 7, 0, 0, 9],
    [0, 8, 7, 1, 9, 0, 3, 0, 4]]


func booleanArr (arr:[Int]) -> [Bool]{
    
    //create an array of false bools to match the input array
    
    let booleanArr = Array(count: arr.count+1, repeatedValue: false)
    
    return booleanArr
    
}


func possibleNumbers(arr:[Int], inout booleanArr: [Bool]) -> [Bool] {
    
    
    //loop through the input arr and change
    //the bool of the same index as the integer
    //in the corresponding array
    
    for num in arr {
        
        //Change (the input num)index of the boolean arr
        //to true
        
        booleanArr[num] = true
    }
    
    
    
    
    return booleanArr
}

func allPossibleNumbers(booleanArr: [Bool]) -> [Int]
{
    
    var possibleNums = [Int]()
    
    //If the bool in our boolean arr is false
    //add that index num to our availableNum arr
    
    for i in 1..<booleanArr.count {
        
        if booleanArr[i] == false {
            
            possibleNums.append(i)
        }
        
    }
    
    return possibleNums
}


func getValidNumbers(sudokuBoard:[[Int]], row:Int, col:Int) -> [Int]
{
    
    var validNums = [Int]()
    
    
    // create row array
    let rowArr = sudokuBoard[row]
    print("row \(rowArr)")
    
    var columnArr: [Int] = []
    var square: [Int] = []
    
    for i in 0..<rowArr.count{
        
        columnArr.append(sudokuBoard[i][col])
        square.append(sudokuBoard[(col / 3) * 3 + i / 3][col * 3 % 9 + i % 3])
    }
    
    print("column \(columnArr)")
    print("squares \(square)")
    
    //for each array: row, column, square
    //find possible numbers
    //change the value of the possibleBools array
    
    var possibleBools = booleanArr(rowArr)
    possibleBools = possibleNumbers(rowArr, booleanArr: &possibleBools)
    possibleNumbers(columnArr, booleanArr: &possibleBools)
    possibleNumbers(square, booleanArr: &possibleBools)
    
    validNums = allPossibleNumbers(possibleBools)
    
    return validNums
}

getValidNumbers(sudokuBoard, row: 4, col: 4)


/*

2)rotate a matrix by ninety degrees
Input: matrix:[[Int]]
Output: matrix: [[Int]]

Sample Input: [ [1][2][3][4],
                [5][6][7][8],
                [9][0][1][2],
                [3][4][5][6] ]

Sample Output: [ [3][9][5][1],
                 [4][0][6][2],
                 [5][1][7][3],
                 [6][2][8][4] ]
*/

var matrix =  [[1,2,3,4],
               [5,6,7,8],
               [9,0,1,2],
               [3,4,5,6]]


func rotateMatrix90Degrees(inout grid: [[Int]]) ->[[Int]]
{
    let temp = Array(count: grid.count, repeatedValue: 0)
    var tempGrid = Array(count: grid.count, repeatedValue:temp)
    let count = grid.count

    for i in 0..<count {
        
        for j in 0..<count {
            
            tempGrid[i][j] = grid[count-1-j][i]
        }
        
    }

    print("TempGrid: \(tempGrid)")
    print("grid: \(grid)")
    
    grid = tempGrid
    
    return grid
}

rotateMatrix90Degrees(&matrix)


/*

3)Design an optimal algorithm for sorting four elements A, B, C, and D. 
    
    By optimal, I mean one that sorts using the minimum number of comparisons.
    Hint: you may want to start by putting the first two items in order 
    and the last two items in order... that takes two comparisons. 

    How many more comparisons do you need to find the minimum element? The maximum? 
    Once you’ve found the min and max, what if any additional comparisons are needed?
*/


let A = 1
let B = 2
let C = 3
let D = 4
var fourElementArr = [D, A, C, B]

let E = 1
let F = 21
let G = 49
let H = 365
var anotherFourElementArr = [H, G, E, F]

func sortFourElements(inout arr:[Int]) ->[Int]
{
    let maxIndex = arr.count - 1
    let midIndex = maxIndex / 2
    
    for _ in midIndex...maxIndex {
        
        if arr[midIndex]<arr[midIndex-1] {
            
            (arr[midIndex], arr[midIndex-1])  = (arr[midIndex-1], arr[midIndex])
        }
        
        if arr[maxIndex] < arr[maxIndex-1] {
            
            (arr[maxIndex-1], arr[maxIndex])  = (arr[maxIndex], arr[maxIndex-1])
        }
        
        if arr[midIndex] > arr[maxIndex-1] {
            
            (arr[midIndex], arr[maxIndex-1])  = (arr[maxIndex-1], arr[midIndex])
        }
    }
    
    
    
    
    return arr
}

sortFourElements(&fourElementArr)
sortFourElements(&anotherFourElementArr)


//With single char strings
let I = "I"
let J = "J"
let K = "K"
let L = "L"
var fourStringArr = [I, L, K, J]

let M = "Monopoly"
let N = "Neuron"
let O = "Ocean"
let P = "Polar Bear"
var anotherFourStringArr = [P, O, M, N]

var mArr = ["Monkey", "Mission", "Marmalade", "Mars"]


func sortFourStrings(inout arr:[String]) ->[String]
{
       let maxIndex = arr.count - 1
    let midIndex = maxIndex / 2
    
    for _ in midIndex...maxIndex {
        
        if arr[midIndex]<arr[midIndex-1] {
            
            (arr[midIndex], arr[midIndex-1])  = (arr[midIndex-1], arr[midIndex])
        }
        
        if arr[maxIndex] < arr[maxIndex-1] {
            
            (arr[maxIndex-1], arr[maxIndex])  = (arr[maxIndex], arr[maxIndex-1])
        }
        
        if arr[midIndex] > arr[maxIndex-1] {
            
            (arr[midIndex], arr[maxIndex-1])  = (arr[maxIndex-1], arr[midIndex])
        }
    }
    
    
    
    
    return arr
}

sortFourStrings(&fourStringArr)
sortFourStrings(&anotherFourStringArr)
sortFourStrings(&mArr)

