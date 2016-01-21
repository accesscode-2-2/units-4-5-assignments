//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*

Question 1: https://www.hackerrank.com/challenges/minimum-draws

Copy and paste your code:
*/
func maxDraws(pairs: Int) -> Int? {

    guard pairs>0 else{
        return nil
    }

    if pairs == 1{
        return 2
    }
    else{
        return pairs/2 + 1
    }

}

/*
What is the big O runtime of your code?: O(1)

Question 2: https://www.hackerrank.com/challenges/handshake

Copy and paste your code:
*/
func handshakes(people: Int)-> Int{
    return (people-1)*(people)/2
}
/*
What is the big O runtime of your code?: O(1)

Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code:
*/
func totalPaths(seq : [Int]) -> Int {

    var paths = seq.count>0 ? 1 : 0

    for n in seq {
        paths *= n
    }

    return paths
}

/*
What is the big O runtime of your code?: O(n)

*/

