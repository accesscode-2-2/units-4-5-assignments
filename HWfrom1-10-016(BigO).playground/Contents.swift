//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth


1)
a. 1000px * 2000px = 2000000px
b. O(n^2)
c.

2)
a. If foo(xs) is a function with time complexity n (where n is the size of the input array), and bar(xs) is a function with time complexity n2, what is the time complexity of each of the following snippets of code or algorithms?


    for (int i = 0; i < n; i++) {           n
        for (int j = 0; j < n; j++) {       n
            foo(xs);                        n
        }
    }
    for (int i = 0; i < n; i++) {           n
            for (int j = 0; j < n; j++) {   n
                bar(xs);                    n^2
        }
    }
    for (int i = 0; i < n; i++) {           n
        for (int j = 0; j < n; j++) {       n
            do cool stuff
        }
    }
    
    answer= n^4 + n^3 + n^2 = O(n^4)

b. int frobnicate(ys, m) {
        if (m == 0) {
            return 0;
        }
    return ys[m] + frobnicate(ys, m - 1);
    }
    frobnicate(xs, n);

    answer= O(n)

c. An algorithm that takes as its input a list of friends of length n, filters out duplicates using a method similar to our hasDuplicates method, sorts the list using merge sort (see bigocheatsheet.com), then prints each item to the screen.
    answer: O (n ( n log(n)))

d. An algorithm that searches the now-sorted list of friends for a specific friend (not including the time it takes to sort).
    answer:

3)
a. You get a large dataset of points of interest from an API when your app first runs. You build it once at the beginning, and then have to search it many times while the user pans around a map. Binary search tree


b. You get a small dataset of points of interest from an API every time the user pans the map. You construct the data set many times and only render it once, then you discard it and do another API search. stack

Tip: Constructing a dataset of size n means you have to call the data structure’s insert method n times. So if the data structure has an insert method that takes O(n2), the time to build it all from scratch is O(n3).


c. You used a linked list for your music app’s playlist feature, but now when people search their playlist, there’s a noticeable lag before loading results. Your competitor’s app is buttery smooth when searching, even showing results as you type. What data structure would allow you to more quickly search without compromising too much on the speed of inserting and deleting tracks, even in the worst case? Doubly linked list


4)Write an algorithm using one of the methods from exercise 1 (your choice) to calculate the factorial of a number n. What is the time complexity of your method in terms of the input value?

5)Write an Objective C or Swift function to multiply two numbers without using the * operator. Use the grade school method of multiplying by doing repeated addition. For instance, 5 * 8 = 5 + 5 + 5 + 5 + 5 + 5 + 5 + 5 = 40. Find the big O of your function in terms of n and m (the two operands).
    
    int sum = 0
    for (int i = n; i <= m; n++){
        sum += n;
    }
    return sum;

6)

7)


*/

