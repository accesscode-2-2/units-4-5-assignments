/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/
//hw


//Question 1

/*

fibonacciIterative(let n: Int)
{
    int i = 0, j = 1, k, t;
    for (k = 1; k <= n; ++k)
    {
        t = i + j;
        i = j;
        j = t;
    }
    return j;
}

/*

//Question 2

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
    switch tryStep() {
    case 1:
        return
    case 0:
        stepUp()
    case -1:
        stepUp()
        stepUp()
    default:
        stepUp()
    if tryStep() == 1

}

//Question 3

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
let result = findFile(name, atPath, fullPath)
if result != "NOT FOUND"{
return result
}
print("DIR: " + fileOrDir)
} else if exists {
// YOUR CODE HERE
if fileOrDir == nmae{
return fullPath
}
print("FILE: " + fileOrDir)
} else {
print("NEITHER: " + fileOrDir)
}
}
return "NOT FOUND"
}

print(findFile("awesome-idea.txt", atPath: "/Users/umahmud"))

/*
*/*/*/
