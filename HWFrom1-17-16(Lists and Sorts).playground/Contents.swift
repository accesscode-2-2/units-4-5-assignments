
// 1.
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


// vertical box constraint
func verticalConstraintBox(row: Int) ->[Int] {
    var maxConstraint: Int = 0
    var minConstraint: Int = 0
    var constraints: [Int] = []
    for i in 0..<sudokuBoard.count {
        if (i == row){
            if ((i + 1) % 3 == 0) {
                maxConstraint = i
                minConstraint = i - 2
                constraints.append(minConstraint)
                constraints.append(maxConstraint)
                constraints.sortInPlace()
            }
            else if ((i + 1) % 3 == 1) {
                maxConstraint = i + 2
                minConstraint = i
                constraints.append(minConstraint)
                constraints.append(maxConstraint)
                constraints.sortInPlace()
            }
            else if ((i + 1) % 3 == 2) {
                maxConstraint = i + 1
                minConstraint = i - 1
                constraints.append(minConstraint)
                constraints.append(maxConstraint)
                constraints.sortInPlace()
            }
        }
        
    }
    return constraints
}

// total box constraints
func totalBoxConstraints(column: Int, verticalConstraints: [Int]) -> Set<Int> {
    var verticalConstraintsBox = verticalConstraints
    var maxHC: Int = 0
    var minHC: Int = 0
    
    if ((column + 1) % 3 == 0){
        maxHC = column + 1
        minHC = column - 2
    }
    else if ((column + 1) % 3 == 1) {
        maxHC = column + 3
        minHC = column
    }
    else if ((column + 1) % 3 == 2) {
        maxHC = column + 2
        minHC = column - 1
    }
    
    var arr1 = Array((sudokuBoard[verticalConstraintsBox[0]])[minHC..<maxHC])
    var arr2 = Array((sudokuBoard[verticalConstraintsBox[0] + 1])[minHC..<maxHC])
    var arr3 = Array((sudokuBoard[verticalConstraintsBox[1]])[minHC..<maxHC])
    var notPossibleOutcomes: Set<Int> = []
    
    for i in 0..<arr1.count {
        if (arr1[i] != 0){
            notPossibleOutcomes.insert(arr1[i])
        }
        if (arr2[i] != 0){
            notPossibleOutcomes.insert(arr2[i])
        }
        if (arr3[i] != 0){
            notPossibleOutcomes.insert(arr3[i])
        }
    }
    
    print("Not Possible Box Outcomes \(notPossibleOutcomes)")
    
    return notPossibleOutcomes
}

// vertical check
func verticalCheckSudoku(row: Int, column: Int, arr: Set<Int>) -> Set<Int> {
    var notPossibleOutcomes: Set<Int> = []
    for i in 0..<sudokuBoard.count {
        if (sudokuBoard[i][column] != 0){
            notPossibleOutcomes.insert(sudokuBoard[i][column])
        }
    }
    print("Not Possible Vertical Outcomes \(notPossibleOutcomes)")
    return notPossibleOutcomes
}

<<<<<<< HEAD
// horizontal check
func horizontalCheckSudoku(row: Int, column: Int, arr: Set<Int>) -> Set<Int> {
    var notPossibleOutcomes: Set<Int> = []
    for i in 0..<sudokuBoard.count {
        if (sudokuBoard[row][i] != 0){
            notPossibleOutcomes.insert(sudokuBoard[row][i])
        }
    }
    print("Not Possible Horizontal Outcomes \(notPossibleOutcomes)")
    
    return notPossibleOutcomes
}
=======
Link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth
>>>>>>> df0dff8f1511200af5eae06e949d0d5f90c95b74

