//https://docs.google.com/document/d/1te7mLS06MEYwETFSbVBqMrIzJ43GTEo5uuCiWdB0fyE/edit?usp=drivesdk


//1

// Binary tree node class definition
//class Node<T> { // T is the type of the value we're storing in this node
//    // There are no restrictions on T, so this node can hold *any* kind of value (and still be correctly typed!)
//    let value: T
//    ​
//    // The root of the left subtree, or nil
//    var left: Node?
//    ​
//    // The root of the right subtree, or nil
//    var right: Node?
//    ​
//    // All nodes must be initialized with a non-nil value
//    init(value: T) {
//        self.value = value
//    }
//}
//​
//// Custom string convertible
//extension Node: CustomStringConvertible {
//    var description: String {
//        // Just return a string representation of this node's value
//        return "\(value)"
//    }
//}
//​
//// Tree traversals (as strings)
//extension Node {
//    // Create a string representing the postorder traversal of this tree
//    var postorderDescription: String {
//        // Get the postorder description of the left subtree
//        let lt = left?.postorderDescription ?? ""
//        // Get the postorder description of the right subtree
//        let rt = right?.postorderDescription ?? ""
//        // Return left, then right, then self
//        return lt + rt + description
//    }
//    ​
//    // Create a string representing the inorder traversal of this tree
//    var inorderDescription: String {
//        // Get the inorder description of the left subtree
//        let lt = left?.inorderDescription ?? ""
//        // Get the inorder description of the right subtree
//        let rt = right?.inorderDescription ?? ""
//        // Return left, then self, then right
//        return lt + description + rt
//    }
//    ​
//    // Create a string representing the postorder traversal of this tree, but with parentheses
//    var inorderDescriptionWithParens: String {
//        // If a string is more than one character long, add parentheses around it
//        func addParensIfNeeded(string: String) -> String {
//            return string.characters.count <= 1 ? string : "(\(string))"
//        }
//        // Get the inorder (with parens) description of the left subtree
//        let lt = left?.inorderDescriptionWithParens ?? ""
//        // Get the inorder (with parens) description of the right subtree
//        let rt = right?.inorderDescriptionWithParens ?? ""
//        // Return left, then self, then right
//        return addParensIfNeeded(lt) + description + addParensIfNeeded(rt)
//    }
//}
//​
//// Parse an input string and return a tree if the string is valid
//func parse(input: String) -> Node<Character>? {
//    // Treat +, -, *, and / as operators
//    let operators: Set<Character> = ["+", "-", "*", "/"]
//    ​
//    // Start with an empty stack
//    var stack: [Node<Character>] = []
//    ​
//    // Iterate over each character in the input string
//    for character in input.characters {
//        // We're going to create one new node for each character in the input
//        let node: Node<Character>
//        ​
//        switch character {
//        case let c where operators.contains(c):
//            // Case #1: the current character is an operator (it's in the `operators` set)
//            guard stack.count >= 2 else {
//                // If there are fewer than two nodes on the stack, the input was invalid
//                return nil
//            }
//            // Pop the top two nodes off of the stack
//            let b = stack.removeLast() // right operand
//            let a = stack.removeLast() // left operand
//            // Create a node for the operator
//            node = Node(value: c)
//            // Set the left operand as the left child of the operator node
//            node.left = a
//            // Set the right operand as the right child of the operator node
//            node.right = b
//        default:
//            // Case #2: the current character is a value (anything that's not an operator)
//            // Create a node for the value
//            node = Node(value: character)
//        }
//        ​
//        // Push the created node back onto the stack and return to the top of the loop
//        stack.append(node)
//    }
//    ​
//    // Return the top node on the stack
//    return stack.removeLast()
//}
//​
//// Evaluate a tree representing the parsed input (get the result of the expression)
//func evaluate(node: Node<Character>?) -> Int? {
//    // Each operator is a function that takes two ints (left and right operands) and returns a value
//    typealias Op = (Int, Int) -> Int
//    ​
//    // Define the valid operations as functions
//    let add: Op = { a, b in a + b }
//    let sub: Op = { a, b in a - b }
//    let mul: Op = { a, b in a * b }
//    let div: Op = { a, b in a / b }
//    ​
//    // Create a dictionary mapping each operator character to its corresponding function
//    let operators: [Character : Op] = [
//        "+": add,
//        "-": sub,
//        "*": mul,
//        "/": div,
//    ]
//    ​
//    guard let node = node else {
//        // If we received a nil tree, return nil
//        return nil
//    }
//    ​
//    // If the value at the current node is an integer, return the value
//    if let val = Int(String(node.value)) {
//        return val
//    }
//    ​
//    // If the value at the current node is an operator, get the corresponding function
//    if let op = operators[node.value] {
//        // Check to make sure the left and right subtrees evaluate to non-nil integer values
//        if let l = evaluate(node.left), r = evaluate(node.right) {
//            // Return the result of calling the operator function on the left and right values
//            return op(l, r)
//        }
//    }
//    ​
//    // If we get here, one of two things happened. Either:
//    //  1. the node is invalid (it's nil, or its value isn't an integer or an operator), or
//    //  2. one or both of the node's subtrees didn't evaluate to an integer
//    return nil
//}
//​
//// Convenience function that parses and then evaluates a string
//func parseAndEvaluate(input: String) -> Int? {
//    return evaluate(parse(input))
//}
//​
//​
/////////////////////////////////////////////////////////////////////
//​
//​
//// Start with an input string (this is the one from Wikipedia)
//let expressionString = "ab+cde+**"
//// Create a tree from the input by calling `parse`
//let tree = parse(expressionString)
//// Get the postorder traversal of the tree as a string
//tree?.postorderDescription // (should match expressionString)
//// Get the inorder traversal as a string (with parens)
//tree?.inorderDescriptionWithParens
//// Parse and evaluate a valid input string
//parseAndEvaluate("21+5*3/55**") // (should be non-nil)
//// Parse and evaluate an invalid input string
//parseAndEvaluate("ab+") // (should be nil)
