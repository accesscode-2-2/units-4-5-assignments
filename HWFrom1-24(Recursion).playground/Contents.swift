/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/



//Question 1
// http://stackoverflow.com/questions/28161197/swift-vs-objective-c-fibonacci-sequence-speed-comparison

func fib(num: Int) -> Int{
    if(num == 0){
        return 0;
    }
    if(num == 1){
        return 1;
    }
    return fib(num - 1) + fib(num - 2);
}

// cameron's code
//func fib(n: Int) -> Int {
//    var a = 0
//    var b = 1
//    for _ in 0..<n {
//        let t = a
//        
//    }
//}

//Question 2

// not sure if this is correct, i don't think it is
var stepNum = 0
func newStepUp() -> Bool {
    let success = Int(arc4random_uniform(4)) > 0
    if (success) {
        stepNum++
        print("Yay \(stepNum)")
    } else {
        stepNum--
        print("Noo \(stepNum)")
    }
    return success
}

// cameron's code


//Question 3
