/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/



//Question 1


var i = 0
var j = 1
var n = Int ()
var k = Int ()
var temp = 0


func fibIteration (var i: Int) -> Int {
    for _ in 0..<n {
        temp = i + j
        i = j
        j = temp
        
    }
    return j
}


//The iterative algorithm is a lot faster than the recursive one and uses up less space.

/*



//Question 2

var stepNum = 0
func tryStep() -> Int {
let stepCount = Int(arc4random_uniform(3)) - 1
stepNum += stepCount;
switch(stepCount) {
case -1: print("Ouch \(stepNum)")
case 1: print("Yay  \(stepNum)")
default: print("Beep \(stepNum)")
}
return stepCount
}



func stepUp() {
    switch tryStep() {
        case1:
            0
        default:
            stepUp()
        case -1:
            stepUp()
            stepUp()

}

func stepUp() {
if tryStep() {
// We’re done!
return
}
// Now we’re two steps below where we want to be :-(
stepUp()






3)

let result = findFile(name, atPath: fullPath)

if result != "NOT FOUND" {
    return result
}

if fileOrDir === name
{
    return fullPath
}




///////////////////////Merge sort/////////////////////////

func mergeSort(values: [Int]) -> [Int] {

//check length of values, return values if count is less than 2
// Split values into left and right (roughly equal size)

let array = [1,2,3,4]
let n = values.count


n

n / 2

if n < 2 {
    return values

}


//slice in swift
var left = Array(values[0..<n/2])     <--- O(n)   left array will have one element and right array will have two elements in it
var right = Array(values[n/ 2..<n])


left = mergeSort(left)
right = mergeSort(right)


return merge(withLeftArray: left, andRightArray: right)




func merge(withLeftArray left: [Int], andRightArray right: [Int]) -> [Int] {
// Iterate over both left and right at the same time

    var i = 0
    var j = 0
    while i < left.count || j < right.count {
        if j >= right.count || left[i] < right[j] }
            result.append(left[i])
            i += 1
        } else if  j < right.count {
            result.append(right[j])
            j += 1
        
        }
    }

    return result

}

mergeSort([10,2,6,5])

merge(withLeftArray: [3,6], andRightArray: [1,2])






/////////////MERGE SORT 2//////////////////













////////////example of recursion/////////////////

func printAllElements(values: [Int]) {
    for value in values {
        print(value)
    }
}


func printAllElementsRecursive(values: [Int]) {
    printElementsHelper(values, index: 0)
}


func printElementsHelper(values: [Int], index: Int) {
    print(values[index])
    printElementsHelper(values, index: index + 1)
}



let values = [10,20,30]
printElementsHelper(values, index: 0)














for i in 0..<n / 2 {


left.append(array[i])

}


for i in n/ 2..<n {

right.append(array[i])

}


// Compare pairs of values in left and right



// Take the minimum of the two and add it to the result

return [] // <-- change this
}







var left: [Int] = []
for i in 0..<n / 2 {


    left.append(array[i])

}


for i in n/ 2..<n {

right.append(array[i])

}

left



// Sort the left half

// Sort the right half

// Merge the two halves together

// Return the result

return [] // <-- change this
}

func merge(withLeftArray left: [Int], andRightArray right: [Int]) -> [Int] {
// Iterate over both left and right at the same time

// Compare pairs of values in left and right

// Take the minimum of the two and add it to the result

return [] // <-- change this
}






















