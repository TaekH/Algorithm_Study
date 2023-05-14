//
//  LinkedList.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/29.
//

import Foundation

/**
 연결리스트 알고리즘 구현
 */

final fileprivate class Node<T> {
    var data: T?
    var next: Node?
    
    init(data: T?, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

final fileprivate class LinkedList<T: Equatable> {
    private var head: Node<T>?
    
    func append(data: T?) {
        if head == nil {
            head = Node(data: data)
            return
        }
        
        var node = head
        while node?.next != nil {
            node = node?.next
        }
        node?.next = Node(data: data)
    }
    
    func insert(data: T?, index: Int) {
        if head == nil {
            head = Node(data: data)
            return
        }
        var node = head
        for _ in 0..<(index-1) {
            if node?.next == nil { break }
            node = node?.next
        }
        let tmp = node?.next
        node?.next = Node(data: data)
        node?.next?.next = tmp
    }
    
    func removeLast() {
        if head == nil { return }
        
        if head?.next == nil {
            head = nil
            return
        }
        
        var node = head
        while node?.next != nil {
            node = node?.next
        }
        node?.next = nil
    }
    
    func remove(_ index: Int) {
        if head == nil { return }
        
        if index == 0 || head?.next == nil {
            head = head?.next
            return
        }
        
        var node = head
        for _ in 0..<(index-1) {
            if node?.next?.next == nil { break }
            node = node?.next
        }
        node?.next = node?.next?.next
    }
    
    fileprivate func search(_ data: T?) -> Node<T>? {
        if head == nil { return nil }
        var node = head
        while node?.next != nil {
            if node?.data == data { break}
            node = node?.next
        }
        return node
    }
}
