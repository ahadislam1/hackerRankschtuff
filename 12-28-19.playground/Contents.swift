import Foundation

class Solution {
    
    private var queue = [Character]()
    private var stack = [Character]()
    
    func pushCharacter(ch: Character) {
        stack.append(ch)
    }
    
    func enqueueCharacter(ch: Character) {
        queue = [ch] + queue
    }
    
    func popCharacter() -> Character {
        return stack.removeLast()
    }
    
    func dequeueCharacter() -> Character {
        return queue.removeLast()
    }
}

// read the string s.
let s = "yes"

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for character in s {
    obj.pushCharacter(ch: character)
    obj.enqueueCharacter(ch: character)
}


var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.

obj.display()

for _ in 0..<(s.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false
        
        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}

var whatever = [Character]()

whatever += ["a"]

whatever = "b" + whatever


