//
//  main.swift
//  Recursion
//
//  Created by Henna Ahmed on 1/27/16.
//  Copyright © 2016 Henna Ahmed. All rights reserved.
//

import Foundation

//Appendix C: File searching


func findFile(name: String, atPath: String) -> String {
    let fileManager = NSFileManager.defaultManager()
    
    let contents = try! fileManager.contentsOfDirectoryAtPath(atPath)
    
    for fileOrDir in contents {
        var isDir = ObjCBool(false);
        let fullPath = atPath + "/" + fileOrDir
        let exists = fileManager.fileExistsAtPath(fullPath, isDirectory: &isDir)
        if exists && Bool(isDir) {

            //print("DIR: " + fileOrDir)
            findFile(name, atPath: fullPath)
            
        } else if exists {

            if (fileOrDir == name){
//              print("FILE: " + fileOrDir)
              print("File is at: \(fullPath)")
                return fullPath
            }
           
        } else {
            print("NEITHER: " + fileOrDir)
        }
    }
    return "NOT FOUND"
}

print(findFile("email-collection.html", atPath: "/Users/hennaahmed/Desktop/"))

