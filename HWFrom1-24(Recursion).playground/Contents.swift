import  Foundation
import UIKit
/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/



//Question 1

func fibnoacci(n: Int) -> Int {
    var result = [1,1]
    if n < 2 {
    return n
    }
    for i in 2...n {
        result.insert(result[i-1] + result[i-2], atIndex: i)
    }
    return result[n]
}

//  The iterative version is much more efficient and faster, because it doesn't have to iterate through the array several times




//Question 2

var steppNum = 0

func tryStepp() -> Int {
        let stepCount = Int(arc4random_uniform(3)) - 1 // generate rando number
            steppNum += stepCount;
    
        switch(stepCount) {
            case -1: print("Ouch \(steppNum)")
            case 1: print("Yay  \(steppNum)")
            default: print("Beep \(steppNum)")
            }
        return stepCount
    }

func steppUp(var steps: Int = 0) {
    steps += tryStepp()
    if steps == 1 {
         return
    }
    steppUp(steps)
}

//Test
steppUp()



//Question 3
