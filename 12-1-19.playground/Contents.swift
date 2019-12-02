import Foundation

class Person {
    var age: Int = 0
    
    init(initialAge: Int) {
        // Add some more code to run some checks on initialAge
        guard initialAge > -1 else {
            self.age = 0
            print("Age is not valid, setting age to 0")
            return
        }
        self.age = initialAge
    }
    
    func amIOld() {
        // Do some computations in here and print out the correct statement to the console
        switch age {
        case ...13:
            print("Chicken")
        default:
            print("Ok")
        }
    }
    
    func yearPasses() {
        age += 1
    }
}

/*
 The prime factors of 13195 are 5, 7, 13 and 29.
 What is the largest prime factor of the number 600851475143 ?
 */

let test = 13195
let test1 = 600851475143
let set = Set([1,3,4,5])

print (test / 13 / 5 / 7 / 29)

func isPrime(num: Int) -> Bool {
    let range = 2..<(num > 3 ? (num / 2) : num)
    var isPrime = true
    
    range.forEach {
        if num % $0 == 0 {
            isPrime = false
            return
        }
    }
    
    return isPrime
}

46.isMultiple(of: 2)

func largestPrimeFactor(num: Int) -> Int {
    var set = Set<Int>()
    let range = 2..<(num/2)
    for number in range {
        if num.isMultiple(of: number) && isPrime(num: number) {
            set.insert(number)
            if set.reduce(0, *) == num {
                break
            }
        }
    }
    //    range.forEach {
    //        if num.isMultiple(of: $0) && isPrime(num: $0) {
    //            set.insert($0)
    //            if set.reduce(0, *) == num {
    //                return
    //            }
    //        }
    //    }
    print(set.sorted())
    return Array(set.sorted())[set.count - 1]
}

let startDate = Date()
print(largestPrimeFactor(num: test))
print(Date().timeIntervalSince(startDate))

//let startDate1 = Date()
//print(largestPrimeFactor(num: test1))
//print(Date().timeIntervalSince(startDate1))

var test2 = test1
var div = 2
var divStore = 0

let startDate2 = Date()
while test2 != 1 {
    print("current number is: \(test2)")
    print("current divisor is: \(div)")
    print("largest divisor currently held is: \(divStore)")
    if test2 % div == 0 {
        test2 = test2 / div
        if isPrime(num: div) {
            divStore = div
        }
    } else {
        div += 1
    }
}

print(divStore)
print(Date().timeIntervalSince(startDate2))
