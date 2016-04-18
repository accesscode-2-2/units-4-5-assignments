//
//  main.swift
//  homeworkJan24
//
//  Created by Zoufishan Mehdi on 1/28/16.
//  Copyright © 2016 c4q. All rights reserved.
//

import Foundation

print("Hello, World!")

func findFile(name: String, atPath: String) -> String {
    let fileManager = NSFileManager.defaultManager()
    let contents =
    try! fileManager.contentsOfDirectoryAtPath(atPath)
    for fileOrDir in contents {
        var isDir = ObjCBool(false);
        let fullPath = atPath + "/" + fileOrDir
        let exists = fileManager.fileExistsAtPath(fullPath, isDirectory: &isDir)
        if exists && Bool(isDir) {
           // fileOrDir = fileManager.contentsOfDirectoryAtPath(atPath)
            contentsOfDirectoryAtPath(atPath)
            print("DIR: " + fileOrDir)
        } else if exists {
            //file.append(atPath)
            fileExistsAtPath(atPath,
                isDirectory)
            print("FILE: " + fileOrDir)
        } else {
            print("NEITHER: " + fileOrDir)
        }
    }
    return "NOT FOUND"
}

print(findFile("awesome-idea.txt", atPath: "/Users/zinfandel/Documents"))

