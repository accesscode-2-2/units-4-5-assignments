//: Playground - noun: a place where people can play

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#
/*
//1)
Without looking at the Big O Cheatsheet, write down the average time and space complexity for 

-bubble sort:
    TIME: O(n^2)
    SPACE:

-insertion sort:
    TIME: O(n)
    SPACE:

-selection sort:
    TIME: O(n)
    SPACE:

-mergesort:
    TIME: O(n log(n))
    SPACE:
 
-quicksort:
    TIME: O(n log(n))
    SPACE:



//2)
What is the advantage of partitioning quicksort in place?

    -We save memory (Space complexity) because we don't have to create new arrays with every split.



//3)
Without looking, implement quicksort.




//4)
Write a function to generate an array of random numbers bounded between 1..<10,000 of size 10,000.

Int(arc4random_uniform(UInt32(10000)))

Compare the time it takes to run mergesort, quicksort, and quicksort with the median.
https://gist.github.com/gummibeatz/8ff29bcec54d7e3ef683




//5)
Describe the algorithmic difference between mergesort and quicksort. Where does the sorting happen? As the recursive calls are being pushed onto the stack or as they are being popped off?




//6)
Given an array of strings containing “[“,”]”,”{“,”}”,”(“,”)”. Output whether or not the parentheses are balanced.
Good examples: () [] () ([]()[])
Bad examples: ( ( ] ([)]
*/
func isBalanced(paren: [String]) -> Bool {
    
    var pStack = [String]()
    
    for str in paren {
        
        
        switch str {
            
        case "(":
            pStack.append(str)
            
        case "{":
            pStack.append(str)
            
        case "[":
            pStack.append(str)
            
        default:
            if pStack.count != 0 {
                
                pStack.removeLast()
                
            }else {
                
                pStack.append(str)
            }
            
        }
        
        print(pStack)
    }
    
    
    
    return pStack.count == 0
}

let pStr = ["(","(",")",")"]
let pStr2 = ["{","}","{","}","}"]
let pStr3 = [")","(",")","(",")","(","(",")","("]
let pStr4 = ["(",")","{","}","[","]"]
let pStr5 = ["(","]","{",")","[","}"]

isBalanced(pStr)
isBalanced(pStr2)
isBalanced(pStr3)
isBalanced(pStr4)
isBalanced(pStr5)

