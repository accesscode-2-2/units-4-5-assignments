//
//  main.swift
//  FileFinder
//
//  Created by Jackie Meggesto on 1/26/16.
//  Copyright © 2016 Jackie Meggesto. All rights reserved.
//

import Foundation

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

// print(findFile("APITest.py", atPath: "/Users/jackiemeggesto/Documents"))

print(UINT64_MAX)


