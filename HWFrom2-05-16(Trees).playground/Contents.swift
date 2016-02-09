//https://docs.google.com/document/d/1te7mLS06MEYwETFSbVBqMrIzJ43GTEo5uuCiWdB0fyE/edit?usp=drivesdk


//1


//Bonus1


//Bonus2

/*

Using the Swift binary tree implementation below (the Node class), implement a function that takes in a string containing a simple postfix mathematical expression, and returns a binary tree representing that expression using the process described here.

Required: Build and return the binary tree representation of the expression. The following characters should be treated as operators: +-

Bonus 1: Print the inorder traversal of the binary tree.
Bonus 2: Evaluate the expression (substituting integers for the letters in the expression).

Tips:
You may use additional data structures—as suggested in the link above, you will at least want to use a stack. This can be done using the Array type in Swift.
Test your tree by checking to see if the string returned by postorderDescription is equal to the input string.

Sample input:
"ab+cde+**"

Template for the function you should implement:
func parseExpression(input: String) -> Node<Character>? {
    // Your implementation here!
    let operators: Set<Character> = ["+", "-", "*", "/"]
    var stack: [Node<Character>] = []
    for character in input.characters {
        // Do something for each character
    }
    return nil
}

Binary tree implementation:
class Node<T> {
    let value: T
    var left: Node?
    var right: Node?
    init(value: T) {
        self.value = value
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        return "\(value)"
    }
    var postorderDescription: String {
        let lt = left?.postorderDescription ?? ""
        let rt = right?.postorderDescription ?? ""
        return lt + rt + description
    }
}


*/

//: Playground - noun: a place where people can play

import UIKit
import Foundation

indirect enum Tree {
    case Node(Int, left: Tree, right: Tree)
    case Empty
}

func printTree(tree: Tree, label: String = "t") -> String {
    switch(tree) {
    case let .Node(x, left, right):
        var ret = ""
        switch (left) {
        case .Node: ret += "\(label) -> \(label)l\n"
        case .Empty: ret += "\(label) -> \(label)L\n\(label)L[shape=point]\n"
        }
        switch (right) {
        case .Node: ret += "\(label) -> \(label)r\n"
        case .Empty: ret += "\(label) -> \(label)R\n\(label)R[shape=point]\n"
        }
        ret += "\(label)[label=\"\(x)\"]\n"
        return ret + printTree(left, label: label + "l") +
            printTree(right, label: label + "r")
    case .Empty:
        return ""
    }
}

func generateTree(depth: UInt32 = 10) -> Tree {
    if (arc4random_uniform(depth) == 0) {
        return Tree.Empty
    } else {
        return Tree.Node(Int(arc4random_uniform(100)),
            left: generateTree(depth - 1),
            right: generateTree(depth - 1))
    }
}

// To show the tree, uncomment this and copy and paste the output into
// http://www.webgraphviz.com/ (or your local GraphViz installation)
//print("digraph g {\n" + printTree(tree) + "}")

func dfs(tree: Tree, needle: Int) -> Bool {
    switch (tree) {
    case let .Node(value, left: left, right: right):
        if value == needle {
            return true
        } else {
            return dfs(left, needle: needle) || dfs(right, needle: needle)
        }
    case .Empty:
        return false
    }
}

//let tree = Tree.Node(28, left: Tree.Empty, right: Tree.Empty)

let tree = generateTree(8)

print("diagraph g {\n" + printTree(tree) + "}")

dfs(tree, needle: 18)
