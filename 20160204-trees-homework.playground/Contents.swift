// trees homework: https://docs.google.com/document/d/1te7mLS06MEYwETFSbVBqMrIzJ43GTEo5uuCiWdB0fyE/edit#heading=h.za36ai6n5fth

import Foundation

/* Build and return the binary tree representation of the expression. The following characters should be treated as operators: + - * /

 You may use additional data structures—as suggested in the link above, you will at least want to use a stack. This can be done using the Array type in Swift.

Test your tree by checking to see if the string returned by postorderDescription is equal to the input string. */

// Binary tree implementation:

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

// template code:

func parseExpression(input: String) -> Node<Character>? {
    // Your implementation here!
    
    let operators: Set<Character> = ["+", "-", "*", "/"]
    var stack: [Node<Character>] = []
    for character in input.characters {
        // Do something for each character
        
    }
    return nil
}

let sampleImput = "ab+cde+**"
parseExpression(sampleImput)
