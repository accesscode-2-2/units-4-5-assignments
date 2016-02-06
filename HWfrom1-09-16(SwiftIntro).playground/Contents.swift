//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



// Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

// https://docs.google.com/document/d/1DQ2aCJ_yUZtazzCfb0PaS81bg61V2ZOSxpABh981xSo/edit


// 1)

func integer_algorithm(numbers: [Int]) -> Int {
    
    let complete: Set<Int> = Set(Range(start: 1, end: numbers.count + 1))
    let incomplete = Set(numbers)
    
    return Array(complete.subtract(incomplete))[0]
    
    
}




// 2)

func contains_duplicates_easyway(list: [Int]) -> Bool {
    
    
    return list.count > Set(list).count
    
}



// 3)

func smallest_value(list:[Int], other_list: [Int]) -> Int? {
    
    return Set(list).intersect(Set(other_list)).minElement()
    
    
    
}


// 4)

func number_is_palindrome(number: Int) -> Bool {
    
    var array = Array<Int>()
    var reversearray = Array<Int>()
    var numcopy = number
    
    while numcopy > 0 {
        
        array.append(numcopy % 10)
        reversearray.insert(numcopy % 10, atIndex: 0)
        numcopy = numcopy / 10
        
    }
    
    return array == reversearray
    
}


