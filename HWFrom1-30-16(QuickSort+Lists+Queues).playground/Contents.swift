//: Playground - noun: a place where people can play

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

//1)

// O(n^2), O(n^2), O(n^2), O(n log(n)), O(n log(n))

//2) It takes less memory/resources to sort in place

//3) 
/*
quicksort(array ,low ,high) {
if (low < high) {
    q <- partition(array, low ,high)
    quicksort(array ,low, high)
    quicksort(array ,low+1, high)
}
}
partition(array, low, high)
x <- array[low]
i <- low-1
j <- high+1
while (true) {
    repeat
    j <- j-1
    until (array[j] <= x)
    repeat
    i <- i+1
    until (array[i] >= x)
    if (i array[j]
    else
    return(j)
}
}
*/
//4) func generateRandomArray (int: Int) -> [Int]{
//   Int(arc4random_uniform(UInt32(10000)))
//}

//5) Mergesort breaks array to be sorted into new arrays. Mergesort advantage is that it has better worst-case time complexity than quicksort. Mergesort takes more space.
// Quicksort is in place sorting.

//6)func isBalanced(paren: [String]) -> Bool {
//       let arr1 = [string]
//       let arr2 = []
//       arr1.pop
//       arr2.push
//       if arr2 != empty
//       arr not balanced
//}
