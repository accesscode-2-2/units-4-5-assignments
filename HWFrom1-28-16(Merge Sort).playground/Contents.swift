//: Playground - noun: a place where people can play

//https://docs.google.com/document/d/1rlQ3lstnNb3fOR58EwGDysMQ0FSDkUGykcCoU14B9Go/edit#heading=h.za36ai6n5fth


//Insert code here:
/*
Use recursion to implement at least one of the following sorting algorithms in Swift:

// Insertion sort
func insertionSort(inout values: [Int]) {
}

// Selection sort
func selectionSort(inout values: [Int]) {
}

Requirements:
You may not use loops
Your implementations should be in-place (try not to create additional arrays)
You should implement and use additional helper functions

Tips:
Add additional parameters to your helper functions to pass information between recursive calls
You can use the swap function to exchange two values in a mutable (var) array:
var array = [1, 2]
swap(&array[0], &array[1])
array // [2, 1]

Challenge:
Modify your implementation to work for any array of Comparable elements

*/

// Insertion sort
//func insertionSort(var numberList: [Int]) {
//    var x, y, key: Int
//    for (x = 0; x < numberList.count; x++) {
//        key = numberList[x]
//        for (y = x; y > -1; y--) {
//            if (key < numberList[y]) {
//                numberList.removeAtIndex(y + 1)
//                numberList.insert(key, atIndex: y)
//            }
//        }
//    }
//}

/*
func insertionSort(inout values: [Int], first: Int, last: Int) {
    if (first < last) {
        // sort all but not the last element
        insertionSort(&values, first: first, last: last - 1)
        // insert the last element in sorted order from the first through the last position
        insertInOrder(values[last], values: values, first: first, last: last - 1)
    }
}

func insertionSort(inout values: [Int]) {
    insertionSort(&values, first: 0, last: values.count - 1)
}

func insertInOrder(key: Int, var values: [Int], first: Int, last: Int) {
    if key >= values[last] {
        values[last + 1] = key
    } else if (first < last) { //if key < value[last]
        values[last + 1] = values[last]
        insertInOrder(key, values: values, first: first, last: last - 1)
    } else { // first == last and element < values[last]
        values[last + 1] = values[last]
        values[last] = key
    }
}


var arr = [2, 7, 9]
insertionSort(&arr)
*/
/*
func select(xs: [Int], startingAt k: Int) -> Int {
    var minIndex = k
    for i in (k+1)..<xs.count {
        if xs[i] < xs[minIndex] {
            // we found a new minimum
            minIndex = i
        }
    }
    return minIndex
}

select([0, 1, 2, 3, 9, 5, 4, 6], startingAt: 4)
select([8, 6, 7, 5, 3, 0, 9], startingAt: 0)

func selection_sort(inout xs: [Int]) -> [Int] {
    for sortedSoFar in 0..<xs.count {
        let minIndex = select(xs, startingAt: sortedSoFar)
        (xs[sortedSoFar], xs[minIndex]) = (xs[minIndex], xs[sortedSoFar])
    }
    return xs
}

var xs = [8, 6, 7, 5, 3, 0, 9]
selection_sort(&xs)
*/

//func selectionSort(inout values: [Int], first: Int, last: Int) {
//    if (first < last) {
//        
//    }
//}
