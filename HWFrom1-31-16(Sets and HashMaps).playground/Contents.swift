//: https://docs.google.com/document/d/1T7tYRqpDPWoxarfmXqfRCHB-YqvA8-Qx_mEyy5smtfc

import Foundation

//1)
// a) Int

func hash(input: Int) -> String {
    
    return "id\(input)"
}
hash(2)
hash(102)
hash(305)
// Simple hash. Always returns the same hash for the same input and avoids collisions because, assuming every input is unique, every hash value will be different seeing as it's only appending the input the prefix "id"

// b) 

struct Point {
    let x, y: Int
}

func hashStruct(structure: Point) -> String {
    let xPoint = structure.x
    let yPoint = structure.y
    
    let hashPoints = ((xPoint * (xPoint + 1)/2)) + yPoint + 32
    
    return String(hashPoints)
}

var structure = Point(x: 2, y: 10)
var structure1 = Point(x: 41, y: 4)
var structure2 = Point(x: 4, y: 6)
var structure3 = Point(x: 5, y: 12)
var structure4 = Point(x: 12, y: 32)
hashStruct(structure)
hashStruct(structure1)
hashStruct(structure3)
hashStruct(structure4)

// Hash that takes the sum of all integers from 1 to x adds yPoint.


//c) Array<Int>



//2)

func moderate(input: String) -> Bool {
    let blockedWords = Set(["crapple", "fandroids", "fandroid", "m$", "micro$oft"])
    let separators = NSCharacterSet(charactersInString: "!, ")
    let inputOfWords = Set(input.lowercaseString.componentsSeparatedByCharactersInSet(separators))
    let setOfBlockedWordsInInput = blockedWords.intersect(inputOfWords)
    let inputIsApproved = setOfBlockedWordsInInput.isEmpty
    
    return inputIsApproved
    
}

moderate("I would never use a crAPPLE product!") // false
moderate("I wish all these FANDROIDS would just shut up!") // false
moderate("M$ is the worst, Linux rules!") // false
moderate("Can’t we all just get along?") // true (approve)


//3)
protocol PhoneBookProtocol {
    mutating func addPerson(name: String, phoneNumber: String)
    mutating func removePerson(name: String)
    mutating func importFrom(oldPhonebook: [(String, String)])
    func findPerson(name: String) -> String // Return phone #
}

class PhoneBook: PhoneBookProtocol {
    var phoneBook = [String: String]()
    
    func addPerson(name: String, phoneNumber: String) {
        phoneBook[name] = phoneNumber
    }
    
    func removePerson(name: String) {
        phoneBook.removeValueForKey(name)
    }
    
    func importFrom(oldPhonebook: [(String, String)]) {
        for i in 0..<oldPhonebook.count {
            phoneBook[oldPhonebook[i].0] = oldPhonebook[i].1
        }
    }
    
    func findPerson(name: String) -> String {
        
        guard let phoneNumber = phoneBook[name] else {
            return "Person not found"
        }
        
        return phoneNumber
    }
}

var phoneBook = PhoneBook()
phoneBook.addPerson("Jovanny", phoneNumber: "860-478-8872")
print(phoneBook.phoneBook)
phoneBook.importFrom([("Caleb", "501-555-1234"), ("Mike", "212-555-4321"), ("Jenny", "345-867-5309")])
print(phoneBook.phoneBook)
phoneBook.findPerson("Harold")
phoneBook.removePerson("Jovanny")
print(phoneBook.phoneBook)




