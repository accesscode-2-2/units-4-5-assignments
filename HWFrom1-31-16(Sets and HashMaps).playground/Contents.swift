import UIKit

//: https://docs.google.com/document/d/1T7tYRqpDPWoxarfmXqfRCHB-YqvA8-Qx_mEyy5smtfc


//1)
//a)


//b)


//c)



//2)

let blacklist: Set<String> = ["crapple", "fandroid", "m$"]

func moderate(message: String)->Bool {
    let words = (message as NSString).componentsSeparatedByString(" ")
    
    for word in words {
        if blacklist.contains(word.lowercaseString){
            return false
        }
    }
    return true
}

moderate("I love apple")



//3)
[(“Caleb”, “501-555-1234”), (“Mike”, “212-555-4321”), (“Jenny”, “345-867-5309”)]

class PhoneBook {
   // var storge = Dictionary<String,String>()
    var storage: [String : String] = [:]
    
    func addPerson(name: String, phoneNumber: String){
        storage[name]=phoneNumber
    }
}

protocol PhoneBookProtocol {
    mutating func addPerson(name: String, phoneNumber: String)
    mutating func removePerson(name: String)
    mutating func importFrom(oldPhonebook: [(String, String)])
    func findPerson(name: String) -> String // Return phone #
}
