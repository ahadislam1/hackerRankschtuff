import UIKit

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var aScore = 0
    var bScore = 0
    let arr = [aScore, bScore]
    (0..<a.count).forEach( {
        a[$0] > b[$0] ? (aScore += 1) : (bScore += 1)
    })
    return arr
    
}


func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    var primaryDiagonal = 0
    var secondaryDiagonal = 0
    for index in 0..<arr.count {
        primaryDiagonal += arr[index][index]
        secondaryDiagonal += arr[index][(arr.count - 1) - index]
    }
    return abs(primaryDiagonal - secondaryDiagonal)
}

let arr = [[11, 2, 4],
           [4, 5, 6],
           [10, 8, -12]]

for arr in arr {
    print(arr, terminator: "")
}
print()
print("hi")
print("thanks")
let x = Array(repeating: "x", count: 3)
let y = Array(repeating: "y", count: 2)
print(x.joined() + y.joined())

func sumOfDiagonals(arr: [[Int]]) -> Int {
    // Write your code here
    var primaryDiagonal = 0
    var secondaryDiagonal = 0
    for index in 0..<arr.count {
        primaryDiagonal += arr[index][index]
        secondaryDiagonal += arr[index][(arr.count - 1) - index]
    }
    return primaryDiagonal + secondaryDiagonal
}

let time1 = "07:05:45PM"
let time1Arr = time1.components(separatedBy: ":")
if time1Arr[2].contains("PM") {
    print("true")
}
let lastTime = time1Arr[2].components(separatedBy: "PM")
let morning = time1Arr[0] == "12" ? "00" : time1Arr[0]
print(lastTime[0])
print(time1Arr[2].components(separatedBy: "PM")[0])

func timeConversion(s: String) -> String {
    /*
     * Write your code here.
     */
    let sArr = s.components(separatedBy: ":")
     if sArr[2].contains("AM") {
         let morning = sArr[0] == "12" ? "00" : sArr[0]
         return "\(morning):\(sArr[1]):\(sArr[2].components(separatedBy: "AM")[0])"
     } else {
         let night = sArr[0] == "12" ? (Int(sArr[0]) ?? 0) : (Int(sArr[0]) ?? 0) + 12
         return "\(night):\(sArr[1]):\(sArr[2].components(separatedBy: "PM")[0])"
     }

}

let str = "12:45:54PM"
print(timeConversion(s: str))

func sumOf3and5s(num: Int) -> Int {
    let startTime = Date()
    let range = 1..<num
    var sum = 0
    range.forEach({ $0 % 3 == 0 || $0 % 5 == 0 ? (sum += $0) : (sum += 0) })
    print(Date().timeIntervalSince(startTime))
    return sum
}

func sumUsingReduce(num: Int) -> Int {
    let startTime = Date()
    let range = 1..<num
    print(Date().timeIntervalSince(startTime))
    return range.reduce(0, { x, y in
        if y % 3 == 0 || y % 5 == 0 {
            return x + y
        } else {
            return x
        }
    } )
}

print(sumOf3and5s(num: 1000))
print(sumUsingReduce(num: 1000))

print(72/5)
print(72%5)
print(69/5)
(5 * 14) + 5
print(5 * (72/5))
print(5 * (69/5))
print(5 * (65/5))

let arraygrade = [4, 73, 67, 38, 33]

func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
    grades.map({
        if $0 < 38 {
            return $0
        } else if ((($0/5)*5) + 5) - $0 < 3  {
            return (($0/5)*5) + 5
        } else {
            return $0
        }
    })
}

print(gradingStudents(grades: arraygrade))
