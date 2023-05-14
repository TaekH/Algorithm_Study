//
//  Ch9.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/05.
//

import Foundation

/**
 2차원 배열
 
 개편 이전 단계
 */
fileprivate class Step9_Matrix {
    
    //MARK: 2738
    //let n = readLine()!.split(separator: " ").map{ Int($0)! }
    //var input1: [[Int]] = Array(repeating: Array(repeating: 1, count: n[1]), count: n[0])
    //var input2: [[Int]] = Array(repeating: Array(repeating: 1, count: n[1]), count: n[0])
    //for i in 0..<n[0] {
    //    input1[i] = readLine()!.split(separator: " ").map{ Int($0)!}
    //}
    //for i in 0..<n[0] {
    //    input2[i] = readLine()!.split(separator: " ").map{Int($0)!}
    //}
    //for i in 0..<n[0] {
    //    for j in 0..<n[1] {
    //        input1[i][j] = input1[i][j] + input2[i][j]
    //        print(input1[i][j], terminator: " ")
    //    }
    //    print("")
    //}
    
    //MARK: 2566
    //var input = Array(repeating: Array(repeating: 0, count: 9), count: 9)
    //var max = 0
    //var x = 0, y = 0
    //for i in 0..<9 {
    //    input[i] = readLine()!.split(separator: " ").map { Int($0)! }
    //}
    //for i in 0..<9 {
    //    if max <= input[i].max()! {
    //        max = input[i].max()!
    //        x = i + 1
    //        y = input[i].firstIndex(of: max)! + 1
    //    }
    //}
    //print(max)
    //print(x, y)
    
    
    //MARK: 2563
    //var bg: [[Int]] = Array(repeating: [Int](repeating: 0, count: 100), count: 100)
    //let n = Int(readLine()!)!
    //var area = 0
    //for _ in 0..<n {
    //    let m = readLine()!.split(separator: " ").map { Int($0)! }
    //    for i in m[0]..<m[0]+10 {
    //        for j in m[1]..<m[1]+10 {
    //            bg[i][j] = 1
    //        }
    //    }
    //}
    //for i in bg where i.contains(1) {
    //    for j in 0..<i.count {
    //        if i[j] == 1 {
    //            area += 1
    //        }
    //    }
    //}
    //print(area)
    
    //MARK: 2563 Refactoring
    //var bg: [[Int]] = Array(repeating: [Int](repeating: 0, count: 100), count: 100)
    //let n = Int(readLine()!)!
    //var area = 0
    //for _ in 0..<n {
    //    let m = readLine()!.split(separator: " ").map { Int($0)! }
    //    for i in m[0]..<m[0]+10 {
    //        for j in m[1]..<m[1]+10 {
    //            if bg[i][j] != 1 {
    //                bg[i][j] = 1
    //                area += 1
    //            }
    //        }
    //    }
    //}
    //print(area)
}