// get user input and return the possible # for that empty space
func getCoordinatesAndReturnPossibleMoves() -> Set<Int> {
    print("Please enter valid input(s) from 1-9")
    var row = Int(readLine()!)!                             // get user input
    var column = Int(readLine()!)!
    var inputsWithinRangeAndSpaceEmpty: Bool = false
    repeat {
        if ((row > 0 && row < 10)
            && (column > 0 && column < 10)
            && (sudokuBoard[row][column] == 0)){      // check if input is valid
                inputsWithinRangeAndSpaceEmpty = true
        }
        else {
            print("Please enter valid input(s)")
            row = Int(readLine()!)!
            column = Int(readLine()!)!
        }
    }while inputsWithinRangeAndSpaceEmpty == false   // repeat if the input is invalid
    
    let sudokuSet: Set<Int> = [1,2,3,4,5,6,7,8,9]
    let horizontalSet: Set<Int> = horizontalCheckSudoku(2, column: 2, arr:sudokuSet)
    let verticalSet: Set<Int> = verticalCheckSudoku(2, column: 2, arr: sudokuSet)
    let boxSet: Set<Int> = totalBoxConstraints(column, verticalConstraints: verticalConstraintBox(row))
    
    let horizontalAndVertical: Set<Int> = horizontalSet.union(verticalSet)
    let notPossibleOutcomes: Set<Int> = horizontalAndVertical.union(boxSet)
    
    let finalSet: Set<Int> = sudokuSet.subtract(notPossibleOutcomes)
    
    return finalSet
}
//print(getCoordinatesAndReturnPossibleMoves())



func matrixRotate() {
    // matrix board
    var matrix = [
        [1, 2, 3, 4],
        [5, 6, 7, 8],
        [9, 0, 1, 2],
        [3, 4, 5, 6]]
    
    var new90RotatedMatrix = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]]
    var num = matrix.count
    var count = 0
    repeat {
        
        for i in 0..<matrix.count {
            new90RotatedMatrix[count].insert(matrix[(num - 1) - i][count], atIndex: i)
        }
        count++
    } while count < matrix.count
    for i in 0..<matrix.count {
        new90RotatedMatrix[i].removeRange(4...7)
    }
    
    print(new90RotatedMatrix[0])
    print(new90RotatedMatrix[1])
    print(new90RotatedMatrix[2])
    print(new90RotatedMatrix[3])
    
}

matrixRotate()



// #3 Reorder the letters

var letters = ["D", "C", "O", "G"]

for i in 0..<letters.count {
    for scalar in letters[i].unicodeScalars {
        letters[i] = String(scalar.value)
        print("\(scalar.value) ", terminator: "")
    }
}

var middlePoint = (letters.count / 2) - 1
var firstMin = 0
var firstMax = 0
var secMin = 0
var secMax = 0
var finalMin = 0
var finalMax = 0
var midMin = 0
var midMax = 0

print("")
for i in 0..<letters.count {
    if (i < middlePoint){
        if (Int(letters[i]) > Int(letters[i + 1])){
            firstMin = Int(letters[i+1])!
            firstMax = Int(letters[i])!
        } else {
            firstMin = Int(letters[i])!
            firstMax = Int(letters[i+1])!
        }
    }
    else if (i > middlePoint && i < letters.count - 1) {
        if (Int(letters[i]) > Int(letters[i + 1])){
            secMin = Int(letters[i+1])!
            secMax = Int(letters[i])!
        } else {
            secMin = Int(letters[i])!
            secMax = Int(letters[i+1])!
        }
    }
    
    if (firstMin != 0 && secMin != 0){
        if (firstMin > secMin){
            finalMin = secMin
            var newChar = Character(UnicodeScalar(finalMin))
            letters[letters.count - letters.count] = String(newChar)
            print(letters[letters.count - letters.count])
            midMin = firstMin
        } else {
            finalMin = firstMin
            var newChar = Character(UnicodeScalar(finalMin))
            letters[letters.count - letters.count] = String(newChar)
            print(letters[letters.count - letters.count])
            midMin = secMin
        }
    }
    
    if (firstMax != 0 && secMax != 0){
        if (firstMax > secMax){
            finalMax = firstMax
            var newChar = Character(UnicodeScalar(finalMax))
            letters[i] = String(newChar)
            print(letters[i])
            midMax = secMax
        } else {
            finalMax = secMax
            var newChar = Character(UnicodeScalar(finalMax))
            letters[i] = String(newChar)
            print(letters[i])
            midMax = firstMax
        }
    }
    
    if (midMax != 0 && midMin != 0){
        if (midMax > midMin){
            letters[letters.count - 2] = String(Character(UnicodeScalar(midMax)))
            letters[0 + 1] = String(Character(UnicodeScalar(midMin)))
        } else {
            letters[letters.count - 2] = String(Character(UnicodeScalar(midMin)))
            letters[0 + 1] = String(Character(UnicodeScalar(midMax)))
        }
    }
}

print(letters)

<<<<<<< HEAD
=======
*/
>>>>>>> df0dff8f1511200af5eae06e949d0d5f90c95b74
