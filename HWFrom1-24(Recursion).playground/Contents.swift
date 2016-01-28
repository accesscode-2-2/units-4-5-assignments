import Foundation

/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/



//Question 1
func fib(firstNumber: Int, secondNumber: Int, n: Int) -> Int {
    var previousNumber1 = firstNumber
    var previousNumber2 = secondNumber
    var nth = 0
    for _ in 0..<n - 2 {
        nth = previousNumber1 + previousNumber2
        previousNumber1 = previousNumber2
        previousNumber2 = nth
    }
    return nth
}

print(fib(1, secondNumber: 1, n: 5))


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
    let didTryStep = tryStep()
    if didTryStep == 0 {
        stepUp()
    } else if didTryStep == -1 {
        stepUp()
        stepUp()
    }
}

stepUp()

//Question 3


