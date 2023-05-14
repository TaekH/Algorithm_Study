//
//  Ch10.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/06.
//

import Foundation

/**
 정렬
 
 개편 이전 단계
*/

fileprivate class Step10_Sorting {
    //MARK: 2750
    //var m = [Int]()
    //for _ in 0..<(Int(readLine()!)!) {
    //    m.append(Int(readLine()!)!)
    //}
    //m.sort()
    //for i in m {
    //    print(i)
    //}
    
    //MARK: 2587
    //var m = [Int]();for _ in 0..<5 { m.append(Int(readLine()!)!) };m.sort();print(m.reduce(0, +)/5);print(m[2])
    
    //MARK: 25305
    //let m = readLine()!.split(separator: " ").map { Int($0)! }
    //let a = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
    //print(a[m[1]-1])
    
    //MARK: 2751
    //var m = [Int]()
    //for _ in 0..<Int(readLine()!)! {
    //    m.append(Int(readLine()!)!)
    //}
    //m.sort()
    //for i in m { print(i) }
    
    //MARK: 10989 - 계수정렬 메모리 초과
    //var n = [Int]()
    //var idx = 0
    //for _ in 0..<Int(readLine()!)! {
    //    n.append(Int(readLine()!)!)
    //}
    //var count = [Int](repeating: 0, count: n.count+1)
    //var result = [Int](repeating: 0, count: n.count)
    //for i in n { count[i] += 1 }
    //for j in 1..<count.count { count[j] += count[j-1] }
    //for k in n {
    //    idx = count[k]
    //    result[idx - 1] = k
    //    count[k] -= 1
    //}
    //print(result.map { String($0)}.joined(separator: "\n") )
    
    //MARK: 2108 - 통계학
    //var n = [Int]()
    //let m = Int(readLine()!)!
    //var dic = [Int:Int]()
    //for i in 0..<Int(m) {
    //    n.append(Int(readLine()!)!)
    //    dic[Int(n[i]), default: 0] += 1
    //}
    //let maxValue = dic.max(by: {$0.value < $1.value})!.value
    //var mode = dic.filter({ $0.value == maxValue}).keys.sorted()
    //
    //n.sort()
    //print(Int(round(Double(n.reduce(0, +))/Double(m))))
    //print(n[m/2])
    //print(mode.count > 1 ? mode[1] : mode[0])
    //print(n.max()! - n.min()!)
    
    //MARK: 1427
    //var n = Array(readLine()!).map{ Int(String($0))! };n.sort(by: >);print(n.map { String($0)}.joined())
    
    //MARK: 11650
    //var m = [(Int,Int)]()
    //for _ in 0..<Int(readLine()!)! {
    //    let b = readLine()!.split(separator: " ").map { Int($0)! }
    //    m.append((b[0],b[1]))
    //}
    //m.sort(by: { $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0 })
    //for i in 0..<m.count {
    //    print(m[i].0, m[i].1)
    //}
    
    //MARK: 11651
    //var m = [(Int,Int)]()
    //for _ in 0..<Int(readLine()!)! {
    //    let b = readLine()!.split(separator: " ").map { Int($0)! }
    //    m.append((b[0],b[1]))
    //}
    //m.sort(by: { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 })
    //for i in 0..<m.count {
    //    print(m[i].0, m[i].1)
    //}
    
    //MARK: 1181
    //var s = [[Character]]()
    //for _ in 0..<Int(readLine()!)! {
    //    s.append(Array(readLine()!))
    //}
    //var set = Set(s)
    //var sortedS = Array(set)
    //func sortChar(_ a: [Character], _ b: [Character]) -> Bool {
    //    for i in 0..<a.count {
    //        if a[i] > b[i] {
    //            return false
    //        }
    //        else if a[i] == b[i] { continue }
    //        else { return true}
    //    }
    //    return false
    //}
    //sortedS.sort(by: { $0.count == $1.count ? sortChar($0, $1) : $0.count < $1.count })
    //for i in sortedS {
    //    print(i.map{String($0)}.joined())
    //}
    
    //MARK: 10814
    //var info = [(Int,String)]()
    //for _ in 0..<Int(readLine()!)! {
    //    let n = readLine()!.split(separator: " ")
    //    info.append((Int(n[0])!, String(n[1])))
    //}
    //info.sort(by: { $0.0 == $1.0 ? false : $0.0 < $1.0 })
    //for i in info {
    //    print(i.0, i.1)
    //}
    
    //MARK: 18870
    //var dic = [Int:Int]()
    //let m = Int(readLine()!)!
    //var n = readLine()!.split(separator: " ").map{Int($0)!}
    //var a = 0
    //for i in n.sorted() {
    //    if dic[i] == nil {
    //        dic[i] = a
    //        a += 1
    //    }
    //}
    //for i in n {
    //    print(dic[i]!, terminator: " ")
    //}
}
