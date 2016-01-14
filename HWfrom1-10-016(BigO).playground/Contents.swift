
import UIKit
import Foundation

//: Homework - 01/10 (Sunday) Big-O

/*:
### 1.
With my new top of the line XJ452 supercomputer, memory access takes 1 picosecond, 
math operations take 3 picoseconds, and storing data in memory takes 10 picoseconds. 
My friend wrote a filter that makes a pixel more awesome, and takes 200 picoseconds to run.

How long would my computer take to execute the following code if the input image is 
1000px wide by 2000px tall? What if it’s n by m?

`Pixel **awesomeFilter(Pixel image[][], int width, int height) {
for (int i = 0; i < width; i++) {
for (int j = 0; j < height; j++) {
[image[i][j] makeMoreAwesome];
}
}
return image;
}`

What is the time complexity of this method, expressed in big O notation? Assume the image is square, and both dimensions are ‘n’.

My friend sends me an improved version of his algorithm, makeEvenMoreAwesome, that takes 
into account the pixels around the image. He says it’s O(n^2) in the amount of pixels 
in the image. What is the new time complexity of the method?
*/

/*:

#### 1a)
* [math] 1000 * 3
* [math] 1000 * 2000 * 3
* [memory] 1000 * 2000 * 2
* [storage] 1000 * 2000 * 10
* [filter] 1000 * 2000 * 200
* 430,003,000 picoseconds or 4.3 * 10^7

The answer is: 4.3 x 10^7

#### 1b)
* [math] n * 3
* [math] n * m * 3
* [memory] n * m * 2
* [storage] n * m * 10
* [filter] n * m * 200
* (3n)+(3nm)+(2nm)+(10nm)+(200nm)
* (3n)+(215nm)

The answer is: 3n + 215nm

#### 1c)

The answer is: O(n^2)


#### 1d)

The answer is: O(n^4)

*/


/*:

### 2.

If foo(xs) is a function with time complexity n (where n is the size of the input array), 
and bar(xs) is a function with time complexity n2, what is the time complexity of 
each of the following snippets of code or algorithms?

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

The answer is: O(n^4)

#### 2b)

int frobnicate(ys, m) {
if (m == 0) {
return 0;
}
return ys[m] + frobnicate(ys, m - 1);
}
frobnicate(xs, n);

The answer is 0(n);

Tip: Write down a table with n from 0 to 5 and trace through to find out how many times 
frobnicate is called with each value of n.

#### 2c)

An algorithm that takes as its input a list of friends of length n, filters out duplicates 
using a method similar to our hasDuplicates method, sorts the list using merge sort 
(see bigocheatsheet.com), then prints each item to the screen.

binary sort (hasDuplicates) + merge sort

O(logn) + O(nlogn) = O(nlogn)

The answer is: O(nlogn)


#### 2d)

An algorithm that searches the now-sorted list of friends for a specific friend (not including the time it takes to sort).

O(1)

*/

/*:

### 3.

Look at the complexities for some common data structures at bigocheatsheet.com. 
Pick a good data structure for each of the following scenarios (there are sometimes 
multiple answers):

#### 3a)

You get a large dataset of points of interest from an API when your app first runs. 
You build it once at the beginning, and then have to search it many times while 
the user pans around a map.


The answer is: graph or trees


#### 3b)

You get a small dataset of points of interest from an API every time the user 
pans the map. You construct the data set many times and only render it once, 
then you discard it and do another API search.

The answer is: stack or hash

Tip: Constructing a dataset of size n means you have to call the data structure’s 
insert method n times. So if the data structure has an insert method that takes 
O(n2), the time to build it all from scratch is O(n3).

The answer is: stack or hash table


#### 3c)

You used a linked list for your music app’s playlist feature, but now when people 
search their playlist, there’s a noticeable lag before loading results. Your 
competitor’s app is buttery smooth when searching, even showing results as you type. 
What data structure would allow you to more quickly search without compromising too 
much on the speed of inserting and deleting tracks, even in the worst case?

The answer is: tree

*/

/*:

### 4.

#### 4)

Write an algorithm using one of the methods from exercise 1 (your choice) to 
calculate the factorial of a number n. What is the time complexity of your 
method in terms of the input value?

*/


func factorial(num: Int) -> Int{
    
    if (num == 0){
        return 1;
    }
    
    else {
        return (num * factorial(num - 1))
    }
}


/*:

#### 5)

Write an Objective C or Swift function to multiply two numbers without using the * operator. 
Use the grade school method of multiplying by doing repeated addition. 
For instance, 5 * 8 = 5 + 5 + 5 + 5 + 5 + 5 + 5 + 5 = 40. 
Find the big O of your function in terms of n and m (the two operands).


*/

// I didn't account for negative numbers, decimals, or large numbers

func multiplyTheseTwo(num1: Int, num2: Int) -> Int {
    
    let baseNum = num1
    let multiplierNum = num2
    var product = 0
    
    for (var i = 0; i < multiplierNum; i++){
        product += baseNum
        print(product)
    }
    
    return product
}


/*:

#### 6)

Look up Russian Peasant Multiplication. It’s a faster way to multiply numbers, 
especially on a binary computer (like yours!). Implement a new multiplication 
function using this technique and find the big O of your method. If you have 
trouble with implementing this, write a flow chart and find the big O based on that. 
(But it’s more satisfying to implement it and run it)

Tip: Run through the method by hand a few times to see how it works and verify to 
yourself that it does. It’s a non-intuitive algorithm. This will hopefully also 
make the time complexity more clear.


*/














