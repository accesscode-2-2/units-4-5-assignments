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
return image; // access memory = +1
}

Notes:

// memory access = 1
// math operation = 3
// storing data = 10
// run program = 200

Pixel **awesomeFilter(Pixel image[][], int width, int height) {
// do we access memory when declaring function parameters?

for (int i = 0; i < width; i++) {
go through the line -> int i = 0 (store data +10); i (memory acess +1) < (math operation +3) width (memory +1); i (memory +1) ++ (math +3).
total for this line of code = 10 + 1 + 3 + 1 + 1 + 3 = 19 picoseconds

N = 1000 
1000 * 19 = 19000 = time for this line?

for (int j = 0; j < height; j++) { 
go through the line -> int j = 0 (store data +10); j (memory access +1) < (math op +3) height (memory access +1); j (memory +1) ++ (math +3).
total of line = 10 + 1 + 3 + 1 + 1 + 3 = 19 picoseconds

M = 2000
2000 * 19 = 38000 = time for this line? 

[image[i][j] makeMoreAwesome]; 
go through the line -> image[i] (memory access +1) image[j] (memory access) makeMoreAwesome (runprogram +200)
total of line = 1 + 1 + 200 = 202 picoseconds

return image;
go through line -> image (memory access +1)
total of line = 1

so: 19000 + 38000 + 202 + 1 = 57203 picoseconds?

answer: I'm not 100% sure how to allocate numbers to each element. My guess is 57203 picoseconds.

b) What is the time complexity of this method, expressed in big O notation? Assume the image is square, and both dimensions are ‘n’.

answer: O(N^2) - Performance is proportional to the square of the size of the input data (N and M) and there are two loops (three loops would = O(N^3))

c) My friend sends me an improved version of his algorithm, makeEvenMoreAwesome, that takes into account the pixels around the image. He says it’s O(n2) in the amount of pixels in the image. What is the new time complexity of the method?

answer: O(N^2) If we are thinking about the worst case scenrio, this is equal to the existing run time.


2) If foo(xs) is a function with time complexity n (where n is the size of the input array), and bar(xs) is a function with time complexity n2, what is the time complexity of each of the following snippets of code or algorithms?

a) for (int i = 0; i < n; i++) {
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

3)

4)

5)

6)

7)


*/

// 1)

