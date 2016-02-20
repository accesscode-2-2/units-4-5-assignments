//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//: https://docs.google.com/document/d/1T7tYRqpDPWoxarfmXqfRCHB-YqvA8-Qx_mEyy5smtfc


//Homework
//1)    Write good hash functions for the following data types. Justify your choices and how they avoid                  collisions.
//
//
//  Int
//
//
//  struct Point: Hashable {
//    let x, y: Int
//  }
//
//  Array<Int>
//
//
//2)    You moderate a popular mobile device discussion forum. You want to cut down on the vitriol and make your work easier, so you decide to implement a blacklist based system to automatically reject or approve posts. For example:
//
//moderate("I would never use a crApple product!") // false (reject)
//moderate("I wish all these FANDROIDS would just shut up!") // false
//moderate("M$ is the worst, Linux rules!") // false
//moderate("Can’t we all just get along?") // true (approve)
//
//Write moderate(message: String) -> Bool, using a built-in Swift Set to manage your blacklist. Make your method case insensitive; it should block the word no matter what combination of upper and lowercase letters is used.
//
//
//3)    Your company makes a phonebook app, and your users have been complaining about how long it takes to look people’s numbers up. You decide to upgrade your archaic array-based system to a sleek, modern hash map.
//
//Write a phonebook class that uses either our HashMap from class or the built in Swift dictionary (your choice). It should implement the protocol below. It needs to support importing from the old array based format which used an array of tuples, like [(“Caleb”, “501-555-1234”), (“Mike”, “212-555-4321”), (“Jenny”, “345-867-5309”)]
//
//
//protocol PhoneBookProtocol {
//    mutating func addPerson(name: String, phoneNumber: String)
//    mutating func removePerson(name: String)
//    mutating func importFrom(oldPhonebook: [(String, String)])
//    func findPerson(name: String) -> String // Return phone #
//}
//
