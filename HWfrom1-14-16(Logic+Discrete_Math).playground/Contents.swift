//: Playground - noun: a place where people can play

import UIKit

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Question 1: https://www.hackerrank.com/challenges/minimum-draws

//Jim is off to a party and is searching for a matching pair of socks. His drawer is filled with socks, each pair of a different color. In its worst case scenario, how many socks (x) should Jim remove from his drawer until he finds a matching pair?

func howManySocks(pairsOfSocks: Int) -> Int {
    
    if pairsOfSocks <= 0 || pairsOfSocks == 1 {
        return 0
    }
    let pairsOfSocksDouble = Double(pairsOfSocks)
    let worstCaseSocksToRemoveDouble = ceil(pairsOfSocksDouble/2) + 1
    
    return Int(worstCaseSocksToRemoveDouble)
}

func worstCaseScenarioDrawsFor(sockArray:[Int]) -> [Int] {
    var answer = [Int]()
    for pairCount in sockArray{
        answer.append(howManySocks(pairCount))
    }
    return answer
}

worstCaseScenarioDrawsFor([2,3,4,5,6,7,8])

//What is the big O runtime of your code?:
// O(n)


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Question 2: https://www.hackerrank.com/challenges/handshake

//At the annual meeting of Board of Directors of Acme Inc, every one starts shaking hands with everyone else in the room. Given the fact that any two persons shake hand exactly once, Can you tell the total count of handshakes?

func factorial(number:Int) -> Int{
    if number == 0 || number == 1 {
        return 1
    }
    return number * factorial(number - 1)
}

func handshakeCountFor(boardMembers: Int) -> Int{
    
    if (boardMembers <= 1) {
        return 0
    }
    
    let r = 2
    let handshakeCount = (factorial(boardMembers)) / (factorial(r) * factorial(boardMembers - r))
    
    return handshakeCount
}

handshakeCountFor(5)

func handshakeCountsForArray(arrayOfBoardMembers: [Int]) -> [Int]{
    var handShakeCounts = [Int]()
    for boardMemberCount in arrayOfBoardMembers{
        handShakeCounts.append(handshakeCountFor(boardMemberCount))
    }
    return handShakeCounts
}

handshakeCountsForArray([1,2,3,4,5])

//What is the big O runtime of your code?:
// O(n^2) 

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//Question 3: https://www.hackerrank.com/challenges/connecting-towns
//Gandalf is travelling from Rohan to Rivendell to meet Frodo but there is no direct route from Rohan (T1) to Rivendell (Tn).
//But there are towns T2,T3,T4...Tn-1 such that there are N1 routes from Town T1 to T2, and in general, Ni routes from Ti to Ti+1 for i=1 to n-1 and 0 routes for any other Ti to Tj for j ≠ i+1
//Find the total number of routes Gandalf can take to reach Rivendell from Rohan.

//Note
//Gandalf has to pass all the towns Ti for i=1 to n-1 in numerical order to reach Tn.
//For each Ti , Ti+1 there are only Ni distinct routes Gandalf can take.

//Copy and paste your code:

func possibleRoutesBetweenTowns(townRoutes:[Int]) -> Int{ //number of towns is townRoutes.count + 1
    
    var possibleRoutes = 1
    for routes in townRoutes{
        possibleRoutes = possibleRoutes * routes
    }
    
    return possibleRoutes
}

possibleRoutesBetweenTowns([2,3,5,6])

//What is the big O runtime of your code?:
//O(n)



