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
    for (int i = 0; i < width; i++) {   //10; 5*width; 14*width         //w * (
        for (int j = 0; j < height; j++) { //10; 5*height; 14*height //h * (
            [image[i][j] makeMoreAwesome];  // 200
        }
    }
    return image;
}

10+5w+14w+10w+5wh+14wh+200wh = 219wh +29w + 10         219nm + 29n + 10

O(m * n)

b) What is the time complexity of this method, expressed in big O notation? Assume the image is square, and both dimensions are ‘n’.

O(n^2)

c) My friend sends me an improved version of his algorithm, makeEvenMoreAwesome, that takes into account the pixels around the image. He says it’s O(n2) in the amount of pixels in the image. What is the new time complexity of the method?

O(n^4)   since makeEvenMoreAwesome is O(n^2)

*/

/*2)If foo(xs) is a function with time complexity n (where n is the size of the input array), and bar(xs) is a function with time complexity n2, what is the time complexity of each of the following snippets of code or algorithms?


a) for (int i = 0; i < n; i++) {    n
    for (int j = 0; j < n; j++) {   n^2
        foo(xs); n
    }
}
O(n^3)

for (int i = 0; i < n; i++) { n
    for (int j = 0; j < n; j++) { n^2
        bar(xs);
    }
}
O(n^4)

for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
        // do cool stuff
    }
}
O(n^2)

Final: O(n^4)

b) int frobnicate(ys, m) {
    if (m == 0) {
        return 0;
    }
    return ys[m] + frobnicate(ys, m - 1);
}
frobnicate(xs, n);
O(n)


Tip: Write down a table with n from 0 to 5 and trace through to find out how many times frobnicate is called with each value of n.


c) An algorithm that takes as its input a list of friends of length n, filters out duplicates using a method similar to our hasDuplicates method, sorts the list using merge sort (see bigocheatsheet.com), then prints each item to the screen.

BOOL betterHasDuplicates(int xs[], int n) {
for (int i = 0; i < n; i++) {
for (int j = i; j < n; j++) {
if (i != j && xs[i] == xs[j]) {
return YES;
}
}
}
return NO;
}
O(n^2)

//merge sort: split each element into partitions of size 1
recursively merge adjancent partitions
for i = leftPartStartIndex to rightPartLastIndex inclusive
if leftPartHeadValue <= rightPartHeadValue
copy leftPartHeadValue
else: copy rightPartHeadValue
copy elements back to original array

O(n(logn))

print each item 
O(n)

Final: O(n(logn))  = O(n^2) + O(n(logn)) + O(n)



d) An algorithm that searches the now-sorted list of friends for a specific friend (not including the time it takes to sort).
O(logn)  Binary search

*/

/*3)Look at the complexities for some common data structures at bigocheatsheet.com. Pick a good data structure for each of the following scenarios (there are sometimes multiple answers):


a) You get a large dataset of points of interest from an API when your app first runs. You build it once at the beginning, and then have to search it many times while the user pans around a map.

Tree----A quad tree is a data structure comprising nodes which store a bucket of points and a bounding box. Any point which is contained within the node’s bounding box is added to its bucket. Once the bucket gets filled up, the node splits itself into four nodes, each with a bounding box corresponding to a quadrant of its parents bounding box. All points which would have gone into the parent’s bucket now go into one of its children’s buckets.

https://robots.thoughtbot.com/how-to-handle-large-amounts-of-data-on-maps

b) You get a small dataset of points of interest from an API every time the user pans the map. You construct the data set many times and only render it once, then you discard it and do another API search.

Set or Array

Tip: Constructing a dataset of size n means you have to call the data structure’s insert method n times. So if the data structure has an insert method that takes O(n2), the time to build it all from scratch is O(n3).


c) You used a linked list for your music app’s playlist feature, but now when people search their playlist, there’s a noticeable lag before loading results. Your competitor’s app is buttery smooth when searching, even showing results as you type. What data structure would allow you to more quickly search without compromising too much on the speed of inserting and deleting tracks, even in the worst case?

Tree

*/

/*4)Write an algorithm using one of the methods from exercise 1 (your choice) to calculate the factorial of a number n. What is the time complexity of your method in terms of the input value?

func factorial(N: Int) -> Int {
if N == 1 {
return 1
} else {
return N * factorial(N - 1)
}
}

O(n!)

*/

/*5)Write an Objective C or Swift function to multiply two numbers without using the * operator. Use the grade school method of multiplying by doing repeated addition. For instance, 5 * 8 = 5 + 5 + 5 + 5 + 5 + 5 + 5 + 5 = 40. Find the big O of your function in terms of n and m (the two operands).

http://www.geeksforgeeks.org/multiply-two-numbers-without-using-multiply-division-bitwise-operators-and-no-loops/
/* function to multiply two numbers n and m*/
int multiply(int n, int m)
{
/* 0  multiplied with anything gives 0 */
if(m == 0)
return 0;

/* Add n one by one */
if(m > 0 )
return (n + multiply(n, m-1));

/* the case where m is negative */
if(m < 0 )
return -multiply(n, -m+1);
}

