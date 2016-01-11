//: 01/10 Homework Sunday - Instructor: Caleb

/*:

Use the link here to get the questions.  Then code your solutions below.  If it does not require code, just write your answer in comments.

https://docs.google.com/document/d/1aF1imJUVahCSJAuN1OEm5lQXwpSFaAmVmAETKMM6PLQ/edit#heading=h.za36ai6n5fth
*/

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



#### 1a)
* 1000 * 2000 = 2,000,000 (image pixels)
* 3 + 10 + 1 = 14 picoseconds per pixel
* 200 picosends per pixel - awesome filter

1. 200 + 14 = 214 picoseconds to run filter per pixel on my pc
2. 214 * 2,000,000 = 428,000,000 picoseconds to run an image of 1000 x 2000

#### 1b)
* n * m = nm (image pixels)
* 3 + 10 + 1 = 14 picoseconds per pixel
* 200 picosends per pixel - awesome filter

1. 200 + 14 = 214 picoseconds to run filter per pixel on my pc
2. 214 * nm = 214(nm) picoseconds to run an image of n x m

#### 1c)
* O(n^2)

#### 1d)
* O(n^4)

*/


