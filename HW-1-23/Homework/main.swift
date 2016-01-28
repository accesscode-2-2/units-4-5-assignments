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
            return fullPath
        } else if exists {
            print("FILE: " + fileOrDir)
            return fullPath
        } else {
            print("NEITHER: " + fileOrDir)
        }
    }
    return "NOT FOUND"
}


print(findFile("pinkcoral.jpb", atPath: "/Users/Mima/Downloads"))