int main()
{
printf("\n %d", multiply(5, -11));
getchar();
return 0;
}

Read more:  http://www.noexit4u.com/2013/03/c-program-to-multiply-two-numbers.html

    {
        int n,m,i,prod=0;
        clrscr();
        printf("Enter 1st number: ");
        scanf("%d",&num1);
        printf("Enter 2nd number: ");
        scanf("%d",&num2);
        for(i=1;i<=m;i++)
        {
            prod+=n;
        }
        printf("\n\n\nProduct of %d and %d is %d",n,m,prod);
        getch();
}

O(m)

*/

/*6)Look up Russian Peasant Multiplication. It’s a faster way to multiply numbers, especially on a binary computer (like yours!). Implement a new multiplication function using this technique and find the big O of your method. If you have trouble with implementing this, write a flow chart and find the big O based on that. (But it’s more satisfying to implement it and run it)

// an Example below: http://www.cut-the-knot.org/Curriculum/Algebra/PeasantMultiplication.shtml
This is true in general: if tasked with applying the algorithm to finding the product of two numbers a and b, make the smaller number first, the larger one second.

Now, let's see why the algorithm works. Since halving and doubling play such an important role in the algorithm, it should not come as a great surprise that its real foundation lies in the binary system. To obtain the binary representation of a number, the number is to be repeatedly divided by two, the remainders recorded and then written in the reverse order. Check now the "Show binary" box:


We see two additional columns: the first indicates the step (and a power of 2), the second contains the binary digits of 85 written from the bottom upwards:

85 = 10101012,
which essentially means that


85	= 10101012
= 1·26 + 0·25 + 1·24 + 0·23 + 1·22 + 0·21 + 1·20
= 64 + 16 + 4 + 1.
Note that a binary digit is the remainder of division by 2: it is 1 for odd numbers and 0 for even numbers. Which bring forth the connection between the binary digits of the first multiplicand, 85 in our case, and the parity of the number in the column beneath it. The numbers are odd exactly when the remainder that appears to their left is 1. This makes the algorithm tick:


85×18	= (64 + 16 + 4 + 1)×18
= 1152 + 288 + 72 + 18
= 1530.
For the product 18×85 we get:


18	= 100102
= 1·24 + 0·23 + 0·22 + 1·21 + 0·20
= 16 + 2.
and subsequently


18×85	= (16 + 2)×85
= 1360 + 170
= 1530.

O(logn)  (as double input only add 1 step)

Tip: Run through the method by hand a few times to see how it works and verify to yourself that it does. It’s a non-intuitive algorithm. This will hopefully also make the time complexity more clear.

*/

/*7)Using the technique from exercise 4, profile the built in sorting method in objective C (use an NSMutableArray and google how to sort an array of numbers in objective C). Graph the result. Use spreadsheet formulas to add graph lines for n, n2, and n*log(n). (You’ll have to modify the factors to make them fit in the graph window and to be close to the graph of method execution time). Show that the sort method best fits n * log(n).


Not sure how to do this one. I did check the graph in http://bigocheatsheet.com though, still no idea at all. :(


//----Bubble sort----
do
swapped = false
for i = 1 to indexOfLastUnsortedElement
if leftElement > rightElement
swap(leftElement, rightElement)
swapped = true
while swapped


//----Select sort----
repeat (numOfElements - 1) times
set the first unsorted element as the minimum
for each of the unsorted elements
if element < currentMinimum
set element as new minimum
swap minimum with first unsorted position


//----Insert sort----
mark first element as sorted
for each unsorted element
'extract' the element
for i = lastSortedIndex to 0
if currentSortedElement > extractedElement
move sorted element to the right by 1
else: insert extracted element


//----Merge sort----
split each element into partitions of size 1
recursively merge adjancent partitions
for i = leftPartStartIndex to rightPartLastIndex inclusive
if leftPartHeadValue <= rightPartHeadValue
copy leftPartHeadValue
else: copy rightPartHeadValue
copy elements back to original array


//----Quick sort----
for each (unsorted) partition
set first element as pivot
storeIndex = pivotIndex + 1
for i = pivotIndex + 1 to rightmostIndex
if element[i] < element[pivot]
swap(i, storeIndex); storeIndex++
swap(pivot, storeIndex - 1)


//----R-Quick sort----
for each (unsorted) partition
randomly select pivot, swap with first element
storeIndex = pivotIndex + 1
for i = pivotIndex + 1 to rightmostIndex
if element[i] < element[pivot]
swap(i, storeIndex); storeIndex++
swap(pivot, storeIndex - 1)


//----Count sort----
create key (counting) array
for each element in list
increase the respective counter by 1
for each counter, starting from smallest key
while counter is non-zero
restore element to list
decrease counter by 1


//----Radix sort----
create 10 buckets (queues) for each digit (0 to 9)
for each digit placing
for each element in list
move element into respective bucket
for each bucket, starting from smallest digit
while bucket is non-empty
restore element to list

*/


