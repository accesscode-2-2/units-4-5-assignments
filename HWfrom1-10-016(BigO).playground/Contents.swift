
import UIKit
import Foundation

//: Homework - 01/10 (Sunday) Big-O

/*:
### 1.
With my new top of the line XJ452 supercomputer, memory access takes 1 picosecond, math operations take 3 picoseconds, and storing data in memory takes 10 picoseconds. My friend wrote a filter that makes a pixel more awesome, and takes 200 picoseconds to run.

How long would my computer take to execute the following code if the input image is 1000px wide by 2000px tall? What if it’s n by m?

`Pixel **awesomeFilter(Pixel image[][], int width, int height) {
for (int i = 0; i < width; i++) {
for (int j = 0; j < height; j++) {
[image[i][j] makeMoreAwesome];
}
}
return image;
}`

What is the time complexity of this method, expressed in big O notation? Assume the image is square, and both dimensions are ‘n’.

My friend sends me an improved version of his algorithm, makeEvenMoreAwesome, that takes into account the pixels around the image. He says it’s O(n^2) in the amount of pixels in the image. What is the new time complexity of the method?
*/

/*:

#### 1a)
* [math] 1000 * 3
* [math] 1000 * 2000 * 3
* [memory] 1000 * 2000 * 2
* [storage] 1000 * 2000 * 10
* [filter] 1000 * 2000 * 200
* 430,003,000 picoseconds or 4.3 * 10^7

#### 1b)
* [math] n * 3
* [math] n * m * 3
* [memory] n * m * 2
* [storage] n * m * 10
* [filter] n * m * 200
* (3n)+(3nm)+(2nm)+(10nm)+(200nm)
* (3n)+(215nm)

#### 1c)
* O(n^2)

#### 1d)
* O(n^4)
*/


/*:

### 2.

If foo(xs) is a function with time complexity n (where n is the size of the input array), and bar(xs) is a function with time complexity n2, what is the time complexity of each of the following snippets of code or algorithms?

#### 2a)

for (int i = 0; i < n; i++) { -- n
for (int j = 0; j < n; j++) { --- n
foo(xs); --- n
}
}

n * n * n = n^3

for (int i = 0; i < n; i++) { --n
for (int j = 0; j < n; j++) { --n
bar(xs); n^2
}
}

n * n * n^2 = n^4

for (int i = 0; i < n; i++) { --n
for (int j = 0; j < n; j++) { --n
// do cool stuff
}
}

n * n = n^2

The answer is O(n^4)

#### 2b)

int frobnicate(ys, m) {
if (m == 0) {
return 0;
}
return ys[m] + frobnicate(ys, m - 1);
}
frobnicate(xs, n);

The answer is 0(n);

Tip: Write down a table with n from 0 to 5 and trace through to find out how many times frobnicate is called with each value of n.


An algorithm that takes as its input a list of friends of length n, filters out duplicates using a method similar to our hasDuplicates method, sorts the list using merge sort (see bigocheatsheet.com), then prints each item to the screen.

*/

func mergeSortFwends<T: Comparable>(inout array: [T]){
    if (array.count <= 1){
        return
    }
    
    // split array in half
    var middle = array.count
    middle = middle / 2
    var right = [T]();
    var left = [T]();
    
    for x in 0..<middle{
        left.append(array[x])
    }
    
    for y in middle..<array.count{
        right.append(array[y])
    }
}


/*:
An algorithm that searches the now-sorted list of friends for a specific friend (not including the time it takes to sort).


*/


