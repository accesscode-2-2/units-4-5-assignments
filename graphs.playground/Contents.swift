//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 1. Yes, CBAFDEGFCGHC. Every edge is visited once in this path.
// 2. No
//3

/*

    A   B   C   D   E   F
A   0   1   0   1   0   1
B   1   0   0   0   1   0
C   0   0   0   1   0   0
D   1   0   1   0   1   1
E   0   1   0   1   0   0
F   1   0   0   1   0   0


*/

//4

/*

    A   B   C   D   E   F
A   0   1   0   0   0   1
B   0   0   0   0   1   0
C   0   0   0   0   0   0
D   0   0   1   0   0   0
E   0   0   0   1   0   0
F   0   0   0   1   0   0


*/