//: Playground - noun: a place where people can play
//THIS IS AN OPTIONAL ASSIGNMENT

import UIKit

var str = "Hello, playground"

//https://docs.google.com/document/d/1KfnTOtPnBrYPFhBRAQPZBXor_mKDQvuJp4zwZbtHkRs/edit#heading=h.16sfqfmanxte


//1




//2




//3


// Calebs Questions: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#

//1

func iterativeFib(index: Int) -> Int {

    guard index >= 2 else {
        return 1
    }

    var fibBackTwo = 1
    var fibBackOne = 1
    var fibOfIndex = Int()
    for _ in 2...index {
        fibOfIndex = fibBackTwo + fibBackOne
        fibBackTwo = fibBackOne
        fibBackOne = fibOfIndex
    }

    return fibOfIndex
}

//2

import Foundation

var stepNum = 0
func tryStep() -> Int {
    let stepCount = Int(arc4random_uniform(3)) - 1
    stepNum += stepCount;
    switch(stepCount) {
    case -1: print("Ouch \(stepNum)")
    case 1: print("Yay  \(stepNum)")
    default: print("Beep \(stepNum)")
    }
    return stepCount
}

func stepUp() {

    let progress = tryStep()

    switch progress {
    case 0:
        stepUp()
    case 1:
        return
    case -1:
        stepUp()
        stepUp()
    default:
        return
    }
}

stepUp()
print(stepNum)
stepUp()
print(stepNum)

//3

func findFile(name: String, atPath: String) -> String {
    let fileManager = NSFileManager.defaultManager()
    let contents =
    try! fileManager.contentsOfDirectoryAtPath(atPath)
    for fileOrDir in contents {
        var isDir = ObjCBool(false);
        let fullPath = atPath + "/" + fileOrDir
        let exists = fileManager.fileExistsAtPath(fullPath, isDirectory: &isDir)
        if exists && Bool(isDir) {
            // YOUR CODE HERE
            print("DIR: " + fileOrDir)
        } else if exists {
            // YOUR CODE HERE
            print("FILE: " + fileOrDir)
        } else {
            print("NEITHER: " + fileOrDir)
        }
    }
    return "NOT FOUND"
}



