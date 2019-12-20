import UIKit

var str = "Hello, playground"

/*
class Student: Person {
    
    let firstName: String
    let lastName: String
    let id: Int
    let scores: [Int]
    
    /*
     *   Initializer
     *
     *   Parameters:
     *   firstName - A string denoting the Person's first name.
     *   lastName - A string denoting the Person's last name.
     *   id - An integer denoting the Person's ID number.
     *   scores - An array of integers denoting the Person's test scores.
     */
    // Write your initializer here
    
    init(firstName: String, lastName: String, id: Int, scores: [Int]) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
        self.scores = scores
    }
    /*
     *   Method Name: calculate
     *   Return: A character denoting the grade.
     */
    // Write your method here
    func calculate() -> Character {
        let average = scores.reduce(0, +) / scores.count
        switch average {
        case 40..<55:
            return "D"
        case 55..<70:
            return "P"
        case 70..<80:
            return "A"
        case 80..<90:
            return "E"
        case 90...100:
            return "O"
        default:
            return "T"
        }
    }
} // End of class Student
*/

class Difference {
    private let elements: [Int]

    init(arr: [Int]) {
        self.elements = arr
    }
    
    func computeDifference() -> Int {
        let e = self.elements.sorted()
        let y = e[e.count - 1]
        let x = e[0]
        
        return abs(y-x)
    }

} // End of Difference class
