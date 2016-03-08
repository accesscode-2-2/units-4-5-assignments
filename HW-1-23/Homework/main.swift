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
            print("DIR: " + fileOrDir)
            let result = findFile(name, atPath: fullPath)
            if result != "NOT FOUND"
            {
                    return result
            }
            } else if exists {
            if fileOrDir == name {
                return fullPath
            }
            print("FILE: " + fileOrDir)
        } else {
            print("NEITHER: " + fileOrDir)
        }
    }
    return "NOT FOUND"
}


print(findFile("gandalf.jpeg", atPath: "/Users/Mima/Downloads"))