//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

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


        ANSWER: assuming that calling each pixel takes 2 picoseconds of memory access and not counting the cost of
        passing in the parameters to the awesomeFilter function or the return statement (because I'm not sure how to
        calculate that), it comes out to 442,029,010 picoseconds. If the number of pixels is n by m, assuming the same
        methodology, the formula (in picoseconds) is:

            221,000mn + 29n + 10

    


    b) What is the time complexity of this method, expressed in big O notation? Assume the image is square, and both dimensions are ‘n’.

        ANSWER: O(n^2)




    c) My friend sends me an improved version of his algorithm, makeEvenMoreAwesome, that takes into account the pixels around the image. He says it’s O(n2) in the amount of pixels in the image. What is the new time complexity of the method?

        ANSWER: if we calculate using not only the pixels in the image but also the pixels around the image, the new
        dimension of the array is (n + 2) by (n + 2) which reduces to n^2 + 4n + 4. Since n^2 is still the most relevant
        determining factor, the complexity of the method is still O(n^2).


******************************************************************************************************************************

2) If foo(xs) is a function with time complexity n (where n is the size of the input array), and bar(xs) is a function with time complexity n2, what is the time complexity of each of the following snippets of code or algorithms?

    a)
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

    ANSWER: assuming (// do cool stuff) is no more complex than bar(xs), O(n^4)


    b)
        int frobnicate(ys, m) {
            if (m == 0) {
                return 0;
            }
            return ys[m] + frobnicate(ys, m - 1);
        }
        frobnicate(xs, n);

        Tip: Write down a table with n from 0 to 5 and trace through to find out how many times frobnicate is called with each value of n.

        ANSWER:

    
    c) An algorithm that takes as its input a list of friends of length n, filters out duplicates using a method similar to our hasDuplicates method, sorts the list using merge sort (see bigocheatsheet.com), then prints each item to the screen.

        ANSWER:


    d) An algorithm that searches the now-sorted list of friends for a specific friend (not including the time it takes to sort).

        ANSWER: Using binary search, O(log(n))

*/

