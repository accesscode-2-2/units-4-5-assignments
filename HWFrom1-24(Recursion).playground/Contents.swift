/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/



/* Question 1

Write an iterative (not recursive) fibonacci function that calculates the nth fibonacci number. How does its performance compare with the non-memoized recursive one (see Appendix A below), based on the number of iterations that Swift says it takes in the right margin?
*/
func fib(n: Int) -> Int {
    if (n == 0 || n == 1) {
        return 1
    }
    return fib(n - 1) + fib(n - 2)
}

func iter_fib(n: Int) -> Int {
    
    var fibarr = [1, 1]
    if n == 1 || n == 2 {
        return fibarr[n-1]
    }
    while fibarr.count != n {
        
        fibarr.append(fibarr[fibarr.count - 1] + fibarr[fibarr.count - 2])
        
        
        
    }
    print(fibarr)
    return fibarr[n-1]
    
    
}


//The iterative fibonacci sequence generator is much more efficient than the non-memoized recursive method. To generate the 50th Fibonacci number, the iterative method requires only 48 iterations, whereas the non-memoized function loops hundreds of thousands of times.


/* Question 2
The engineers have been hard at work on the clumsy robot project, and have released a new API with a new tryStep method (see Appendix B). Now it returns an Int, which is -1 if the robot fell down a step, 0 if the robot stayed on the same step, or 1 if the robot went to the next step. Write a new stepUp method using this new tryStep method that works the same as before.
*/

import Foundation

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
    if tryStep() == 1 {
        // We’re done!
        return
    }
    // Now we’re two steps below where we want to be :-(
    stepUp()
   
}
//Question 3
