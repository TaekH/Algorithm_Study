//
//  Stack.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/29.
//

import Foundation

/**
 스택 알고리즘 구현
 */

struct Stack<Element> {
    var stack: [Element] = []
    
    var count: Int {
        stack.count
    }
    var isEmpty: Bool {
        stack.isEmpty
    }
    mutating func push(_ i: Element) {
        stack.append(i)
    }
    mutating func pop() -> Element? {
        return isEmpty ? nil: stack.popLast()
    }
}

//struct Stack<Element> {
//    var stack: [Element] = []
//
//    var count: Int {
//        stack.count
//    }
//    mutating func push(_ i: Element) {
//        stack.append(i)
//    }
//    mutating func pop() -> Element? {
//        return stack.popLast()
//    }
//}
