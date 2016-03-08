/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/



//1 Write without the recursion

func fib(n: Int) -> Int {
    print("X")
    if (n == 0 || n == 1) {
        return 1
    }
    return fib(n - 1) + fib(n - 2)
}

func fibTest (num: Int) -> Int {
    var xn = 0
    var n1 = 0
    var n2 = 1
    print(n1)
    print(n2)
    for(var i = 2; i < num; i++){
        xn = n1 + n2
        print(xn)
        n1 = n2
        n2 = xn
    }
    
    return num
}

fibTest(5)


//2

/*  HW */
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
    let stepCounts = tryStep()
    if (stepCounts == -1){
        print("stepCount -1")
        stepUp()
        print("stepCount -1")
        stepUp()
    }
    else if (stepCounts == 0){
        stepUp()
    }
}

stepUp()