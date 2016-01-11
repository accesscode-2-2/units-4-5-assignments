//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*:

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit


*/

//: ### 1

func findMissingNumber(N: Int, list: [Int]) -> Int {
    list.sort({$0 < $1})
    var j = 0
    var missingNum = 0

    for i in (0..<list.count) {
        j = i + 1
        if(j-1 != 1) {
            missingNum = i+1
        }
    }
    return missingNum
}


//: ### 2

var arrExample = [1,2,5,7,11,4,8,2,8,9,3,12,5]
func hasDuplicates(arr:[Int]){
    let sortedArr = arr.sort()
    for (var i = 0; i < sortedArr.count; i++){
        let j = i + 1
        if (i != sortedArr.count - 1){
            if (sortedArr[i] == sortedArr[j]){
                print(sortedArr[i])
            }
        } 
    }
}

//: ### 3


func smallestNum(listOne: [Int], listTwo: [Int]) -> Int? {
    let setOne = Set(listOne)
    let setTwo = Set(listTwo)
    let num = setOne.intersect(setTwo).minElement()
    return num
}

//: ### 4

struct Stack<T> {
    private var items:[T]
    var count: Int {
        get {
            return items.count
        }
    }
    
    mutating func push(element: T) {
        items.append(element)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
}

func isPalindrome(word: String) -> Bool {
    var stack = Stack<Character>(items: Array(word.characters))
    var reverseStack = Stack<Character>(items: Array(word.characters).reverse())
    
    for _ in 0..<stack.count {
        if stack.pop() != reverseStack.pop() {
            return false
        }
    }
    return true
}

