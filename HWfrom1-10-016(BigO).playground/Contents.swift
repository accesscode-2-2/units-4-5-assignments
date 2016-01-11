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

    


    b) What is the time complexity of this method, expressed in big O notation? Assume the image is square, and both dimensions are ‘n’.

        O(n^2)


    c) My friend sends me an improved version of his algorithm, makeEvenMoreAwesome, that takes into account the pixels around the image. He says it’s O(n2) in the amount of pixels in the image. What is the new time complexity of the method?

*/

