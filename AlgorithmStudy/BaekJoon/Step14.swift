//
//  Ch14.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/16.
//

import Foundation

/**
 개편 이전 14단계
 */

fileprivate class Step14 {

    //MARK: 1085
    //var n = readLine()!.split(separator: " ").map{Int($0)!}
    //n[2] = n[2] - n[0]
    //n[3] = n[3] - n[1]
    //print(n.min()!)
    
    //MARK: 3009
    //var x = [Int]()
    //var y = [Int]()
    //for _ in 0..<3 {
    //    let n = readLine()!.split(separator: " ").map{Int($0)!}
    //    if x.contains(n[0]) && !x.isEmpty { x.remove(at: x.firstIndex(of: n[0])!) }
    //    else { x.append(n[0])}
    //    if y.contains(n[1]) && !x.isEmpty { y.remove(at: y.firstIndex(of: n[1])!) }
    //    else { y.append(n[1]) }
    //}
    //print(x[0],y[0])
    
    
    //MARK: 4153
    //while true {
    //    var n = readLine()!.split(separator: " ").map {Int($0)!}
    //    if n[0] == 0 && n[1] == 0 && n[2] == 0 { break }
    //    let m = n.max()
    //    n.remove(at: n.firstIndex(of: n.max()!)!)
    //    n[0] = n[0]*n[0]
    //    n[1] = n[1]*n[1]
    //    if m!*m! == n[0] + n[1] { print("right")}
    //    else { print("wrong")}
    //}
    
    //MARK: 2477
    //var l = [(Int,Int)]()
    //var h = 0, w = 0
    //var sh = 0, sw = 0
    //var num = Int(readLine()!)
    //for _ in 0..<6 {
    //    let n = readLine()!.split(separator: " ").map{Int($0)!}
    //    l.append((n[0],n[1]))
    //    if n[0] == 1 || n[0] == 2 { w = max(w, n[1]) }
    //    else if n[0] == 3 || n[0] == 4 { h = max(h, n[1]) }
    //}
    //var n = l.count
    //for i in 1..<l.count+3 {
    //    if l[(i-1)%n].0 == l[(i+1)%n].0 && l[i%n].0 == l[(i+2)%n].0 {
    //        sh = l[i%n].1
    //        sw = l[(i+1)%n].1
    //        break
    //    }
    //}
    //print((w*h - sh*sw)*num!)
    
    //MARK: 3053
    //let n = Double(readLine()!)!
    //print(n*n*Double.pi)
    //print(n*n*2)
    
    //MARK: 1002
    //for _ in 0..<Int(readLine()!)! {
    //    let n = readLine()!.split(separator: " ").map { Double($0)! }
    //    let l = sqrt(abs(pow((n[3] - n[0]), 2)+pow((n[4] - n[1]), 2)))
    //    if n[0] == n[3] && n[1] == n[4] && n[2] == n[5] { print(-1) }
    //    else if l < n[2]+n[5] && l > abs(n[2]-n[5]) { print(2) }
    //    else if l == n[2]+n[5] || l == abs(n[2]-n[5]) { print(1) }
    //    else { print(0) }
    //}
}
