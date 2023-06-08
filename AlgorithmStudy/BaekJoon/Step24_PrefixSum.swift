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
    
    //MARK: 백준 16139 인간-컴퓨터 상호작용
    //let str = readLine()!.map { $0 }
    //let num = Int(readLine()!)!
    //var dp = Array(repeating: Array(repeating: 0, count: 26), count: str.count)
    //dp[0][Int(str[0].asciiValue!)-97] = 1
    //
    //for i in 1 ..< str.count {
    //    dp[i][Int(str[i].asciiValue!) - 97] = 1
    //    for j in 0 ..< 26 {
    //        dp[i][j] += dp[i-1][j]
    //    }
    //}
    //for _ in 0..<num {
    //    let input = readLine()!.split(separator: " ").map{ ($0) }
    //    let s = Int(String(input[1]))!
    //    let e = Int(String(input[2]))!
    //    let idx = Int(Character(String(input[0])).asciiValue!)-97
    //    if s <= 0 {
    //        print(dp[e][idx])
    //    }
    //    else {
    //        print(dp[e][idx] - dp[s-1][idx])
    //    }
    //}
    
    //MARK: 백준 10986 나머지합 실패
    //let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    //var n = readLine()!.split(separator: " ").map { Int(String($0))! }
    //var array = Array(repeating: 0, count: n.count)
    //var tmp = Array(repeating: 0, count: input[1])
    //array[0] = n[0]
    //tmp[ n[0]%input[1] ] += 1
    //var result = 0
    //for i in 1..<n.count {
    //    array[i] = n[i] + array[i-1]
    //    array[i] %= input[1]
    //    if array[i] == 0 { result += 1 }
    //    tmp[array[i]] += 1
    //}
    //for i in 0..<input[1] {
    //        result += (tmp[i] * (tmp[i]-1)) / 2
    //}
    //print(result)

    //MARK: 백준 10986 나머지합
    //let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    //var n = readLine()!.split(separator: " ").map { Int(String($0))! }
    //var array = Array(repeating: 0, count: n.count)
    //var tmp = Array(repeating: 0, count: input[1])
    //var result = 0
    //for i in 0..<n.count {
    //    if i == 0 { array[i] = n[i] }
    //    else {
    //        array[i] = n[i] + array[i-1]
    //    }
    //    tmp[array[i] % input[1]] += 1
    //}
    //for i in 0..<input[1] {
    //        result += (tmp[i] * (tmp[i]-1)) / 2
    //}
    //print(result + tmp[0])

}
