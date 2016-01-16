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

analagous to graph theory 

METHOD 1:
= C(n, 2)  // given a group of n people how many ways can i choose 2 people
= n! / (2! * (n-2)!)
= n! / 2 (n-2)!
=   n (n-1) (n-2) .. 1
    2 * (n-2)(n-3) .. 1
= n (n-1)
    2

METHOD 2: first person shakes hands with (n-1) people ... last person shakes hands with no one
(n-1) + (n-2) + ... + 1 + 0
summation from k =1 to n is (n(n+1))/2
from 1 to n-1 is ..
= n (n-1)
    2

Copy and paste your code:
    let firstLine = Int(readLine(stripNewline: true)!)!
    for _ in 0...firstLine{
        let numberofpeople = Int(readLine(stripNewline: true)!)!

        print((numberofpeople)(numberofpeople-1)/2)

    }

What is the big O runtime of your code?: O(log(n))

Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code:


let firstLine = readLine(stripNewline: true)!
let T = Int(firstLine)!

for i in (0..<T) {

    let firstTestLine = readLine(stripNewline: true)!

    let N = Int(firstTestLine)!


    let secondTestLine = readLine(stripNewline: true)!

    let routes = secondTestLine.characters.split { $0 == " " }.map(String.init)

    var product = 1

    for i in 0..<routes.count{
        product = product * Int(routes[i])!
    }

    print(product)


}

What is the big O runtime of your code?: O(n^2)

*/

