/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/


//Question 1



import Foundation



/*





Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth







*/







//Question 1



var count = 0;

var firstNumber = 0

var secondNumber = 1











func fib(n: Int) -> Int {
    
    
    
    while count <= n {
        
        
        
        let temp = secondNumber
        
        secondNumber = secondNumber + firstNumber
        
        firstNumber = temp
        
        
        
    }
    
    
    
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
            
        else if tryStep() == 0 {
            
            
            
            stepUp()
            
        }
        
        
        
        
        
        // Now we’re two steps below where we want to be :-(
        
        stepUp()
        
        stepUp()
        
}









//Question 2





//Question 3



//Question 2





//Question 3
