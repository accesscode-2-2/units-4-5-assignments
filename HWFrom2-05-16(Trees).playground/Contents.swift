//https://docs.google.com/document/d/1te7mLS06MEYwETFSbVBqMrIzJ43GTEo5uuCiWdB0fyE/edit?usp=drivesdk


/*
Using the Swift binary tree implementation below (the Node class),
implement a function that takes in: a string containing a simple postfix mathematical expression,
and returns: a binary tree representing that expression,
using the process described here: https://en.wikipedia.org/wiki/Binary_expression_tree#Example.
Required:
Build and return the binary tree representation of the expression.
The following characters should be treated as operators: +-*/

/*
Tips:
You may use additional data structures—as suggested in the link above, you will at least want to use a stack.
This can be done using the Array type in Swift.
Test your tree by checking to see if the string returned by postorderDescription is equal to the input string.
Sample input:
"ab+cde+**"


//Binary tree implementation:
*/
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

//Printing
extension Node {
    
    func printInorder() {
        left?.printInorder()
        print(self)
        right?.printInorder()
    }
    
}



//1

//Template for the function you should implement:

func parseExpression(input: String) -> [Node<Character>] {
    
    let operators: Set<Character> = ["+", "-", "*", "/"]
    var stack: [Node<Character>] = []
    for character in input.characters {
        let nodeChar = Node(value: character)
        if !operators.contains(character) {
            stack.append(nodeChar)
        } else {
            nodeChar.right = stack.removeLast()
            nodeChar.left = stack.removeLast()
            stack.append(nodeChar)
        }
}
    
    
    stack.first?.printInorder()
    
    return stack
}

let expTree = "ab+cde+**"

parseExpression(expTree)



