//: Playground - noun: a place where people can play

import UIKit

//https://docs.google.com/document/d/1te7mLS06MEYwETFSbVBqMrIzJ43GTEo5uuCiWdB0fyE/edit?usp=drivesdk

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

//1

func parseExpression(input: String) -> Node<Character>? {
    // Your implementation here!
    let operators: Set<Character> = ["+", "-", "*", "/"]
    var stack: [Node<Character>] = []
    for character in input.characters {
        if operators.contains(character){
            let new : Node<Character> = Node(value: character)
            new.left = stack.removeFirst()
            new.right = stack.removeFirst()
            
            stack.append(new)
        }
        else{
            let new : Node<Character> = Node(value: character)
            new.left = nil
            new.right = nil
            stack.append(new)
            
        }
    }
    let node = stack.removeFirst();
    return node;
}

var node = parseExpression("ab+cde+**")
print(node?.postorderDescription)



//Bonus1


//Bonus2
