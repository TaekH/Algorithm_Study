//
//  BinarySearchTree.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/31.
//

import Foundation

/**
 이진 탐색 트리 알고리즘 구현
 */

final fileprivate class Node<T: Comparable> {
    var data: T
    var right: Node?
    var left: Node?
    
    init(data: T) {
        self.data = data
    }
}
final fileprivate class BST<T: Comparable> {
    var root: Node<T>?
    
    func insert(_ data: T) {
        guard let root = self.root else {
            return self.root = Node(data: data)
        }
        
        var node = root
        while true {
            if data > node.data {
                guard let next = node.left else {
                    return node.left = Node(data: data)
                }
                node = next
            } else {
                guard let next = node.right else {
                    return node.right = Node(data: data)
                }
                node = next
            }
        }
    }
    
    func search(_ data: T) -> Bool {
        if root == nil { return false }
        
        var currentNode = root
        while let node = currentNode {
            if node.data == data {
                return true
            }
            if node.data > data {
                currentNode = node.left
            }
            else {
                currentNode = node.right
            }
        }
        return false
    }
    
    func delete(_ data: T) -> Bool {
        guard let root = self.root else { return false }
        
        var parentNode = root
        var currentNode: Node? = root
        
        while let node = currentNode {
            if node.data == data { break }
            if node.data > data {
                currentNode = node.left
            }
            else { currentNode = node.right}
            parentNode = node
        }
            
        guard let deleteNode = currentNode else { return false } //같은 데이터를 가진 노드가 없음
        
        //MARK: 리프 노드를 삭제하는 경우
        if deleteNode.left == nil && deleteNode.right == nil {
            if parentNode.data > data { parentNode.left = nil }
            else { parentNode.right = nil }
            return true
        }
        
        //MARK: 자식노드가 하나인 노드를 삭제하는 경우
        if deleteNode.right != nil && deleteNode.left == nil { //오른쪽 자식 노드를 가진 경우
            if parentNode.data > data {
                parentNode.left = deleteNode.right
            } else { parentNode.right = deleteNode.right}
            return true
        }
        
        if deleteNode.left != nil && deleteNode.right == nil { // 왼쪽 자식 노드를 가진 경우
            if parentNode.data > data {
                parentNode.left = deleteNode.left
            } else { parentNode.right = deleteNode.left}
            return true
        }
        
        //MARK: 자식노드가 두개인 노드를 삭제하는 경우
        guard let rightNode = deleteNode.right else { return false }
        var changeNode = rightNode
        var changeParentNode = rightNode
        
        while let nextNode = changeNode.left {
            changeParentNode = changeNode
            changeNode = nextNode
        }
        if let changeChildNode = changeNode.right {
            changeParentNode.left = changeChildNode
        } else { changeParentNode.left = nil}
        
        if parentNode.data > data {
            parentNode.left = changeNode
        } else { parentNode.right = changeNode }
        
        changeNode.left = deleteNode.left
        changeNode.right = deleteNode.right
        
        return true
    }
    //MARK: 전위 순회
    func preorder(_ node: Node<T>?) {
        guard let node = node else { return }
        print(node.data, terminator: " ")
        self.preorder(node.left)
        self.preorder(node.right)
    }
    //MARK: 중위 순회
    func inorder(_ node: Node<T>?) {
        guard let node = node else { return }
        self.inorder(node.left)
        print(node.data, terminator: " ")
        self.inorder(node.right)
    }
    //MARK: 후위 순회
    func postorder(_ node: Node<T>?) {
        guard let node = node else { return }
        self.postorder(node.left)
        self.postorder(node.right)
        print(node.data, terminator: " ")
    }
}

