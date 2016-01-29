//
//  main.swift
//  FindAFile
//
//  Created by Ayuna Vogel on 1/27/16.
//  Copyright © 2016 Ayuna Vogel. All rights reserved.
//

// Create a Swift command line project to find files on your computer by name. 
// Your solution should use recursion. 
// + Your method should return “NOT FOUND” if it couldn’t find the file,
// otherwise it should return the full path to that file.



import Foundation

func findFile(name: String, atPath: String) -> String {
    let fileManager = NSFileManager.defaultManager()
    let contents =
    try! fileManager.contentsOfDirectoryAtPath(atPath)
    for fileOrDir in contents {
        var isDir = ObjCBool(false);
        let fullPath = atPath + "/" + fileOrDir
        let exists = fileManager.fileExistsAtPath(fullPath, isDirectory: &isDir)
        if exists && Bool(isDir) {
            //print("DIR: " + fileOrDir)
            // YOUR CODE HERE
            let result = findFile(name, atPath: fullPath)
            if result != "NOT FOUND" {
                return result
            }
        } else if exists {
            //print("FILE: " + fileOrDir)
            // YOUR CODE HERE
            if fileOrDir == name {
                return fullPath
            }
        } else {
            print("NEITHER: " + fileOrDir)
        }
    }
    return "NOT FOUND"
}

print(findFile("awesome-idea.txt", atPath: "/Users/ayunavogel/Documents"))

print(findFile("4f336c1ad70f0aa37b21fa9db1a66cc9a3068a7aaad85be3430969dd85639cea.jpg", atPath: "/Users/ayunavogel/Documents"))

