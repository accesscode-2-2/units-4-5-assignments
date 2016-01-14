//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth


1)
//// 1a)
 [math] 1000 * 3
 [math] 1000 * 2000 * 3
 [memory] 1000 * 2000 * 2
 [storage] 1000 * 2000 * 10
 [filter] 1000 * 2000 * 200
 430,003,000 picoseconds or 4.3 * 10^7

//// 1b)
 [math] n * 3
 [math] n * m * 3
 [memory] n * m * 2
 [storage] n * m * 10
 [filter] n * m * 200
 (3n)+(3nm)+(2nm)+(10nm)+(200nm)
 (3n)+(215nm)

//// 1c) O(n^2)

//// 1d) O(n^4)
*/




/*
2)If foo(xs) is a function with time complexity n (where n is the size of the input array), and bar(xs) is a function with time complexity n2, what is the time complexity of each of the following snippets of code or algorithms?
///// 2a)
for (int i = 0; i < n; i++) {    //n
    for (int j = 0; j < n; j++) {   // n
        foo(xs);      // n
    }
}
n * n * n = n^3
for (int i = 0; i < n; i++) {   // n
    for (int j = 0; j < n; j++) {   // n
        bar(xs);      // n^2
    }
}
n * n * n^2 = n^4
for (int i = 0; i < n; i++) {    // n
    for (int j = 0; j < n; j++) {  // n
        // do cool stuff
    }
}

        n * n = n^2

///// 2b)
int frobnicate(ys, m) {
    if (m == 0) {
        return 0;
    }
    return ys[m] + frobnicate(ys, m - 1);
}
frobnicate(xs, n);


Big O notation -> 0(n);


/////2c)
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


//MERGE SORT
list1 = [Int]()
func mergeSort (list1, [Int]) -> [Int]{

// split array in half
var middle = list1.count/ 2
var right = [Int]();
var left = [Int]();

for i in 0..<middle{
left.append(list1[i])
}

for j in middle..<list1.count{
right.append(list2[j])
}
}

*/



/*


3)3)a. Tree
b. Stack
c. Tree




4)

func factorial(num: Int) -> Int{
    
    if (num == 0){
        return 1;
    }
        
    else {
        return (num * factorial(num - 1))
    }
}




5)

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

6)

7)


*/

