//
//  Step24.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/05/15.
//

import Foundation

/**
 누적 합
 */

fileprivate class Step24_PrefixSum {
    
    //MARK: 백준 11659 구간합 구하기
    //let n = readLine()!.split(separator: " ").map { Int(String($0))! }
    //let num = readLine()!.split(separator: " ").map { Int(String($0))! }
    //var partialSum = [0]
    //var sum = 0
    //for i in 0..<n[0] {
    //    sum += num[i]
    //    partialSum.append(sum)
    //}
    //for i in 0..<n[1] {
    //    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    //    print(partialSum[input[1]] - partialSum[input[0]-1])
    //}

    //MARK: 백준 2559 수열
    //let input = readLine()!.split(separator: " ").map { Int($0)! }
    //let num = readLine()!.split(separator: " ").map { Int($0)! }
    //var arr = Array(repeating: 0, count: input[0])
    //var first = num[0...input[1]-1]
    //arr[0] = first.reduce(0, +)
    //var sum = 0
    //var count = 0
    //for i in 1..<input[0] {
    //    if i - input[1] < -1 { break }
    //    arr[i] = arr[i-1] + num[i+input[1]-1] - num[i-1]
    //}
    //print(arr.max()!)

    //MARK: 백준 2559 수열 <누적합으로 구하기>
    //let input = readLine()!.split(separator: " ").map { Int($0)! }
    //var num = [0] + readLine()!.split(separator: " ").map { Int($0)! }
    //for i in 1...input[0] {
    //    num[i] += num[i-1]
    //}
    //var result = Int.min
    //for i in 0...input[0]-input[1] {
    //    result = max(result, num[i+input[1]] - num[i])
    //}
    //print(result)
}
