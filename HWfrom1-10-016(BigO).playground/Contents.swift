//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth


1)
How long would my computer take to execute the following code if the input image is 1000px wide by 2000px tall? What if it’s n by m?

    1000px by 2000px = 3 + 15 + 15 + 202 = 237 = O(1) (Right? Because the algorithm doesn’t depend on the input)

    n by m = 3 + 15n + 15n^2 + 202n^2 = 217n^2 => O(n^2 x m)

2)
What is the time complexity of this method, expressed in big O notation? Assume the image is square, and both dimensions are ‘n’.

    O(n^3)
    (Because n by m = O(n^2 x m) so n by n would be O(n^2 x n) = O(n^3), yes?)

3)
My friend sends me an improved version of his algorithm, makeEvenMoreAwesome, that takes into account the pixels around the image. He says it’s O(n2) in the amount of pixels in the image. What is the new time complexity of the method? 
    
    It stays the same.  O(n^2 x m)

4)
If foo(xs) is a function with time complexity n (where n is the size of the input array), and bar(xs) is a function with time complexity n2, what is the time complexity of each of the following snippets of code or algorithms?




5)

6)

7)


*/

/*
Big O Homework
With my new top of the line XJ452 supercomputer, memory access takes 1 picosecond, math operations take 3 picoseconds, and storing data in memory takes 10 picoseconds. My friend wrote a filter that makes a pixel more awesome, and takes 200 picoseconds to run.
Read: 1 ps
Math: 3ps
Write: 10ps
How long would my computer take to execute the following code if the input image is 1000px wide by 2000px tall? What if it’s n by m?


Pixel **awesomeFilter(Pixel image[][]1, int width1, int height1)3
{
for (int i = 010; i1 < width1; i++3) { // 15n
for (int j = 010; j1 < height1; j++3) {// 15n * n
[image[i]1[j]1 makeMoreAwesome200];//202 * n * n
}
}
return image;
}
n by m = 3 + 15n + 15n^2 + 202n^2 = 217n^2 => O(n^2 x m)
1000px by 2000px = 3 + 15 + 15 + 202 = 237 = O(1) (Right? Because the algorithm doesn’t depend on the input)


What is the time complexity of this method, expressed in big O notation? Assume the image is square, and both dimensions are ‘n’.
O(n^3)
(Because n by m = O(n^2 x m) so n by n would be O(n^2 x n) = O(n^3), yes?)

My friend sends me an improved version of his algorithm, makeEvenMoreAwesome, that takes into account the pixels around the image. He says it’s O(n2) in the amount of pixels in the image. What is the new time complexity of the method? It stays the same.  O(n^2 x m)


If foo(xs) is a function with time complexity n (where n is the size of the input array), and bar(xs) is a function with time complexity n2, what is the time complexity of each of the following snippets of code or algorithms?


for (int i = 0; i < n; i++) { //n
for (int j = 0; j < n; j++) {//n * n
foo(xs); //n * n * n
}
}
for (int i = 0; i < n; i++) {//n
for (int j = 0; j < n; j++) {// n * n
bar(xs);// n^2 * n * n
}
}
for (int i = 0; i < n; i++) {// n
for (int j = 0; j < n; j++) {// n * n
// do cool stuff
}
}
n + n^2 + n^3 + n + n^2 + n^4 + n + n^2 = n^4  =>>> O(n^4)


int frobnicate(ys, m) {
if (m == 0) {
return 0;
}
return ys[m] + frobnicate(ys, m - 1);
}
frobnicate(xs, n);

Tip: Write down a table with n from 0 to 5 and trace through to find out how many times frobnicate is called with each value of n. (Not really sure how to do this)


An algorithm that takes as its input a list of friends of length n, filters out duplicates using a method similar to our hasDuplicates method, sorts the list using merge sort (see bigocheatsheet.com), then prints each item to the screen.
if hasDuplicates = O(n^2)
and if mergeSort = O(n log(n))
then… I’m not quite sure how to add them together...


An algorithm that searches the now-sorted list of friends for a specific friend (not including the time it takes to sort).  O(n)


Look at the complexities for some common data structures at bigocheatsheet.com. Pick a good data structure for each of the following scenarios (there are sometimes multiple answers):


You get a large dataset of points of interest from an API when your app first runs. You build it once at the beginning, and then have to search it many times while the user pans around a map. Array


You get a small dataset of points of interest from an API every time the user pans the map. You construct the data set many times and only render it once, then you discard it and do another API search. Stack or List

Tip: Constructing a dataset of size n means you have to call the data structure’s insert method n times. So if the data structure has an insert method that takes O(n2), the time to build it all from scratch is O(n3).


You used a linked list for your music app’s playlist feature, but now when people search their playlist, there’s a noticeable lag before loading results. Your competitor’s app is buttery smooth when searching, even showing results as you type. What data structure would allow you to more quickly search without compromising too much on the speed of inserting and deleting tracks, even in the worst case? Hash Table


Write an algorithm using one of the methods from exercise 1 (your choice) to calculate the factorial of a number n. What is the time complexity of your method in terms of the input value?

For any number “n”, multiply all numbers 1 through n.  The product is the factorial of n.
Time complexity = O(n)


Write an Objective C or Swift function to multiply two numbers without using the * operator. Use the grade school method of multiplying by doing repeated addition. For instance, 5 * 8 = 5 + 5 + 5 + 5 + 5 + 5 + 5 + 5 = 40. Find the big O of your function in terms of n and m (the two operands).

func multiplyByAddition(let numA: Int, let numB: Int) -> Int{

var sum = 0

for i in 0...numB {

sum += numA
}

return sum
}



Look up Russian Peasant Multiplication. It’s a faster way to multiply numbers, especially on a binary computer (like yours!). Implement a new multiplication function using this technique and find the big O of your method. If you have trouble with implementing this, write a flow chart and find the big O based on that. (But it’s more satisfying to implement it and run it)

Tip: Run through the method by hand a few times to see how it works and verify to yourself that it does. It’s a non-intuitive algorithm. This will hopefully also make the time complexity more clear.


Using the technique from exercise 4, profile the built in sorting method in objective C (use an NSMutableArray and google how to sort an array of numbers in objective C). Graph the result. Use spreadsheet formulas to add graph lines for n, n2, and n*log(n). (You’ll have to modify the factors to make them fit in the graph window and to be close to the graph of method execution time). Show that the sort method best fits n * log(n).


*/