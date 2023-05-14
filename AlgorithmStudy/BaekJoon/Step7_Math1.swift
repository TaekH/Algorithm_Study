//
//  Ch7.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/03.
//

import Foundation

/**
 일반수학 1
 
 개편 이전 단계
 */

fileprivate class Step7_Math1 {
    //MARK: 2292
    //let n = Int(readLine()!)!
    //var sum = 1
    //var count = 1
    //for i in 1...n {
    //    if n == 1 {
    //        print("\(count)")
    //        break
    //    }
    //    if n <= sum {
    //        print("\(count)")
    //        break
    //    }
    //    sum += 6 * i
    //    count += 1
    //}
    //
    //MARK: 1193
    //https://sapjilkingios.tistory.com/entry/Swift-백준-1193번분수찾기
    //var r = Int(readLine()!)!
    //var c = 1
    //while true {
    //    r = r - c
    //    if r <= 0 {
    //        break
    //    }
    //    c += 1
    //}
    //if c % 2 == 1 {
    //    print("\(-r + 1)/\(r + c)")
    //} else {
    //    print("\(r + c)/\(-r + 1)")
    //}
    //
    //MARK: 2869 - 시간초과
    //let n = readLine()!.split(separator: " ").map{Int($0)!}
    //var location = 0
    //var count = 0
    //while true {
    //    count += 1
    //    if location+n[0] >= n[2] { break }
    //    location += (n[0]-n[1])
    //}
    //print(count)
    
    //MARK: 2869
    //var n = readLine()!.split(separator: " ").map{Double($0)!}
    //print(Int(ceil((n[2]-n[1])/(n[0]-n[1]))))
    
    //MARK: 10250
    //
    //for _ in 0..<Int(readLine()!)! {
    //    var count = 0
    //    var n = readLine()!.split(separator: " ").map{Int($0)!}
    //    while true {
    //        count += 1
    //        if n[2] <= n[0] {
    //            break
    //        }
    //        n[2] -= n[0]
    //    }
    //    print(n[2]*100 + count)
    //}
    
    //MARK: 2775
    //let n = Int(readLine()!)!
    //var arr: [[Int]] = Array(repeating: Array(repeating: 1, count: 15), count: 15)
    //for _ in 0 ..< n {
    //    let k = Int(readLine()!)!
    //    let n = Int(readLine()!)!
    //
    //    for i in 1...n {
    //        arr[0][i] = i + 1
    //    }
    //    for i in 1...k {
    //        for j in 1...n {
    //            arr[i][j] = arr[i][j-1] + arr[i-1][j]
    //        }
    //    }
    //    print(arr[k][n-1])
    //}
    
    //MARK: 2839
    //var n = Int(readLine()!)!
    //var count = 0
    //while n >= 3 {
    //    if n % 5 == 0 {
    //        count += 1
    //        n -= 5
    //    }
    //    else {
    //        n -= 3
    //        count += 1
    //    }
    //}
    //print(n == 0 ? count : -1)
    
    //MARK: 10757
    //let n = readLine()!.split(separator: " ")
    //var arr1 = Array(n[0].map {Int(String($0))!}.reversed())
    //var arr2 = Array(n[1].map {Int(String($0))!}.reversed())
    //var result = [Int]()
    //var isLonger = arr1.count > arr2.count
    //var zeroArray = Array(repeating: 0, count: abs(arr1.count - arr2.count))
    //var one = 0
    //arr1 = isLonger ? arr1 : arr1 + zeroArray
    //arr2 = isLonger ? arr2 + zeroArray : arr2
    //for i in 0..<arr2.count {
    //    if i == arr2.count - 1 {
    //        result.append(arr1[i] + arr2[i] + one)
    //    }
    //    else { result.append((arr1[i] + arr2[i] + one) % 10) }
    //    one = (arr1[i] + arr2[i] + one) / 10
    //
    //}
    //print((result.map{String($0)}).reversed().joined())
}
