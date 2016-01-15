//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*

Question 1: https://www.hackerrank.com/challenges/minimum-draws


Copy and paste your code:

let firstLine = Int(readLine(stripNewline: true)!)!

for _ in 0...firstLine{
let nextLine = Int(readLine(stripNewline: true)!)!
print(nextLine+1)
}

Jim would have to draw x + 1 socks in the worst case. where x is the number of pairs of socks

What is the big O runtime of your code?: O(n)

Question 2: https://www.hackerrank.com/challenges/handshake

Copy and paste your code:
    let firstLine = Int(readLine(stripNewline: true)!)!
    for _ in 0...firstLine{
    let numberofpeople = Int(readLine(stripNewline: true)!)!

    print(numberofpeople-1)

    }

What is the big O runtime of your code?: O(log(n))

Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code:

let firstLine = Int(readLine(stripNewline: true)!)!
for _ in 0...firstLine{
    let town = Int(readLine(stripNewline: true)!)!
    var routes: [Int]
    var ans



    for i in 0...town-1
    { 
        routes[i] = Int(readLine(stripNewline: true)!)!
        
        for j in 0...town-1
        {   
            ans *= routes[j];
            ans = ans%1234567;
        }
        print(ans)

    }
}


What is the big O runtime of your code?: O(n^2)

*/
