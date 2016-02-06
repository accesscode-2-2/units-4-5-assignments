//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



// Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

// https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth


// 1)
func AwesomeFilter(array: [Int], width: Int, height: Int) -> Int {
    
    var time = 10 //init i, store in memory
    
    for (var i = 0; i < width; i++) {
        
        time += 10 // init j each iteration of  loop, store in memory
        time += 3 // math operation i < width
        time += 1 // access memory of i
        time += 10 // write to memory
        time += 3 //math operation
        
        for (var j = 0; j < height; j++) {
            
            time += 3 // math operation i < width
            time += 1 // access memory of i
            time += 10 // write to memory
            time += 3 //math operation
            time += 201 // 200 picosecond function, plus 1 psecond of memory access
        }
        
    }
    
    
    return time
    
}
let answer = 436027010 // time in picoseconds

let time_complexity_answer1 = "O(nm)"
let time_complexity_answer2 = "O(nm(n^2))"



//2)

//2a) O(n^2)

//2b)

func frobnicate(ys: [Int], m: Int) -> Int {
    
    if m == 0 {
        
        return 0
    }
    return ys[m] + frobnicate(ys, m: m - 1)
    
    
    
}

//O(log(n))

//2c) O(n^2)




//3)

//4)


func factorial(number: Int) -> Int {
    
    var product = 1
    for num in 1...number {
        
        product *= num
        
    }

    return product
}

//complexity: O(n)

//5)

func multip(number: Int, byNumber: Int) -> Int {
    
    
    var sum = 0
    for _ in 1...byNumber  {
        
        sum += number
        
        
    }
    
    return sum
    
    
}



//Complexity: Wholly determined by byNumber. Linear time.

//6)

func peasant_mult(var number: Int, var byNumber: Int) -> Int {
    
    
    
    var sum = 0
    while byNumber != 0 {
        
        
        if byNumber % 2 != 0 {
            
            sum += number
            
        }
        
        number *= 2
        byNumber = byNumber / 2
        
        
    }
    //compexity: O(log(n))
    return sum
}

peasant_mult(10, byNumber: 10)


//time complexity: 

let y = true
let x = false




//7)



