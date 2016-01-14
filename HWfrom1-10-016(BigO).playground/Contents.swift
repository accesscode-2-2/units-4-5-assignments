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
foo(xs); // foo(xs) = O(N^2)
    }
}
for (int i = 0; i < n; i++) {
for (int j = 0; j < n; j++) {
bar(xs); // bar(xs) = O(N^2)
    }
}
for (int i = 0; i < n; i++) {
for (int j = 0; j < n; j++) {
// do cool stuff
    }
}

Notes: 

when performance is proportional to the square of the size of the input data (and for loops are involved) the run time is often O(N^2). Deeper nested loops result in higher exponents.

O(N^2) + O(N^2) = O(N^4)?

Answer: O(N^4)?

b) Calculate the time complexity of the following:

int frobnicate(ys, m) {
if (m == 0) {
return 0;
}
return ys[m] + frobnicate(ys, m - 1);
}
frobnicate(xs, n);

Tip: Write down a table with n from 0 to 5 and trace through to find out how many times frobnicate is called with each value of n.

Notes:

when growth doubles (ie: frobnicate numbers) run time is O(2^n)

Answer: O(2^n)?

c) An algorithm that takes as its input a list of friends of length n, filters out duplicates using a method similar to our hasDuplicates method, sorts the list using merge sort (see bigocheatsheet.com), then prints each item to the screen.

Notes: 

loop through to filter out duplicates = linear search = O(N)
merge sort = O(N)

But: both of these actions would require a for loop (ie: 2 for loops = O(N^2))

Answer: O(N^2)?

d) An algorithm that searches the now-sorted list of friends for a specific friend (not including the time it takes to sort).

Notes: 

sorted array search = linear search = O(N)
N is the max number of items in the array

Answer: O(N)

3) Look at the complexities for some common data structures at bigocheatsheet.com. Pick a good data structure for each of the following scenarios (there are sometimes multiple answers):

a) You get a large dataset of points of interest from an API when your app first runs. You build it once at the beginning, and then have to search it many times while the user pans around a map.

Notes: This sounds like a tree or graph (less efficient for search)

Answer: tree / graph

b) You get a small dataset of points of interest from an API every time the user pans the map. You construct the data set many times and only render it once, then you discard it and do another API search.

Tip: Constructing a dataset of size n means you have to call the data structure’s insert method n times. So if the data structure has an insert method that takes O(n2), the time to build it all from scratch is O(n3).

Notes: you could save the points of interest in a hash table (dictionary)

Answer: Hash table

c) You used a linked list for your music app’s playlist feature, but now when people search their playlist, there’s a noticeable lag before loading results. Your competitor’s app is buttery smooth when searching, even showing results as you type. What data structure would allow you to more quickly search without compromising too much on the speed of inserting and deleting tracks, even in the worst case?

Notes: A tree is fast when inserting, deleting and searching items

Answer: Tree

4) Write an algorithm using one of the methods from exercise 1 (your choice) to calculate the factorial of a number n. What is the time complexity of your method in terms of the input value?
*/

// answer:

let userNames = ["cheekymonkey56", "007brenda", "hippydude"]

if userNames.contains("geniushacker202") {
    print("ACCESS GRANTED")
}
else {
    print("INVALID USERNAME...")
}

// so: the Big O run time is O(N) because the run time corresponds to userNames.count

/*
5) Write an Objective C or Swift function to multiply two numbers without using the * operator. Use the grade school method of multiplying by doing repeated addition. For instance, 5 * 8 = 5 + 5 + 5 + 5 + 5 + 5 + 5 + 5 = 40. Find the big O of your function in terms of n and m (the two operands).
*/

// answer: 

func multiplyTwoNumbers(num1: Int, num2: Int) -> Int {
    var product = 0
    
    for _ in 1...num2 { // loop through 1 through num2
        product += num1 // each time add num1 to the product
    }
    return product
}

print(multiplyTwoNumbers(3, num2: 4)) // test it

// BIG O = O(N) growth is linear


/*
6) Look up Russian Peasant Multiplication. It’s a faster way to multiply numbers, especially on a binary computer (like yours!). Implement a new multiplication function using this technique and find the big O of your method. If you have trouble with implementing this, write a flow chart and find the big O based on that. (But it’s more satisfying to implement it and run it)

Tip: Run through the method by hand a few times to see how it works and verify to yourself that it does. It’s a non-intuitive algorithm. This will hopefully also make the time complexity more clear.
*/

// answer:

// Steps:
// track two numbers in arrays
// double the number in the first array
// halve the number in the second array
// if second number is even, remove it from both arrays
// continue doubling and halfing until the number in the second column is 1
// add up the remaining numbers in the first array, this is the product to return

func peasantMultiplication(firstNumber: Int, secondNumber: Int) -> Int {
    
    var firstArray = [Int](arrayLiteral: firstNumber * 2)
    var secondArray = [Int](arrayLiteral: secondNumber / 2)
    var sum: Int = 0
    
    while secondArray[0] != 1 {
        
        if secondArray[0] % 2 == 0 {
            print("this number is even!")
            firstArray.removeAtIndex(0)
            secondArray.removeAtIndex(0)
        }
        else {
//            firstArray = firstArray.append(firstArray[0] * 2)
//            secondArray =
        }
        
    }
    
    return 0

}

// I need to do more work on this, Integers in Swift aren't 100% accurate as they are rounded up. 
//peasantMultiplication(12, secondNumber: 14)



/*
7) Using the technique from exercise 4, profile the built in sorting method in objective C (use an NSMutableArray and google how to sort an array of numbers in objective C). Graph the result. Use spreadsheet formulas to add graph lines for n, n2, and n*log(n). (You’ll have to modify the factors to make them fit in the graph window and to be close to the graph of method execution time). Show that the sort method best fits n * log(n).
*/

// answer: I'm not sure how to graph this in a playground




