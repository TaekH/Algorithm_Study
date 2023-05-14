//
//  Etc.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/05/15.
//

import Foundation

/**
 단계 별 문제 개편으로 인해 사라진 문제들 모음
 */

fileprivate class Etc {
    //MARK: 2981
    //import Foundation
    //var a = [Int]()
    //var tmp = [Int]()
    //for _ in 0 ..< Int(readLine()!)! {
    //    a.append(Int(readLine()!)!)
    //}
    //func gcd(_ a: Int, _ b: Int) -> Int {
    //    if b == 0 { return a }
    //    else { return gcd(b, a % b)}
    //}
    //
    //func cd(_ a: Int) -> [Int] {
    //    var result = [Int]()
    //    for i in 2..<Int(sqrt(Double(a))+1) {
    //        if a % i == 0 {
    //            result.append(i)
    //            result.append(a / i)
    //        }
    //    }
    //    result.append(a)
    //    return result
    //}
    //
    //for i in 1..<a.count {
    //    tmp.append(abs(a[i]-a[i-1]))
    //}
    //var n = tmp[0]
    //for i in 1..<tmp.count {
    //    n = gcd(n, tmp[i])
    //}
    //var result = Array(Set(cd(n))).sorted()
    //for result in result {
    //    print(result, terminator: " ")
    //}

    //MARK: 3036
    //func gcd(_ a: Int, _ b: Int) -> Int {
    //    if b == 0 { return a }
    //    else { return gcd(b, a % b)}
    //}
    //let n = Int(readLine()!)!
    //let c = readLine()!.split(separator: " ").map { Int($0)! }
    //for i in 1..<c.count {
    //    let gcd = gcd(c[0], c[i])
    //    print("\(c[0]/gcd)/\(c[i]/gcd)")
    //}

    //MARK: 11050
    //func bc(_ a: Int, _ b: Int) -> Int {
    //    if b == 0 || b == a { return 1 }
    //    return bc(a-1, b) + bc(a-1, b-1)
    //}
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //print(bc(n[0], n[1]))

    //MARK: 11051
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //var arr = Array(repeating: Array(repeating: 0, count: n[0]+1), count: n[0]+1)
    //for i in 0...n[0] {
    //    for j in 0...i {
    //        if j == 0 || j == 0 || i == j {
    //            arr[i][j] = 1
    //        } else { arr[i][j] = (arr[i-1][j-1]%10007 + arr[i-1][j]%10007)%10007 }
    //    }
    //}
    //print(arr[n[0]][n[1]])

    //MARK: 1010
    //var result = Array(repeating: Array(repeating: 0, count: 31), count: 31)
    //func bridge(_ a: Int, _ b: Int) -> Int {
    //    if a == 0 || b == 0 || a == b {
    //        return 1
    //    }
    //    if result[a][b] != 0 { return result[a][b] }
    //    result[a][b] = bridge(a-1, b-1) + bridge(a-1, b)
    //    return result[a][b]
    //}
    //for _ in 0..<Int(readLine()!)! {
    //    let n = readLine()!.split(separator: " ").map{Int($0)!}
    //    print(bridge(n[1], n[0]))
    //}

    //MARK: 9375
    //for _ in 0..<Int(readLine()!)! {
    //    var result = 1
    //    var wear = [String:Int]()
    //    for _ in 0..<Int(readLine()!)! {
    //        let n = readLine()!.split(separator: " ")
    //        if wear[String(n.last!)] == nil {
    //            wear.updateValue(1, forKey: String(n.last!))
    //        } else { wear[String(n.last!)]! += 1 }
    //    }
    //    for wear in wear {
    //        result *= (wear.value+1)
    //    }
    //    result = result - 1
    //    print(result)
    //}

    //MARK: 1676
    //let n = Int(readLine()!)!
    //print(n/5 + n/25 + n/125)

    //MARK: 2004
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //let r = n[0]-n[1]
    //var i = 5, j = 2
    //var a = 0, b = 0
    //func get(_ a: Int) -> Int {
    //    var result = 0
    //    var i = a
    //    while i <= n[0] {
    //        result += n[0]/i
    //        result -= n[1]/i
    //        result -= r/i
    //        i *= a
    //    }
    //    return result
    //}
    //print(min(get(5), get(2)))

}
