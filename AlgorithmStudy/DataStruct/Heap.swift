//
//  Heap.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/03/28.
//

import Foundation

/**
 힙 알고리즘 구현
*/

fileprivate struct Heap<element: Comparable> {
    var heap = [element]()
    var count: Int {
        return heap.count
    }
    var isEmpty: Bool {
        return heap.isEmpty
    }
    
    mutating func insert(_ item: element) {
        if isEmpty {
            heap.append(item)
            heap.append(item)
            return
        }
        heap.append(item)
        var insertIndex = count - 1
        while heap[insertIndex] <= heap[insertIndex / 2] {
            if insertIndex <= 1 { break }
            
            let tmp = heap[insertIndex / 2]
            heap[insertIndex / 2] = heap[insertIndex]
            heap[insertIndex] = tmp
            insertIndex /= 2
        }
    }
    
    mutating func pop() -> element? {
        if count <= 1 { return nil }
        
        let popValue = heap[1]
        heap[1] = heap[count-1]
        heap.removeLast()
        
        var popIndex = 1
        
        while true {
            let leftIndex = popIndex * 2
            let rightIndex = popIndex * 2 + 1
            if count <= 1 {
                return popValue
            }
            if leftIndex <= count-1 && heap[popIndex] < heap[leftIndex] {
                let tmp = heap[popIndex]
                heap[popIndex] = heap[leftIndex]
                heap[leftIndex] = tmp
                popIndex = leftIndex
            }
            if heap[popIndex] > heap[leftIndex] && heap[popIndex] > heap[rightIndex] {
                return popValue
            }
            if heap[popIndex] < heap[leftIndex] && heap[popIndex] < heap[rightIndex] {
                let biggerIndex = heap[leftIndex] < heap[rightIndex] ? rightIndex : leftIndex
                let tmp = heap[popIndex]
                heap[popIndex] = heap[biggerIndex]
                heap[biggerIndex] = tmp
                popIndex = biggerIndex
            }
        }
    }
}
