//: https://docs.google.com/document/d/1T7tYRqpDPWoxarfmXqfRCHB-YqvA8-Qx_mEyy5smtfc

//2)

import UIKit

let blacklist: Set<String> = ["hi", "hey"]

func moderate(message: String) -> Bool {
    let words = (message as NSString).componentsSeparatedByString(" ")
    for word in words {
        if blacklist.contains(word.lowercaseString){
            return false
            
        }
    }
    return true
}

//Test
moderate("hi, how are you")




//3)

protocol PhoneBookProtocol {
    mutating func addPerson(name: String, phoneNumber: String)
    mutating func removePerson(name: String)
    mutating func importFrom(oldPhonebook: [(String, String)])
    func findPerson(name: String) -> String? // Return phone #
}

class PhoneBook: PhoneBookProtocol {
    var storage: [String : String] = [:] // @{}
    //var storage = Dictionary<String, String>()
    
    func addPerson(name: String, phoneNumber: String) {
        storage[name] = phoneNumber
    }
    
    func removePerson(name: String) {
        storage.removeValueForKey(name)
    }
    
    func findPerson(name: String) -> String? {
        return storage[name]
    }
    
    func importFrom(oldPhonebook: [(String, String)]) {
        for entry in oldPhonebook {
            addPerson(entry.0, phoneNumber: entry.1)
        }
    }
}


let oldData = [("Caleb", "501-555-1234"), ("Mike", "212-555-4321"), ("Jenny", "345-867-5309")]

let phoneBook = PhoneBook()
phoneBook.importFrom(oldData)

phoneBook.findPerson("Jenny")




