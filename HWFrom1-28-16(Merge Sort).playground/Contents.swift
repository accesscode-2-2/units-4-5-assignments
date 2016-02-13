//: Playground - noun: a place where people can play

//https://docs.google.com/document/d/1rlQ3lstnNb3fOR58EwGDysMQ0FSDkUGykcCoU14B9Go/edit#heading=h.za36ai6n5fth
/*
Use recursion to implement at least one of the following sorting algorithms in Swift:
Insertion sort OR Selection sort

REQUIREMENTS:
You may not use loops
Your implementations should be in-place (try not to create additional arrays)
You should implement and use additional helper functions

TIPS:
- Add additional parameters to your helper functions
to pass information between recursive calls

- You can use the swap function to exchange two values in a mutable (var) array:

var array = [1, 2]
swap(&array[0], &array[1])
array // [2, 1]

*/

//Insert code here:



//*******Insertion Sort*********


//**** First Solution ****

func insertionSort(inout values: [Int])
{
    
    func insertHelper(inout values: [Int], index: Int) {
        
        if index < values.count - 1 {
            
            let lastIndex = values.removeLast()
            print("last index: \(lastIndex)")
            
            if lastIndex < values[index] {
                
                values.insert(lastIndex, atIndex: index)
                print("newValues: \(values)")
                
                insertHelper(&values, index: 0)
                
            }else {
                
                values.append(lastIndex)
                insertHelper(&values, index: index + 1)
            }
            
            
        }
    }
    
    insertHelper(&values, index: 0)
    
}

var values = [46, 45, 3, 23, 1, 9]
insertionSort(&values)


//***** Solution 2 - Using Swap ****

func insertionSort2(inout values: [Int])
{
    print("*****InsertionSort2******")
    func swapHelper(inout values: [Int], index: Int) {
        
        if index > 0 {
            
            print("last index: \(values[index])")
            
            if values[index] < values[index - 1] {
                
                swap(&values[index], &values[index - 1])
                print("newValues: \(values)")
                
                swapHelper(&values, index: values.count - 1)
                
            }else {
                
                swapHelper(&values, index: index - 1)
            }
            
            
        }
    }
    
    swapHelper(&values, index: values.count - 1)
    
}

var values2 = [46, 45, 3, 23, 1, 9]
insertionSort2(&values2)
