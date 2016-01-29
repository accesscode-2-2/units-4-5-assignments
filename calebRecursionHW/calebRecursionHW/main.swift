//
//  main.swift
//  calebRecursionHW
//
//  Created by Jason Wang on 1/28/16.
//  Copyright © 2016 Jason Wang. All rights reserved.
//

import Foundation


func findFile(name: String, atPath: String) -> String {
    let fileManager = NSFileManager.defaultManager()
    let contents = try! fileManager.contentsOfDirectoryAtPath(atPath)
    for fileOrDir in contents {
        var isDir = ObjCBool(false);
        let fullPath = atPath + "/" + fileOrDir
        let exists = fileManager.fileExistsAtPath(fullPath, isDirectory: &isDir)
        if exists && Bool(isDir) {
            // YOUR CODE HERE
            print("DIR: " + fileOrDir)
            let result = findFile(name, atPath: fullPath)
            if result != "NOT FOUND" {
                return result
            }
        } else if exists {
            // YOUR CODE HERE
                if fileOrDir == name {
                    return "FOUND" + "FILE: " + fullPath
                }
        } else {
            print("NEITHER: " + fileOrDir)
        }
    }
    return "NOT FOUND"
}

print(findFile("20160112JasonWang.pdf", atPath: "/Users/jasonwang/Documents"))
