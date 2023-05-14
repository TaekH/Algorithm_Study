//
//  Queue.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/24.
//

import Foundation

/**
 큐 알고리즘 구현
 */

struct Queue<Element> {
    private var queue: [Element] = []
    var count: Int {
        return queue.count
    }
    var isEmpty: Bool {
        return queue.isEmpty
    }

    mutating func enqueue(_ i: Element) {
        queue.append(i)
    }
    mutating func dequeue() -> Element? {
        return isEmpty ? nil: queue.removeFirst()
    }
}

//struct Queue<Element> {
//    private var queue: [Element?] = []
//    var head = 0
//
//    var count: Int {
//        return queue.count
//    }
//    var isEmpty: Bool {
//        return queue.isEmpty
//    }
//    mutating func enqueue(_ i: Element) {
//        queue.append(i)
//    }
//    mutating func dequeue() -> Element? {
//        guard head <= count, let element = queue[head] else { return nil }
//        queue[head] = nil
//        head += 1
//
//        if head > 10 {
//            queue.removeFirst(head)
//            head = 0
//        }
//        return element
//    }
//}


struct DoublyStackQueue<Element> {
    private var inStack: [Element] = []
    private var outStack: [Element] = []
    
    var isEmpty: Bool {
        return inStack.isEmpty && outStack.isEmpty
    }
    
    mutating func enqueue(_ element: Element) {
        inStack.append(element)
    }
    
    mutating func dequeue() -> Element? {
        if outStack.isEmpty {
            outStack = inStack.reversed()
            inStack.removeAll()
        }
        return outStack.popLast()
    }
}
