import UIKit

//1) Write good hash functions for the following data types. Justify your choices and how they avoid collisions.


// a) Int

func hash(x: Int) -> Int {
    return x
}

// this would ensure that there is a unique list of elements that are hashed to their own indexes.



//b) 
//struct Point: Hashable {
//    let x, y: Int
//}
//
//func hash(point: Point) -> Int {
//    
//    return (x + y)(x + y)/2
//}



// c) Array<Int>
//sum of all elements in the array

/* 2)
You moderate a popular mobile device discussion forum. You want to cut down on the vitriol and make your work easier, so you decide to implement a blacklist based system to automatically reject or approve posts. For example:

moderate("I would never use a crApple product!") // false (reject)
moderate("I wish all these FANDROIDS would just shut up!") // false
moderate("M$ is the worst, Linux rules!") // false
moderate("Can’t we all just get along?") // true (approve)

Write moderate(message: String) -> Bool, using a built-in Swift Set to manage your blacklist. Make your method case insensitive; it should block the word no matter what combination of upper and lowercase letters is used.

*/

func moderate(input: String) -> Bool {
    let badWords = Set(["crapple", "fandroids", "worst", "m$", "shut up"])

    let cin = Set(input.lowercaseString.componentsSeparatedByCharactersInSet(NSCharacterSet(charactersInString: "!, ")))

    let containsBadWords = badWords.intersect(cin)
    
    
    return containsBadWords.isEmpty
    
}

moderate("I would never use a crAPPLE product!")
moderate("Can’t we all just get along?")

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
        
        if ((phoneBook[name]) != nil){
            return phoneBook[name]!
        }
        else{
            return "not found"
        }
        
    }
}

var phoneBook = PhoneBook()

phoneBook.addPerson("Mike", phoneNumber: "21233444")
phoneBook.addPerson("Michael", phoneNumber: "83333840")
phoneBook.addPerson("Jil", phoneNumber: "98397103")
phoneBook.findPerson("Jil")
phoneBook.importFrom([("Henna", "23840278")])
phoneBook.removePerson("Michael")