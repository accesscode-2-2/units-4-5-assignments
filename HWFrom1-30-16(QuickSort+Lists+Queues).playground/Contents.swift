
import Foundation
//: Playground - noun: a place where people can play

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

//1)
/*
bubble sort Time: O(n^2), Space: O(1)
insertion sort Time: O(n^2), Space: O(1)
selction sort Time: O(n^2), Space: O(1)
merge sort Time: O(n log n), Space: O(n)
quick sort Time: O(n log n), Space: O(log n)
*/

//2)

// Smaller space complexity

//3)

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

func quickSort(inout array: [Int], first: Int, last: Int) {
    
    if last - first <= 0 {
        return
    }
    median(&array, first: first, last: last)
    let splitPoint = partition(&array, first: first, last: last)
    quickSort(&array, first: 0, last: splitPoint - 1)
    quickSort(&array, first: splitPoint + 1, last: last)
}


//4)

func generateArray(size: Int, valueUpperBound: Int) -> [Int] {
    
    var array = Array<Int>(count: size, repeatedValue: 0)
    
    for i in 0..<array.count {
        
        array[i] = Int(arc4random_uniform(UInt32(valueUpperBound)))
    }
    return array
}



//5)
/*
Quick sort uses a pivot and sorts the two parts with the pivot as a reference point. Merge sort recursively splits the array by dividing them ito halves and merging them back together
*/
//6)

struct Stack<T> {
    
    var items: [T]
    
    init() {
        items = [T]()
    }
    
    
    mutating func push(element: T) {
        
        items.append(element)
    }
   
    mutating func pop() -> T? {
        
        if items.count > 0 {
            
            return items.removeLast()
        }
        return nil
    }
    
    func peek() -> T? {
        
        return items.last
    }
    
    func size() -> Int {
        
        return items.count
    }
}

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
    if array.count % 2 != 0 { return false }
    
    var stack = Stack<Bracket>()
    
    for i in 0..<array.count {
        
        let bracket = Bracket(symbol: array[i])
        print(bracket)
        
        if i == 0 {
            
            if bracket.orientation == "close" { return false }
            
            stack.push(bracket)
            
        } else {
            
            if bracket.orientation == "close" &&
                bracket.name != stack.peek()?.name {
                    
                    return false
                 
            } else if bracket.orientation == "close" &&
                bracket.name == stack.peek()?.name {
                    
                    stack.pop()
                    
            } else {
                
                stack.push(bracket)
            }
        }
    }
    
    if stack.items.count == 0 { return true }

    return false
}

print(isBalanced(["(", ")", "[", "]", "(", ")", "(", "[", "]", "(", ")", "[", "]", ")"]))
print(isBalanced(["(", "(", "]", "(", "[", ")", "]"]))
print(isBalanced(["]", "(", "]", "(", "[", ")", "]"]))
print(isBalanced(["(", ")", ")", ")", "(", ")", "(", "[", "]", "(", ")", "[", "]", ")"]))
print(isBalanced(["[", "(", "[", "(", "[", "[", "["]))
