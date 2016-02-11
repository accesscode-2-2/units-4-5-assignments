/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth


1)
    a) 229mn + 19n + 10 picoseconds
    O(m * n)
    b) O(n^2)
    c) O(n^4)

2)
    a) O(n^3)
    b) O(n^2)
    c) O(n^2)
    d) O(nLog(n))

3) 
    a) Binary Search Tree
    b) Array
    c) Tree


4)
*/
func factorial(num: Int) -> Int {
    if num == 0 {
        return 1
    } else {
        return num * factorial(num - 1)
    }
}

factorial(5)

//5)
func multiplyByAddition(let numA: Int, let numB: Int) -> Int{
    
    var sum = 0
    
    for _ in 0...numB {
        
        sum += numA
    }
    
    return sum
}

//O(n)
//6)

func russianPeasantMult(var numA: Int, var numB: Int) -> Int {
    var product: Int = 0
    
    while numA > 1{
        numA = numA / 1
        numB = numB * 2
        
        if numA % 2 != 0 {
            product += numB
        }
        
    }
    return product
}

//7)





