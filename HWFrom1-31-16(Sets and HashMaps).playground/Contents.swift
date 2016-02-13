import UIKit

//: https://docs.google.com/document/d/1T7tYRqpDPWoxarfmXqfRCHB-YqvA8-Qx_mEyy5smtfc

/*
//1)
Write good hash functions for the following data types. Justify your choices and how they avoid collisions.

a)
Int



b)
struct Point: Hashable {
let x, y: Int
}


c)
Array<Int>


//2)
You moderate a popular mobile device discussion forum. 
You want to cut down on the vitriol and make your work easier, 
so you decide to implement a blacklist based system 
to automatically reject or approve posts. 

For example:

moderate("I would never use a crApple product!") // false (reject)
moderate("I wish all these FANDROIDS would just shut up!") // false
moderate("M$ is the worst, Linux rules!") // false
moderate("Can’t we all just get along?") // true (approve)

Write moderate(message: String) -> Bool, using a built-in Swift Set to manage your blacklist. 
Make your method case insensitive; it should block the word no matter what combination of upper and lowercase letters is used.
*/


var blacklist = Set<String>()

for word in ["crApple", "FANDROIDS", "M$"] {
    blacklist.insert(word.lowercaseString)
}

blacklist

let msg1 = "I would never use a crApple product!"
let msg2 = "I wish all these FANDROIDS would just shut up!"
let msg3 = "M$ is the worst, Linux rules!"
let msg4 = "Can’t we all just get along?"

let msg2b = "I wish all these fandroids would just shut up!"

func moderate(message: String) -> Bool
{
    
    var msgSet = Set<String>()
    
    for word in message.componentsSeparatedByString(" ") {
        
        msgSet.insert(word.lowercaseString)
        
    }
    
    return msgSet.isDisjointWith(blacklist)
}

moderate(msg1)
moderate(msg2)
moderate(msg3)
moderate(msg4)
moderate(msg2b)


//*********Also found out about this built in "spellcheck" object UITextChecker*******************
//func wordIsReal(word: String) -> Bool {
//    let checker = UITextChecker()
//    let range = NSMakeRange(0, word.characters.count)
//    let misspelledRange = checker.rangeOfMisspelledWordInString(word, range: range, startingAt: 0, wrap: false, language: "en")
//    
//    return misspelledRange.location == NSNotFound
//}
//
//func moderate(message: String) -> Bool
//{
//    for word in message.componentsSeparatedByString(" ") {
//        
//        if !wordIsReal(word) {
//            
//            return false
//        }
//    }
//
//    return true
//}
//
//moderate(msg1)
//moderate(msg2)
//moderate(msg3)//doesn't work with this one!
//moderate(msg4)



/*
//3)
Your company makes a phonebook app, and your users have been complaining
about how long it takes to look people’s numbers up. You decide 
to upgrade your archaic array-based system to a sleek, modern hash map.

Write a phonebook class that uses either our HashMap from class 
or the built in Swift dictionary (your choice). 

It should implement the protocol below. 

It needs to support importing from the old array based format 
which used an array of tuples, like:
[(“Caleb”, “501-555-1234”), (“Mike”, “212-555-4321”), (“Jenny”, “345-867-5309”)]

*/
protocol PhoneBookProtocol {
    
    mutating func addPerson(name: String, phoneNumber: String)
    mutating func removePerson(name: String)
    mutating func importFrom(oldPhonebook: [(String, String)])
    func findPerson(name: String) -> String? // Return phone #
}



struct PhoneBook:PhoneBookProtocol, CustomStringConvertible {
    
    var phonebookDict = [String:String]()
    
    mutating func addPerson(name: String, phoneNumber: String) {
        
        phonebookDict[phoneNumber] = name
        
    }
    
    mutating func removePerson(name: String) {
        
        phonebookDict.removeValueForKey(name)
    }
    
    mutating func importFrom(oldPhonebook: [(String, String)]) {
        
        for i in 0..<oldPhonebook.count {
            
            let phoneNum = oldPhonebook[i].1
            let name = oldPhonebook[i].0
            
            phonebookDict[name] = phoneNum
            
        }
        
    }
    
    //An awesome alternative :)
//    func importFrom(oldPhonebook: [(String, String)]) {
//        for entry in oldPhonebook {
//            addPerson(entry.0, phoneNumber: entry.1)
//        }
//    }
    
    func findPerson(name: String) -> String? {
        
        
        return phonebookDict[name]
    }
    
    //Custom String Convertible
    var description: String {
        
        return "{\(phonebookDict)}"
    }
}


let oldPhoneBook = [("Caleb", "501-555-1234"), ("Mike", "212-555-4321"), ("Jenny", "345-867-5309")]

var newPhonebook = PhoneBook()

newPhonebook.importFrom(oldPhoneBook)

newPhonebook.description
