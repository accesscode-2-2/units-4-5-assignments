//: Playground - noun: a place where people can play

//Answer the questions in the homework below
//https://docs.google.com/document/d/1KlK3PmRMybmHS5db_AP11uHXIcbIeM5vHuuAZOV3xME/edit#

//1)bubble/Selection/insertion: O(n^2)
//  merge/quicksort: O(nlogn)

//2) less memory usage

//3)
func quicksort<T: Comparable>(inout arr: [T], left: Int, right: Int){

    if left >= right {
        return
    }

    let split = partition(&arr, left: left, right: right)
    quicksort(&arr, left: left, right: split-1)
    quicksort(&arr, left: split+1, right: right)

}

func partition<T: Comparable>(inout arr: [T],var left: Int,var right: Int) -> Int {

    var isLeft = true

    while left != right {
        if isLeft{
            if arr[right] < arr[left] {
                swap(&arr[right], &arr[left])
                isLeft = false
            }else{
                right--
            }
        }
        else{
            if arr[left] > arr[right]{
                swap(&arr[left], &arr[right])
                isLeft = true
            }else{
                left++
            }
        }

    }

    return left
}

var arr = [3,67,1,13,91,54,34,6,3,11]
quicksort(&arr, left: 0, right: arr.count-1)


//4)


//5)


//6)

struct Stack<T> {
    var arrayStack = [T]()

    mutating func push(item: T) {
        arrayStack.append(item)
    }

    mutating func pop() -> T? {
        if !isEmpty() {
            return arrayStack.removeLast()
        }

        return nil
    }

    func isEmpty() -> Bool {
        return arrayStack.count == 0
    }

    func peek() -> T? {
        if !isEmpty() {
            return arrayStack.last
        }
        return nil
    }

}

let matches = ["(":")", "{":"}", "[":"]"]

func isCompletelyMatched(str: String) -> Bool {

    var strStack = Stack<String>()

    var index = 0

    while index < str.characters.count {

        let currentPar = String(Array(str.characters)[index])

        if strStack.isEmpty() {

            if matches[currentPar] == nil {
                return false
            }
            else{
                strStack.push(currentPar)
            }
        }
        else {
            if matches[strStack.peek()!] == currentPar {
                strStack.pop()
            }
            else if matches[currentPar] != nil {
                strStack.push(currentPar)
            }
            else{
                return false
            }
        }

        index++
    }

    return strStack.isEmpty()
}

isCompletelyMatched("{[()]}[][()]")
isCompletelyMatched("{))(}")
