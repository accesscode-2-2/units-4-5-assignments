//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*

Question 1: https://www.hackerrank.com/challenges/minimum-draws
Jim is off to a party and is searching for a matching pair of socks. His drawer is filled with socks, each pair of a different color. In its worst case scenario, how many socks (x) should Jim remove from his drawer until he finds a matching pair?

Input Format
The first line contains the number of test cases T.
Next T lines contains an integer N which indicates the total pairs of socks present in the drawer.

Output Format
Print the number of Draws (x) Jim makes in the worst case scenario.

Copy and paste your code:

let firstLine = Int(readLine(stripNewline: true)!)!

for _ in 0...firstLine{
let nextLine = Int(readLine(stripNewline: true)!)!
print(nextLine+1)
}

*/




/*
Jim would have to draw x + 1 socks in the worst case. where x is the number of pairs of socks

What is the big O runtime of your code?: O(n)

Question 2: https://www.hackerrank.com/challenges/handshake
At the annual meeting of Board of Directors of Acme Inc, every one starts shaking hands with everyone else in the room. Given the fact that any two persons shake hand exactly once, Can you tell the total count of handshakes?

Input Format
The first line contains the number of test cases T, T lines follow.
Each line then contains an integer N, the total number of Board of Directors of Acme.

Output Format
Print the number of handshakes for each test-case in a new line.

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
