//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth

*/

/*1)With my new top of the line XJ452 supercomputer, memory access takes 1 picosecond, math operations take 3 picoseconds, and storing data in memory takes 10 picoseconds. My friend wrote a filter that makes a pixel more awesome, and takes 200 picoseconds to run.
a) How long would my computer take to execute the following code if the input image is 1000px wide by 2000px tall? What if it’s n by m?


Pixel **awesomeFilter(Pixel image[][], int width, int height) {
    for (int i = 0; i < width; i++) {   //1000*3
        for (int j = 0; j < height; j++) { //1000*2000*3
            [image[i][j] makeMoreAwesome];  // 1000*2000*2+1000*2000*200+1000*2000*10
        }
    }
    return image;
}

430,003,000 picoseconds. O(n*m)  ( 215nm+3n) if it's n by m.

b) What is the time complexity of this method, expressed in big O notation? Assume the image is square, and both dimensions are ‘n’.

O(n^2)

c) My friend sends me an improved version of his algorithm, makeEvenMoreAwesome, that takes into account the pixels around the image. He says it’s O(n2) in the amount of pixels in the image. What is the new time complexity of the method?

O(n^4)

*/

/*2)If foo(xs) is a function with time complexity n (where n is the size of the input array), and bar(xs) is a function with time complexity n2, what is the time complexity of each of the following snippets of code or algorithms?


a) for (int i = 0; i < n; i++) {    n
    for (int j = 0; j < n; j++) {   n^2
        foo(xs);
    }
}
O(n^2)

for (int i = 0; i < n; i++) { n
    for (int j = 0; j < n; j++) { n^2
        bar(xs);
    }
}
O(n^2)

for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
        // do cool stuff
    }
}
O(n^2)


b) int frobnicate(ys, m) {
    if (m == 0) {
        return 0;
    }
    return ys[m] + frobnicate(ys, m - 1);
}
frobnicate(xs, n);

Tip: Write down a table with n from 0 to 5 and trace through to find out how many times frobnicate is called with each value of n.


c) An algorithm that takes as its input a list of friends of length n, filters out duplicates using a method similar to our hasDuplicates method, sorts the list using merge sort (see bigocheatsheet.com), then prints each item to the screen.


d) An algorithm that searches the now-sorted list of friends for a specific friend (not including the time it takes to sort).
*/

/*3)Look at the complexities for some common data structures at bigocheatsheet.com. Pick a good data structure for each of the following scenarios (there are sometimes multiple answers):


a) You get a large dataset of points of interest from an API when your app first runs. You build it once at the beginning, and then have to search it many times while the user pans around a map.


b) You get a small dataset of points of interest from an API every time the user pans the map. You construct the data set many times and only render it once, then you discard it and do another API search.

Tip: Constructing a dataset of size n means you have to call the data structure’s insert method n times. So if the data structure has an insert method that takes O(n2), the time to build it all from scratch is O(n3).


c) You used a linked list for your music app’s playlist feature, but now when people search their playlist, there’s a noticeable lag before loading results. Your competitor’s app is buttery smooth when searching, even showing results as you type. What data structure would allow you to more quickly search without compromising too much on the speed of inserting and deleting tracks, even in the worst case?

*/

/*4)Write an algorithm using one of the methods from exercise 1 (your choice) to calculate the factorial of a number n. What is the time complexity of your method in terms of the input value?
*/

/*5)Write an Objective C or Swift function to multiply two numbers without using the * operator. Use the grade school method of multiplying by doing repeated addition. For instance, 5 * 8 = 5 + 5 + 5 + 5 + 5 + 5 + 5 + 5 = 40. Find the big O of your function in terms of n and m (the two operands).
*/

/*6)Look up Russian Peasant Multiplication. It’s a faster way to multiply numbers, especially on a binary computer (like yours!). Implement a new multiplication function using this technique and find the big O of your method. If you have trouble with implementing this, write a flow chart and find the big O based on that. (But it’s more satisfying to implement it and run it)

Tip: Run through the method by hand a few times to see how it works and verify to yourself that it does. It’s a non-intuitive algorithm. This will hopefully also make the time complexity more clear.

*/

/*7)Using the technique from exercise 4, profile the built in sorting method in objective C (use an NSMutableArray and google how to sort an array of numbers in objective C). Graph the result. Use spreadsheet formulas to add graph lines for n, n2, and n*log(n). (You’ll have to modify the factors to make them fit in the graph window and to be close to the graph of method execution time). Show that the sort method best fits n * log(n).

*/



