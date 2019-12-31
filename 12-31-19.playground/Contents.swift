import UIKit

func bubbleSort(n: Int, a: [Int]) {
    var numOfSwaps = 0
    var a = a
    
    for _ in 0...n {
        var swaps = 0
        
        for index in 0..<a.count - 1 {
            if a[index] > a[index + 1] {
                a.swapAt(index, index + 1)
                swaps += 1
            }
        }
        
        numOfSwaps += swaps
        
        if swaps == 0 {
            break
        }
    }
    
    print("Array is sorted in \(numOfSwaps) swaps.")
    print("First Element: \(a[0])")
    print("Last Element: \(a[a.count - 1])")
}

let n = 3
let a = [1, 2, 3]

bubbleSort(n: n, a: a)

let n2 = 3
let a2 = [3, 2, 1]

bubbleSort(n: n2, a: a2)

struct Printer<T> {
    func printArray(array: [T]) {
        array.forEach { print($0) }
    }
}

Printer<Int>().printArray(array: a2)
