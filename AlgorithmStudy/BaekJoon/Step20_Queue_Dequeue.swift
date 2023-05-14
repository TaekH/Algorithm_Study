//
//  Step20.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/05/15.
//

import Foundation

/**
 큐, 덱
 */

fileprivate class Step20_Queue_Dequeue {
    
    //MARK: 백준 18258 큐2 <실패>
    //var inQueue = [Int]()
    //var outQueue = [Int]()
    //
    //func push(_ value: Int) {
    //    inQueue.append(value)
    //}
    //
    //func pop() -> Int {
    //    if isEmpty() == 1 {
    //        return -1
    //    }
    //    if outQueue.isEmpty {
    //        outQueue = inQueue.reversed()
    //        inQueue.removeAll()
    //    }
    //    return outQueue.removeLast()
    //}
    //
    //func isEmpty() -> Int {
    //    if inQueue.isEmpty && outQueue.isEmpty {
    //        return 1
    //    }
    //    else { return 0 }
    //}
    //
    //for _ in 0..<Int(readLine()!)! {
    //    let input = readLine()!.split(separator: " ")
    //
    //    switch input[0] {
    //    case "push":
    //        push(Int(input[1])!)
    //    case "pop":
    //        print(pop())
    //    case "empty":
    //        print(isEmpty())
    //    case "size":
    //        print(outQueue.count+inQueue.count)
    //    case "front":
    //        print(outQueue.last ?? inQueue.first ?? -1)
    //    default:
    //        print(inQueue.last ?? outQueue.first ?? -1)
    //    }
    //}


    
    //MARK: 백준 11866 요세프
    //let input = readLine()!.split(separator: " ").map { Int($0)! }
    //var result = [Int]()
    //var result = [Int]()
    //var snk = input[1]
    //var arr = Array(1...input[0])
    //
    //while !arr.isEmpty {
    //    if snk <= arr.count {
    //        result.append(arr[snk-1])
    //        arr.remove(at: snk-1)
    //        snk += input[1]-1
    //    }
    //    else { snk -= arr.count }
    //}
    //
    //print("<\(result.map { String($0)}.joined(separator: ", "))>")
    
    //MARK: 백준 2164 시간초과
    //let input = Int(readLine()!)
    //var inQueue = [Int]()
    //var outQueue = [Int]()
    //for i in 1...input! {
    //    inQueue.append(i)
    //}
    //
    //while true {
    //    outQueue = inQueue.reversed()
    //    outQueue.removeLast()
    //    let tmp = outQueue.removeLast()
    //    inQueue = outQueue.reversed()
    //    inQueue.append(tmp)
    //    if inQueue.count == 1 { break }
    //}
    //
    //print(inQueue[0])

    //MARK: 백준 2164
    //let input = Int(readLine()!)
    //var queue = Array(1...input!)
    //var count = 0
    //
    //if input == 1 { print(1) }
    //while true {
    //    queue[count] = 0
    //    queue.append(queue[count+1])
    //    queue[count+1] = 0
    //    if queue[queue.count-2] == 0 { break }
    //    count += 2
    //}
    //print(queue.last!)

    //MARK: 백준 2164
    //var inQueue = Array(1...Int(readLine()!)!)
    //var outQueue = [Int]()
    //
    //func push(_ value: Int) {
    //    inQueue.append(value)
    //}
    //
    //func pop() -> Int? {
    //    if outQueue.isEmpty {
    //        outQueue = inQueue.reversed()
    //        inQueue.removeAll()
    //    }
    //    return outQueue.popLast()
    //}
    //
    //func isEmpty() -> Int {
    //    if inQueue.isEmpty && outQueue.isEmpty {
    //        return 1
    //    }
    //    else { return 0 }
    //}
    //
    //while inQueue.count+outQueue.count != 1 {
    //    let _ = pop()
    //    if let value = pop() {
    //        push(value)
    //    }
    //}
    //
    //print(pop()!)

}
