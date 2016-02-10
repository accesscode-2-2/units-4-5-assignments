//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth

Big O Homework
//: 1. With my new top of the line XJ452 supercomputer, memory access takes 1 picosecond, math operations take 3 picoseconds, and storing data in memory takes 10 picoseconds. My friend wrote a filter that makes a pixel more awesome, and takes 200 picoseconds to run.
//:
//: How long would my computer take to execute the following code if the input image is 1000px wide by 2000px tall? What if it’s n by m?
*/

/*
Pixel **awesomeFilter(Pixel image[][], int width, int height) {
for (int i = 0; i < width; i++) {
for (int j = 0; j < height; j++) {
[image[i][j] makeMoreAwesome];
}
}
return image;
}
*/
       10    +   (1 3 1      1 3 )     x1000                 10 + 5*1001 + 4*1000
for (int i = 0; i < width; i++) {
            10      (1 3 1      1 3)  x2000                  (10 + 5*2001 + 207*2000)*1000, 414,000,000
    for (int j = 0; j < height; j++) {
            1  1  1     200
        [image[i][j] makeMoreAwesome];
    }
}
return image; 1                                                     +1
}

10 + 5005 + 4000 + (10 + 10005 + 414,000)*1000 + 1
9,015 + 10,000 + 10,005,000 + 414,000,000 + 1 = 424,024,016

Without last bool check: 9010 + 10,000,000, 414,000,000 + 1 = 424,009,011

n x m = 10 + 5*(n+1) +4*(n) + 10*(n) + 5*(m+1)(n) +207(m)*(n) + 1
n x m = 10 + 9(n) + 10(n) + 212(m)(n) + 1

/*
//: b) What is the time complexity of this method, expressed in big O notation? Assume the image is square, and both dimensions are ‘n’
*/
Answer:  O(n^2)
/*
//: c) My friend sends me an improved version of his algorithm, makeEvenMoreAwesome, that takes into account the pixels around the image. He says it’s O(n2) in the amount of pixels in the image. What is the new time complexity of the method?
*/
Answer: O(n^4) if it is a square

//: ##Question 2
/*
//: a) If foo(xs) is a function with time complexity n (where n is the size of the input array), and bar(xs) is a function with time complexity n^2, what is the time complexity of each of the following snippets of code or algorithms?
*/

for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
        foo(xs);
    }
}
for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
        bar(xs);
    }
}
for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
        // do cool stuff
    }
}

Answer: O(n^4)

//: b)
int frobnicate(ys, m) {
    if (m == 0) {
        return 0;
    }
    return ys[m] + frobnicate(ys, m - 1);
}

frobnicate(xs, n);

/*
Tip: Write down a table with n from 0 to 5 and trace through to find out how many times frobnicate is called with each value of n.
*/

Answer: O(n)


/*
//: c) An algorithm that takes as its input a list of friends of length n, filters out duplicates using a method similar to our hasDuplicates method, sorts the list using merge sort (see bigocheatsheet.com), then prints each item to the screen.
*/

Answer: O(n^2)

/*

//: d) An algorithm that searches the now-sorted list of friends for a specific friend (not including the time it takes to sort).
*/

Answer: O(n)


//: 3. Look at the complexities for some common data structures at bigocheatsheet.com. Pick a good data structure for each  of the following scenarios (there are sometimes multiple answers):

/*
//: a) You get a large dataset of points of interest from an API when your app first runs. You build it once at the beginning, and then have to search it many times while the user pans around a map.
*/

Answer: tree

/*
//: b) You get a small dataset of points of interest from an API every time the user pans the map. You construct the data set many times and only render it once, then you discard it and do another API search.
*/

Answer: Hash Table

/*
Tip: Constructing a dataset of size n means you have to call the data structure’s insert method n times. So if the data structure has an insert method that takes O(n2), the time to build it all from scratch is O(n3).

*/

/*
//: c) You used a linked list for your music app’s playlist feature, but now when people search their playlist, there’s a noticeable lag before loading results. Your competitor’s app is buttery smooth when searching, even showing results as you type. What data structure would allow you to more quickly search without compromising too much on the speed of inserting and deleting tracks, even in the worst case?
*/

Answer: Tree

//: ### 4.  Write an algorithm using one of the methods from exercise 1 (your choice) to calculate the factorial of a number n. What is the time complexity of your method in terms of the input value?

//Non recursive
func nonRecFactorial(n : Int) -> Int {

    guard n>=1 else{
        return 1
    }

    var product = 1

    for i in 1...n{
        product *= i
    }

    return product

}

// Recursive
func factorial(n : Int) -> Int {

    if n <= 1 {
        return 1
    }

    return factorial(n-1)*n
}

O(n)


//: 5.Write an Objective C or Swift function to multiply two numbers without using the * operator. Use the grade school method of multiplying by doing repeated addition. For instance, 5 * 8 = 5 + 5 + 5 + 5 + 5 + 5 + 5 + 5 = 40. Find the big O of your function in terms of n and m (the two operands).

func productByAddition(x: Int,_ y: Int) -> Int {

    guard x != 0 || y != 0 else{
        return 0
    }

    return x + productByAddition(x, y-1)

}

func nonRecProdByAddition(x: Int, _ y: Int) -> Int {

    let isNegative = y < 0

    var sum = 0

    let multCap = isNegative ? 0-y : y

    for var i = 1; i <= multCap; i++ {
        sum += x
    }

    return isNegative ? 0-sum : sum

}

O(n)
/*
//: 6. Look up Russian Peasant Multiplication. It’s a faster way to multiply numbers, especially on a binary computer (like yours!). Implement a new multiplication function using this technique and find the big O of your method. If you have trouble with implementing this, write a flow chart and find the big O based on that. (But it’s more satisfying to implement it and run it)

Tip: Run through the method by hand a few times to see how it works and verify to yourself that it does. It’s a non-intuitive algorithm. This will hopefully also make the time complexity more clear.
*/

func russianPeasantMultiplication(first: Int, second: Int) -> Int {

    var decreasingArray = [first]
    var increasingArray = [second]
    var sum = 0

    //Appending
    while true {

        decreasingArray.append(decreasingArray.last! / 2)
        increasingArray.append(increasingArray.last! * 2)

        if decreasingArray.last! == 1{
            break
        }
    }

    //removal
    for var i = 0 ; i < decreasingArray.count; {

        if decreasingArray[i]%2 == 0 {
            decreasingArray.removeAtIndex(i)
            increasingArray.removeAtIndex(i)
            continue
        }

        i++
    }

    //sum
    for numb in increasingArray {
        sum += numb
    }
    
    return sum
    
}

O(logn)

/*
//: 7. Using the technique from exercise 4, profile the built in sorting method in objective C (use an NSMutableArray and google how to sort an array of numbers in objective C). Graph the result. Use spreadsheet formulas to add graph lines for n, n2, and n*log(n). (You’ll have to modify the factors to make them fit in the graph window and to be close to the graph of method execution time). Show that the sort method best fits n * log(n).

*/

