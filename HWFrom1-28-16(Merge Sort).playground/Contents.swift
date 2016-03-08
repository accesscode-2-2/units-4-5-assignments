//: Playground - noun: a place where people can play

//https://docs.google.com/document/d/1rlQ3lstnNb3fOR58EwGDysMQ0FSDkUGykcCoU14B9Go/edit#heading=h.za36ai6n5fth


//Insert code here:



var listOfNumbers = [7, 8, 3, 10, 5]
var index = 0
var arrayCount = listOfNumbers.count
func insertionSort(inout values: [Int]) {
    print(listOfNumbers)
    
    func keepSorting(var i: Int) -> Int {
        print("i sorting")

        if (i < arrayCount) {
            print("i index \(i)")
            print("num in i \(listOfNumbers[i])")
            func compare(var j: Int) -> Int {
                print("j sorting")
                if (j < arrayCount) {
                    if listOfNumbers[j] > listOfNumbers[i] {
                        swap(&listOfNumbers[j], &listOfNumbers[i])
                    }
                    print("j index: \(j)")
                    print("num in j: \(listOfNumbers[j])")
                    j++
                    return compare(j)
                }
                
                return j
            }
            
            compare(i)
            
            i++
            return keepSorting(i)
        }
        
        return i
    }
    
    keepSorting(index)
}


insertionSort(&listOfNumbers)
print(listOfNumbers)

