import Foundation

class Solution {
    //Write your code here
    
    func pushCharacter(ch: Character) {
        
    }
    
    func enqueueCharacter(ch: Character) {
        
    }
    
    func popCharacter() -> Character {
        return "a"
    }
    
    func dequeueCharacter() -> Character {
        return "b"
    }
}

// read the string s.
let s = "heyFriend"

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
