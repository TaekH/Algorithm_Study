//
//  DoublyLinkedList.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/29.
//

import Foundation

/**
 이중 연결리스트 알고리즘 구현
 */

final fileprivate class Node<T> {
    var data: T?
    var prev, next: Node?
    
    init(data: T?, prev: Node? = nil, next: Node? = nil) {
        self.data = data
        self.prev = prev
        self.next = next
    }
}

final fileprivate class DoublyLinkedList<T: Equatable> {
    private var head: Node<T>?
    private var tail: Node<T>?
    
    func append(data: T?) {
        if head == nil || tail == nil {
            head = Node(data: data)
            tail = head
            return
        }
        let newNode = Node(data: data)
        tail?.next = newNode
        newNode.prev = tail
        tail = newNode
    }
    func insert(_ data: T?, _ index: Int) {
        if head == nil || tail == nil {
            head = Node(data: data)
            tail = head
            return
        }
        var node = head
        for _ in 0..<index-1 {
            if node?.next == nil { return }
            node = node?.next
        }
        let newNode = Node(data: data)
        newNode.next = node?.next
        node?.next?.prev = newNode
        newNode.prev = node?.next
        node?.next = newNode
    }
}

final class DoublyLinkedListWithSize<T: Equatable> {
    private var head: Node<T>?
    private var tail: Node<T>?
    private var size = 0
    
    func append(_ data: T?) {
        if head == nil || tail == nil {
            head = Node(data: data)
            tail = head
            size += 1
            return
        }
        let newNode = Node(data: data)
        newNode.prev = tail
        tail?.next = newNode
        tail = newNode
        size += 1
    }
    
    func insert(_ data: T?, _ index: Int) {
        if head == nil || tail == nil {
            head = Node(data: data)
            tail = head
            size += 1
            return
        }
        let newNode = Node(data: data)
        var node = tail
        if index == size {
            newNode.prev = tail
            tail?.next = newNode
            tail = newNode
            size += 1
        }
        else if index >= size/2 {
            for _ in 0..<size-index {
                node = node?.prev
            }
        } else {
            node = head
            for _ in 0..<index-1 {
                node = node?.next
            }
        }
        newNode.next = node?.next
        node?.next?.prev = newNode
        newNode.prev = node?.next
        node?.next = newNode
        size += 1
    }
    
    func removeLast() {
        if head == nil || tail == nil { return }
        
        if head?.next == nil {
            head = nil
            tail = nil
            size -= 1
            return
        }
        
        tail?.prev?.next = tail?.next
        tail = tail?.prev
        size -= 1
    }
    
    func remove(_ at: Int) {
        if head == nil || tail == nil || size < at { return }
        var node = tail
        if at >= size/2 {
            for _ in 0..<size - at {
                node = node?.prev
            }
        }
        else {
            node = head
            for _ in 0..<at-1 {
                node = node?.next
            }
        }
        node?.prev?.next = node?.next
        node?.next?.prev = node?.prev
        size -= 1
    }
}
