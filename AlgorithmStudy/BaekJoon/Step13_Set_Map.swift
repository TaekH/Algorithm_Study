//
//  Ch13.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/16.
//

import Foundation

/**
 집합과 맵
 
 개편 이전 단계
 */

fileprivate class Step13_Set_Map {
    
    
    //MARK: 10815
    //let n = Int(readLine()!)!
    //let i = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    //let m = Int(readLine()!)!
    //var j = readLine()!.split(separator: " ").map { Int($0)! }
    //var result = Array(repeating: "0", count: m)
    //for (index, num) in j.enumerated() {
    //    var l = 0, r = n-1
    //    while l <= r {
    //        let m = (l+r) / 2
    //        if i[m] == num {
    //            result[index] = "1"
    //        }
    //        if i[m] < num {
    //            l = m+1
    //        }
    //        else { r = m-1}
    //    }
    //}
    //print(result.joined(separator: " "))
    
    //MARK: 14425
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //var s = [String](repeating: "", count: n[0])
    //var count = 0
    //for i in 0..<n[0] {
    //    s[i] = readLine()!
    //}
    //s.sort()
    //
    //for _ in 0..<n[1] {
    //    let input = readLine()!
    //    var l = 0, r = n[0]-1
    //    while l <= r {
    //        let m = (l+r) / 2
    //        if s[m] == input { count += 1}
    //        if s[m] < input { l = m+1 }
    //        else { r = m-1 }
    //    }
    //}
    //print(count)
    
    //MARK: 14425 refactoring
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //var s = Set<String>()
    //for _ in 0..<n[0] {
    //    s.insert(readLine()!)
    //}
    //var count = 0
    //for _ in 0..<n[1] {
    //    if s.contains(readLine()!) { count += 1 }
    //}
    //print(count)
    
    //MARK: 1620
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //var s = [String]()
    //var dic: [String:Int] = [:]
    //var result = [String]()
    //for i in 0..<n[0] {
    //    let pokemon = readLine()!
    //    dic[pokemon] = i
    //    s.append(pokemon)
    //}
    //for _ in 0..<n[1] {
    //    let input = readLine()!
    //    if Int(input) != nil {
    //        result.append(s[Int(input)!-1])
    //    }
    //    else { result.append(String(dic[input]!+1)) }
    //}
    //print(result.joined(separator: "\n"))
    
    //MARK: 10816
    //let n = Int(readLine()!)!
    //let i = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    //let m = Int(readLine()!)!
    //var j = readLine()!.split(separator: " ").map { Int($0)! }
    //var dic = [Int:Int]()
    //var result = [Int]()
    //for k in i {
    //    if dic[k] == nil { dic[k] = 1 }
    //    else { dic[k]! += 1}
    //}
    //for l in j {
    //    if dic[l] == nil { result.append(0) }
    //    else { result.append(dic[l]!)}
    //}
    //print(result.map{ String($0) }.joined(separator: " "))
    
    //MARK: 1764
    //let n = readLine()!.split(separator: " ").map{Int($0)!}
    //var a = Set<String>()
    //var b = Set<String>()
    //for _ in 0..<n[0] {
    //    a.insert(readLine()!)
    //}
    //for _ in 0..<n[1] {
    //    let name = readLine()!
    //    if a.contains(name) { b.insert(name) }
    //}
    //print(b.count)
    //print(b.sorted().joined(separator: "\n"))
    
    //MARK: 1269
    //let n = readLine()!.split(separator: " ").map{Int($0)!}
    //let a: Set<Int> = Set(readLine()!.split(separator: " ").map{Int($0)!})
    //let b: Set<Int> = Set(readLine()!.split(separator: " ").map{Int($0)!})
    //print(a.subtracting(b).count + b.subtracting(a).count)
    
    //MARK: 11478
    //let s = Array(readLine()!)
    //var a = Set<String>()
    //var sub = ""
    //for i in 0..<s.count {
    //    for j in i..<s.count {
    //        sub += String(s[j])
    //        a.insert(sub)
    //    }
    //    sub = ""
    //}
    //print(a.count)
    
}
