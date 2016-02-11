//https://docs.google.com/document/d/1te7mLS06MEYwETFSbVBqMrIzJ43GTEo5uuCiWdB0fyE/edit?usp=drivesdk


//1 Build and return the binary tree representation of the expression. The following characters should be treated as operators: +-*/

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

extension Node {
    func printInOrder(){
        left?.printInOrder()
        print(self)
        right?.printInOrder()
    }
}

func parseExpression(input: String) -> [Node<Character>?] {
    
    let operators: Set<Character> = ["+", "-", "*", "/"]
    var stack: [Node<Character>] = []
    for character in input.characters {

        let node = Node (value: character)
        
        if !operators.contains(character){
            stack.append(node)
        } else {
            node.right = stack.removeLast()
            node.left = stack.removeLast()
            stack.append(node)
        }
        
    }
    stack.first?.printInOrder()
    return stack
}

//check
let input = "ab+cde+**"

parseExpression(input)




//Bonus1


//Bonus2
