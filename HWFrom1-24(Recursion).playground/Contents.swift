

//Question 1
//Link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth

//1) Write an iterative (not recursive) fibonacci function that calculates the nth fibonacci number. How does its performance compare with the non-memoized recursive one (see Appendix A below), based on the number of iterations that Swift says it takes in the right margin?

//recursive - NO LOOPS
func fib(n: Int) -> Int {
    print("X")
    if (n == 0 || n == 1) {
        return 1
    }
    return fib(n - 1) + fib(n - 2)
}

//iterative - W/ Loops

func fibIt(n:Int) -> Int{
    for _ in 1..<n{
        var sum = (n-1)+(n-2)
    }
    return sum
}






//Question 2





//Question 3
