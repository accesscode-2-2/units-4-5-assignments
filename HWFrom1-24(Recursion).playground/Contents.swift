/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/



//Question 1


var i = 0
var j = 1
var n = Int ()
var k = Int ()
var temp = 0


func fibIteration (var i: Int) -> Int {
    for _ in 0..<n {
        temp = i + j
        i = j
        j = temp
        
    }
    return j
}


//The iterative algorithm is a lot faster than the recursive one and uses up less space.

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
if tryStep() {
// We’re done!
return
}
// Now we’re two steps below where we want to be :-(
stepUp()




//Question 3

