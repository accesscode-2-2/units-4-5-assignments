//: Playground - noun: a place where people can play

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

//1) Without looking at the Big O Cheatsheet, write down the average time and space complexity for bubble sort, insertion sort, selection sort, mergesort, and quicksort.

                // Time Complexity                  Space Complexity
//Bubble Sort       O(n^2)                              O(1)
//Insertion Sort   O(n^2)                               O
//Merge Sort       O(nlogn)                             O(n)
//Selection Sort   O(n^2)                               O(1)
//Quick Sort  O(nlogn), worst case O(n^2)               O(1)

//2)

//3)

//4)

//5)

//6)Given an array of strings containing “[“,”]”,”{“,”}”,”(“,”)”. Output whether or not the parentheses are balanced.
//Good examples: () [] () ([]()[])
//Bad examples: ( ( ] ([)]

//func isBalanced(paren: [String]) -> Bool {
//    let items :[String] = []
//    var stack : Stack<String> = Stack<String>(items: items)
//    if stack.size() == 0 {
//        if paren[0] == ")" || paren[0] == "]" {
//            return false
//        }
//    }
//    for str in paren {
//        if str == "(" || str == "[" {
//            stack.push(str)
//        }
//        else if str == ")" {
//            if stack.peek() == "(" {
//                stack.pop()
//                continue
//            }
//            else{return false}
//        }
//        else if str == "]" {
//            if stack.peek() == "[" {
//                stack.pop()
//                continue
//            }
//            else {return false}
//        }
//    }
//    return stack.size() == 0
//}
//let inputArr = ["(",")"]
//isBalanced(inputArr)
//
//let inputArr2 = ["(", "(","]","(","[",")","]"]
//isBalanced(inputArr2)
//
//let inputArr3 = ["(",")","[","]","(",")", "(","[","]",")","(",")","[","]"]
//
//isBalanced(inputArr3)
//
//let inputArr4 = ["[","(","(","(",")",")",")","]","]"]
//isBalanced(inputArr4)
