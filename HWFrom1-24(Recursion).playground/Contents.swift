/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/



//Question 1
func fibIter(n: Int) -> Int{

    if n <= 1 {
        return 1
    }

    var oneBack = 1
    var twoBack = 1

    for _ in 2..<n {
        let temp = oneBack
        oneBack += twoBack
        twoBack = temp
    }

    return oneBack + twoBack

}

fibIter(7)

//Question 2





//Question 3
