//: Playground - noun: a place where people can play

import Foundation

// FOR REFERENCE, insertion sort
func insertionSort(inout numberList:[Int]){
    var x, y, key : Int
    for (x = 0; x < numberList.count; x++) {
        
        key = numberList[x]
        for (y = x; y > -1; y--) {
            if (key < numberList[y]) {
                numberList.removeAtIndex(y + 1)
                numberList.insert(key, atIndex: y)
            }
        }
    }
}

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

/* 1) 

BUBBLE SORT T: O(n^2), S: O(1)
INSERTION SORT T: O(n^2), S: O(1)
SELECTION SORT T: O(n^2), S: O(1)
MERGE SORT T: O(n log n), S: O(n)
QUICK SORT T: O(n log n), S: O(log n) <- not sure why this space complexity value. Ask in class */

/* 2)

Smaller space complexity */

/* 3) */

// function to determine a good pivot value
func median(inout array: [Int], first: Int, last: Int) {
    
    if last - first > 4 {
        
        var medianIndex: Int
        var candidates: [Int] = [array.first!, array[(last+first) / 2], array.last!]
        
        if (candidates[0] >= candidates[1] && candidates[0] <= candidates[2]) ||
            (candidates[0] >= candidates[2] && candidates[0] <= candidates[1]) {
                
                medianIndex = first
                
        } else if (candidates[1] >= candidates[2] && candidates[1] <= candidates[0]) ||
            (candidates[1] >= candidates[0] && candidates[1] <= candidates[2]) {
                
                medianIndex = array.count / 2
                
        } else {
            
            medianIndex = last
        }
        
        if medianIndex != first {
            
            swap(&array[first], &array[medianIndex])
        }
    }
}

// function to sort values in the array in relation to the pivot point
func partition(inout array: [Int], first: Int, last: Int) -> Int {
    
    let pivotIndex = first
    var rightIndex = last
    var leftIndex = pivotIndex + 1
    
    while leftIndex <= rightIndex {
        
        if array[leftIndex] > array[pivotIndex] {
            
            if array[rightIndex] < array[pivotIndex] {
                
                swap(&array[rightIndex], &array[leftIndex])
                
            } else {
                
                rightIndex--
            }
            
        } else {
            
            leftIndex++
        }
    }
    
    if pivotIndex != rightIndex {
        
        swap(&array[pivotIndex], &array[rightIndex])
    }
    
    return rightIndex
}

// putting everything together for recursive goodness
func quickSort(inout array: [Int], first: Int, last: Int) {
    
    if last - first <= 0 {
        return
    }
    median(&array, first: first, last: last)
    let splitPoint = partition(&array, first: first, last: last)
    quickSort(&array, first: 0, last: splitPoint - 1)
    quickSort(&array, first: splitPoint + 1, last: last)
}


/* 4) */

func generateArray(size: Int, valueUpperBound: Int) -> [Int] {
    
    var array = Array<Int>(count: size, repeatedValue: 0)
    
    for i in 0..<array.count {
        
        array[i] = Int(arc4random_uniform(UInt32(valueUpperBound)))
    }
    return array
}

var randomLongArray = generateArray(10000, valueUpperBound: 10000)
var quickShortArray = [22, 59, 38, 93, 95, 0, 34, 58, 72, 15]
quickSort(&randomLongArray, first: 0, last: randomLongArray.count - 1)
print(randomLongArray)

/* 5) 

Mergesort does the sorting as the function pops back up, while Quicksort doesn't do any computation as 
the functions are popping off the statck. Also Quicksort sorts in place while Mergesort uses greater 
space complexity by breaking the array down into many other smaller arrays. */

/* 6) Do this on paper first [easier to visualize] */

/* STAAAAAAACKS */
// This seems like a stack problem to me, so I'll use this implementation
struct Stack<T> {
    
    var items: [T]
    
    init() {
        items = [T]()
    }

    // push
    mutating func push(element: T) {
        
        items.append(element)
    }
    // pop
    mutating func pop() -> T? {
        
        if items.count > 0 {
            
            return items.removeLast()
        }
        return nil
    }
    // peek
    func peek() -> T? {
        
        return items.last
    }
    // size
    func size() -> Int {
        
        return items.count
    }
}

// this struct helps me (and the computer) conceptualize what the two characteristics are
// that must match up in order for bracket pairs to be considered valid
struct Bracket {
    
    var orientation: String
    var name: String
    
    init(symbol: String) {
        
        switch symbol {
        case "(":
            orientation = "open"
            name = "parenthesis"
        case ")":
            orientation = "close"
            name = "parenthesis"
        case "[":
            orientation = "open"
            name = "bracket"
        case "]":
            orientation = "close"
            name = "bracket"
        case "{":
            orientation = "open"
            name = "brace"
        case "}":
            orientation = "close"
            name = "brace"
        default:
            orientation = "invalid"
            name = "invalid"
        }
    }
}

func isBalanced(array: [String]) -> Bool {
    
    // no way there will be matching pairs if the array count is odd. an array of 0
    // brackets is considered balanced in this implementation, though if we wanted to
    // we could also trim that out here
    if array.count % 2 != 0 { return false }
    
    var stack = Stack<Bracket>()
    
    for i in 0..<array.count {
        
        let bracket = Bracket(symbol: array[i])
        print(bracket)
        
        if i == 0 {
            
            // if it starts with a closing bracket we're in trouble
            if bracket.orientation == "close" { return false }
            
            // otherwise, move it to the stack. we have nothing to compare
            // with yet
            stack.push(bracket)
            
        } else {
            
            // when we get a close bracket and the type does not match the 
            // last bracket put on the stack, we're in trouble
            if bracket.orientation == "close" &&
            bracket.name != stack.peek()?.name {
                
                return false
                
            // but if we get a close bracket and it matches the type of the
            // last bracket on the stack, we pop the last one from the stack. we 
            // have a match
            } else if bracket.orientation == "close" &&
                bracket.name == stack.peek()?.name {
                    
                stack.pop()
            
            // otherwise it's another opening bracket that needs to be put on the stack
            } else {
                
                stack.push(bracket)
            }
        }
    }
    
    // only way the array is balanced is if at the end we have an empty stack
    if stack.items.count == 0 { return true }
    
    // otherwise the default result is false
    return false
}

print(isBalanced(["(", ")", "[", "]", "(", ")", "(", "[", "]", "(", ")", "[", "]", ")"]))
print(isBalanced(["(", "(", "]", "(", "[", ")", "]"]))
print(isBalanced(["]", "(", "]", "(", "[", ")", "]"]))
print(isBalanced(["(", ")", ")", ")", "(", ")", "(", "[", "]", "(", ")", "[", "]", ")"]))
print(isBalanced(["[", "(", "[", "(", "[", "[", "["]))
