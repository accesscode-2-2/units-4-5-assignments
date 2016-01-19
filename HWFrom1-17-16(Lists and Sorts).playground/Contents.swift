//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

1) Given a partially filled in Sudoku board and a set of coordinates in that board pointing to an empty square, write a function that returns a list containing all numbers that the empty square could be.

Input: sudokuBoard:[[Int?]]. (Each location on the board will be either be an Int from 1-9 or nil(empty cell))
row: Int
col: Int

func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int) -> [Int] {
return [Int]()
}

Sample input:  ,4,4

sample output: [1,3,4,5,6,8]
*/


func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int) -> [Int] {
    
    // loop through the row and create an array with existing integers on the row
    // loop through the column, add the integers on the column to the array if they are not there
    // loop through the box, add the integers on the box to the array if they are not there
    // compare the array with the array [1, 2, 3, 4, 5, 6, 7, 8, 9], the missing integest will be the numbers that the empty square could be.
    
    
//    var sudokuBoard = [
//        [5, 0, 8, 0, 7, 3, 1, 9, 0],
//        [9, 0, 0, 6, 0, 0, 4, 0, 8],
//        [0, 0, 0, 9, 0, 8, 0, 3, 5],
//        [0, 7, 0, 0, 0, 0, 0, 6, 0],
//        [0, 0, 2, 0, 0, 0, 9, 0, 0],
//        [0, 1, 0, 0, 0, 0, 0, 8, 0],
//        [1, 9, 0, 3, 0, 6, 0, 0, 0],
//        [2, 0, 3, 0, 0, 7, 0, 0, 9],
//        [0, 8, 7, 1, 9, 0, 3, 0, 4]]
//    
    
    return [Int]()
    
}



/*

2) rotate a matrix by ninety degrees
Input: matrix:[[Int]]
Output: matrix: [[Int]]

Sample Input: [[1,2,3,4],
[5,6,7,8],
[9,0,1,2],
[3,4,5,6]]

Sample Output: [ [3,9,5,1],
[4,0,6,2],
[5,1,7,3],
[6,2,8,4] ]

*/
//The old matrix [arr1[0], arr1[1], arr1[2],...arr1[n],
//                arr2[0], arr2[1], arr2[2],...arr2[n],
//                arr3[0], arr3[1], arr3[2],...arr3[n],
//                ...
//                arrN[0], arrN[1], arrN[2],...arrN[n]]

//   The new matrix will be [arrN[0],...,arr3[0],arr2[0], arr1[0],
//                           arrN[1],...,arr3[1],arr2[1], arr1[1],
//                           arrN[2],...,arr3[2],arr2[2], arr1[2],
//                           ...
//                           arrN[n],...,arr3[n],arr2[n], arr1[n]]


/*

3)Design an optimal algorithm for sorting four elements A, B, C, and D. By optimal, I mean one that sorts using the minimum number of comparisons. Hint: you may want to start by putting the first two items in order and the last two items in order... that takes two comparisons. How many more comparisons do you need to find the minimum element? The maximum? Once you’ve found the min and max, what if any additional comparisons are needed?

*/
//put A and B in order, and put C and D in order
//find the minAB and maxAB for A and B
//find the minCD and maxCD for C and D
//compare minAB and minCD to get min, compare maxAB and maxCD to get max
//
