
import Foundation

class Node {
    let data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
    }
}


func insert(head: Node?, data: Int!) -> Node? {
    
    guard let head = head else {
        return Node(data: data)
    }
    
    if head.next == nil {
        head.next = Node(data: data)
    } else {
        _ = insert(head: head.next, data: data)
    }
    
    return head
}

func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
var arr = [2, 3, 4, 1]

for num in arr {
    head = insert(head: head, data: num)
}

display(head: head)

enum StringToIntTypecastingError: Error {
    case BadString
}

func stringToInt(inputString: String) throws -> Int {
    guard let int = Int(inputString) else {
        throw StringToIntTypecastingError.BadString
    }
    return int
    
}
