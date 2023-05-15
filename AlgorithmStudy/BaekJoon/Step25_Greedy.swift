//
//  Step25.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/05/15.
//

import Foundation

/**
 그리디
 */

fileprivate class Step25_Greedy {
    
    //MARK: 백준 11047 동전0 <그리디>
    
    //let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    //var unit = [Int]()
    //var k = input[1]
    //for i in 0..<input[0] {
    //    let tmp = Int(readLine()!)!
    //    if tmp <= k {
    //        unit.append(tmp)
    //    }
    //}
    //unit = unit.sorted(by: >)
    //var idx = 0
    //var count = 0
    //while k != 0 {
    //    if k < unit[idx] {
    //        idx += 1
    //    }
    //    else {
    //        k -= unit[idx]
    //        count += 1
    //    }
    //}
    //print(count)
    
    //MARK: 백준 11047 동전0 <그리디>
    //var input = readLine()!.split(separator: " ").map { Int(String($0))! }
    //var unit = [Int]()
    //for _ in 0..<input[0] {
    //    let tmp = Int(readLine()!)!
    //    if tmp <= input[1] {
    //        unit.append(tmp)
    //    }
    //}
    //var count = 0
    //while input[1] != 0 {
    //    guard let last = unit.popLast() else { break }
    //    let n = input[1] / last
    //    input[1] -= n * last
    //    count += n
    //}
    //print(count)
    
    //MARK: 백준 1931 회의실 배정 < 그리디 >
    //var times = [[Int]]()
    //for i in 0..<Int(readLine()!)! {
    //    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    //    times.append([tmp[0], tmp[1]])
    //}
    //times = times.sorted {
    //    if $0[1] == $1[1] {
    //        return $0[0] < $1[0]
    //    }
    //    else {
    //        return $0[1] < $1[1]
    //    }
    //}
    //var last = -1
    //var count = 0
    //for i in times {
    //    if i[0] >= last {
    //        count += 1
    //        last = i[1]
    //    }
    //}
    //print(count)
    
    //MARK: 백준 11399 ATM <그리디>
    //let input = Int(readLine()!)!
    //var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    //arr = arr.sorted(by: <)
    //var result = Array(repeating: 0, count: input+1)
    //print(arr)
    //for i in 1...input {
    //    result[i] += arr[i-1] + result[i-1]
    //}
    //print(result.reduce(0, +))
    
    
    //MARK: 백준 1541 잃어버린 괄호 < 그리디 >
    //let input = readLine()!.split(separator: "-").map { String($0) }
    //var tmp = 0
    //var result = 0
    //for i in 0..<input.count {
    //    let n = input[i].split(separator: "+")
    //    for j in n { tmp += Int(j)! }
    //
    //    if i == 0 { result += tmp }
    //    else { result -= tmp }
    //    tmp = 0
    //}
    //print(result)
    
    //MARK: 백준 13305 <그리디>
    //let input = Int(readLine()!)!
    //let dis = readLine()!.split(separator: " ").map { Int(String($0))! }
    //let cost = readLine()!.split(separator: " ").map { Int(String($0))! }
    //var result = 0
    //var currentCost = cost[0]
    //for i in 0..<input-1 {
    //    if currentCost > cost[i] {
    //        currentCost = cost[i]
    //    }
    //    result += currentCost * dis[i]
    //}
    //print(result)
    
}
