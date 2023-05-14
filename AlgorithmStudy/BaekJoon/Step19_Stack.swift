//
//  Step19.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/04/05.
//

import Foundation

/**
    스택
 */

fileprivate class Step19_Stack {
    
    //MARK: 백준 10828 Stack 기본
    //var stack: [Int] = []
    //
    //for _ in 0..<Int(readLine()!)! {
    //    let input = readLine()!.split(separator: " ")
    //    switch input[0] {
    //    case "push":
    //        stack.append(Int(input[1])!)
    //    case "pop":
    //        print(stack.popLast() ?? -1)
    //    case "size":
    //        print(stack.count)
    //    case "empty":
    //        print(stack.isEmpty ? 1 : 0)
    //    case "top":
    //        print(stack.isEmpty ? -1 : stack[stack.count-1])
    //    default:
    //        print("")
    //    }
    //}

    //MARK: 백준 10773 Stack
    //var stack:[Int] = []
    //
    //for _ in 0..<Int(readLine()!)! {
    //    let input = Int(readLine()!)!
    //    if input == 0 {
    //        stack.popLast()
    //    } else { stack.append(input) }
    //}
    //print(stack.reduce(0) { $0 + $1 })

    //MARK: 백준 10773 Stack Refactoring
    //var stack = [Int]()
    //for _ in 0..<Int(readLine()!)! {
    //    if let input = Int(readLine()!) {
    //        if input != 0 { stack.append(input) }
    //        else {stack.popLast()}
    //    }
    //}
    //print(stack.reduce(0, +))

    //MARK: 백준 9012
    //var result = ""
    //for _ in 0..<Int(readLine()!)! {
    //    var stack = 0
    //    for i in readLine()! where stack >= 0 {
    //        if i == "(" {
    //            stack += 1
    //        } else { stack -= 1 }
    //    }
    //    result += stack == 0 ? "YES" : "NO"
    //    result += "\n"
    //}
    //print(result)

}
