//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth


1) With my new top of the line XJ452 supercomputer, memory access takes 1 picosecond, math operations take 3 picoseconds, and storing data in memory takes 10 picoseconds. My friend wrote a filter that makes a pixel more awesome, and takes 200 picoseconds to run.
    a) How long would my computer take to execute the following code if the input image is 1000px wide by 2000px tall? What if it’s n by m?

    Pixel **awesomeFilter(Pixel image[][], int width, int height) {
        for (int i = 0; i < width; i++) {
            for (int j = 0; j < height; j++) {
            [image[i][j] makeMoreAwesome];
                }
            }
        return image;
    }

    b) What is the time complexity of this method, expressed in big O notation? Assume the image is square, and both dimensions are ‘n’.
    c) My friend sends me an improved version of his algorithm, makeEvenMoreAwesome, that takes into account the pixels around the image. He says it’s O(n2) in the amount of pixels in the image. What is the new time complexity of the method?


---Answers---

a)  Total Image px = 1000 * 2000 = 2.000.000 px
    1 + 3 + 10 + 200 = 214 picoseconds for one pixel
    Total time = 2.000.000px * 214 picoseconds/px = 428.000.000 picoseconds 

    If it's n by m, it would take n * m * 214 picoseconds

b)  O(n^2)

c)  O(n^4)
*/


                    /********************************************************************/

/*

2)   If foo(xs) is a function with time complexity n (where n is the size of the input array), and bar(xs) is a function with time complexity n2, what is the time complexity of each of the following snippets of code or algorithms?

a)   for (int i = 0; i < n; i++) {
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

b)  int frobnicate(ys, m) {
        if (m == 0) {
            return 0;
        }
    return ys[m] + frobnicate(ys, m - 1);
    }

    frobnicate(xs, n);

    Tip: Write down a table with n from 0 to 5 and trace through to find out how many times frobnicate is called with each value of n.

c) An algorithm that takes as its input a list of friends of length n, filters out duplicates using a method similar to our hasDuplicates method, sorts the list using merge sort (see bigocheatsheet.com), then prints each item to the screen.


d) An algorithm that searches the now-sorted list of friends for a specific friend (not including the time it takes to sort).


---Answers---

a)  Algorithm 1 :
        First for loop - n
        Second foor loop - n
        foo(xs) - n
        Time complexity = O(n^3)
    
    Algorithm 2 :
        First for loop - n
        Second loop - n
        bar(xs) - n^2
    Time complexity = O(n^4)

    Algorithm 3 :
        First for loop - n
        Second loop - n
        Time complexity = O(n^2)

    O(n^3) + O(n^4) + O(n^2) = O(n^4)

b) O(n) because this is a straight recursion from m to m-1, m-2...

c)  Filtering friends takes O(n!) time
    Sorting using merge sort, takes O(n log(n)) time
    Printing takes O(n) time
    Time complexity = O(n!) + O(n log(n)) + O(n) = O(n^2)

d) O(n)


                    /********************************************************************/


3) Look at the complexities for some common data structures at bigocheatsheet.com. Pick a good data structure for each of the following scenarios (there are sometimes multiple answers):


    a) You get a large dataset of points of interest from an API when your app first runs. You build it once at the beginning, and then have to search it many times while the user pans around a map.


    b) You get a small dataset of points of interest from an API every time the user pans the map. You construct the data set many times and only render it once, then you discard it and do another API search.

    Tip: Constructing a dataset of size n means you have to call the data structure’s insert method n times. So if the data structure has an insert method that takes O(n2), the time to build it all from scratch is O(n3).


    c) You used a linked list for your music app’s playlist feature, but now when people search their playlist, there’s a noticeable lag before loading results. Your competitor’s app is buttery smooth when searching, even showing results as you type. What data structure would allow you to more quickly search without compromising too much on the speed of inserting and deleting tracks, even in the worst case?


---Answers---

a) Binary Search Tree

b) Hash Table 

c) Tree - O(n) for search, insert, delete



                    /********************************************************************/


4) Write an algorithm using one of the methods from exercise 1 (your choice) to calculate the factorial of a number n. What is the time complexity of your method in terms of the input value? */

        func factorial( n : Int) -> Int {

            if n < 0  {
                return -1
            }
            else if n == 0 {
                return 1
            }
            else {
            return n * factorial( n - 1 )
            }
        }

    // Time complexity O(n)

/*

5) Write an Objective C or Swift function to multiply two numbers without using the * operator. Use the grade school method of multiplying by doing repeated addition. For instance, 5 * 8 = 5 + 5 + 5 + 5 + 5 + 5 + 5 + 5 = 40. Find the big O of your function in terms of n and m (the two operands). */

    func multiplicationOfTwoNumbers( n : Int, m: Int) -> Int {
        var multiplication = 0;
        
        for _ in 1...n {
            multiplication += m
        }
    return multiplication
    }

// Test 
    print(multiplicationOfTwoNumbers(3, m: 6))

// Time complexity : O(n)


/*

6) Look up Russian Peasant Multiplication. It’s a faster way to multiply numbers, especially on a binary computer (like yours!). Implement a new multiplication function using this technique and find the big O of your method. If you have trouble with implementing this, write a flow chart and find the big O based on that. (But it’s more satisfying to implement it and run it)

Tip: Run through the method by hand a few times to see how it works and verify to yourself that it does. It’s a non-intuitive algorithm. This will hopefully also make the time complexity more clear. */


    func russianPeasantMultiplication( var n : Int, var m: Int) -> Int {
        var multiplication = 0
        
        while(n > 1) {
            m = m * 2
            n = n / 2
            
            if(n % 2 != 0) {
                multiplication += m
            }
        }
        
        return multiplication
    }

        print(russianPeasantMultiplication(24, m: 16))

    // Time complexity : O(n)



//7) Using the technique from exercise 4, profile the built in sorting method in objective C (use an NSMutableArray and google how to sort an array of numbers in objective C). Graph the result. Use spreadsheet formulas to add graph lines for n, n2, and n*log(n). (You’ll have to modify the factors to make them fit in the graph window and to be close to the graph of method execution time). Show that the sort method best fits n * log(n).
















