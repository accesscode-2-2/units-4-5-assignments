//: Playground - noun: a place where people can play


/* 1) Given an integer N, there is a list of size N-1 that is missing one number from 1 - N(inclusive). Find that number. */

func findMissingNumber(numbers: [Int]) -> Int {
    
    let complete = Set(Range(start: 1, end: numbers.count + 1 + 1))
    let incomplete = Set(numbers)
    
    return Array(complete.subtract(incomplete))[0]
}

print(findMissingNumber([2, 1, 3, 4, 6, 9, 10, 7, 8]))
print(findMissingNumber([1, 8, 7, 5, 2, 9, 3, 6, 4]))


/* 2) Given a list  of size N containing numbers 1 - N (inclusive). return true if there are duplicates, false if not */

func doesHaveRepeatingInts(numbers: [Int]) -> Bool {
    
    return numbers.count > Set(numbers).count
}

print(doesHaveRepeatingInts([2, 2, 3, 4]))
print(doesHaveRepeatingInts([1, 3, 5, 6]))


/* 3) Given two lists, find the smallest value that exists in both lists.
L1 = [1,2,5,9]
L2 = [9, 20 , 5] */

func smallestValueInCommon(numbers1: [Int], numbers2: [Int]) -> Int? {
    
    return Set(numbers1).intersect(Set(numbers2)).minElement()
}

print(smallestValueInCommon([2, 3, 4, 5], numbers2: [0, 7, 8, 9]))
print(smallestValueInCommon([2, 3, 4, 5], numbers2: [3, 7, 2, 9]))


/* 4) Check to see if an integer is a palindrome don’t use casting */

func isPalindromeInt(var num:Int) -> Bool {

    var asArray = [Int]()

    while num > 0 {

        asArray.insert(num % 10, atIndex: 0)
        num = num / 10
    }

    return asArray == asArray.reverse()
}

print(isPalindromeInt(165283))
print(isPalindromeInt(165561))

