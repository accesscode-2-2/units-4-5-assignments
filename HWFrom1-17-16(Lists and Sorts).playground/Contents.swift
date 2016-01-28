//: Playground - noun: a place where people can play

import UIKit


/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1XioaEqk6VqUPA-ccQhkqP3eAoDthxYyOM9vSPB7fDkg/edit#heading=h.uopysoy45zmw

1) 
//Pseudocode

Boolean sudokuBoard(Grid grid){
int row, col;

if(!FindUnassignedField(grid, row, col))
return true;

for(int num = 1; num <= 9; num++) {
if(isValidChoice(grid, row, col, num)) { /
grid(row, col) = num;
if(solveSudoku(grid)) return true;
grid(row, col) = UNASSIGNED;
}
}
return false;  // no valid choice found, trigger backtracking
}




2) func rotateNinety (arr: [[Int]]) -> [[Int]] {

    for i in 0..<arr.count {
        for j in 0..<arr.count {
            rotatedArr = [arr.count - 1 - j, i];
        }
    return rotatedArr
}

var arr = [[1,2,3,4],
[5,6,7,8],
[9,0,1,2],
[3,4,5,6]]

var rotatedArr = [Int]()

print(rotateNinety(arr))


*******************************



for (r, row) in matrix.enumerate()
//(index, value)


3) ///use merge sort?

//var midpoint = fourElements/2

 var fourElements = [A,B,C,D]

func compareInTwos(fourElements) -> [Int] {

    for i in 0..<fourElements.count {

        if fourElements[i] > fourElements[i + 1] {
            temp = fourElements[i + 1]
            fourElements[i+1] = fourElements[i]
            fourElements[i] = temp

        } 
        
        if fourElements[fourElements.count - 2] > fourElements[fourElements.count - 1] {
            temp = fourElements[fourElements.count - 2]
             fourElements[fourElements.count - 2] = fourElements[fourElements.count - 1]
            fourElements[fourElements.count - 1] = temp

        }

        return fourElements
}


var max = 0;
var min = 0;

func findMinAndMax(fourElements) -> Int {

    for i in 0..<fourElements.count {
    
        if fourElements.count[i] < fourElements.count[i-2] {
            var min = fourElements.count[i]
        } else {
            var min = fourElements.count[i-2]
        }

        if fourElements.count[i+1] > fourElements.count[i-1] {
            var max = fourElements.count[i+1]
        } else {
            var max = fourElements.count[i-1]
        }
    }

    return min
    return max
}

*/








//Simplest implementation of recursion
func fib(n: Int) -> Int {
    if n < 2 {
        return 1
    }
    let a = n - 2
    let b = n - 1
    return fib(a) + fib(b)
}

let values = (0..<10).map {i in fib(i)}
values




















