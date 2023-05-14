//
//  Step8.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/04.
//

import Foundation

/**
 약수, 배수와 소수
 
 개편 이전 단계
*/
fileprivate class Step8_Divisor_Multiple_PrimeNumber {
    //MARK: 1978
    //let n = Int(readLine()!)!
    //let num = readLine()!.split(separator: " ").map{Int($0)!}
    //var count = 0
    //for i in num {
    //    if i != 1 {
    //        for j in 1..<i-1 {
    //            if i % (i - j) == 0 { count += 1; break}
    //        }
    //    }
    //    else { count += 1 }
    //}
    //print(n-count)
    
    //MARK: 1978
    //let n = Int(readLine()!)!
    //let num = readLine()!.split(separator: " ").map {Int($0)!}
    //var count = 0
    //
    //func isDecimal(_ i: Int) -> Int {
    //    if i != 1 {
    //        for j in 2..<i {
    //            if i % j == 0 { return 0 }
    //        }
    //    }
    //    else { return 0 }
    //    return 1
    //}
    //
    //for i in num {
    //    count += isDecimal(i)
    //}
    //print(count)
    
    
    //MARK: 2581
    //let m = Int(readLine()!)!
    //let n = Int(readLine()!)!
    //var arr = [Int]()
    //var count = 0
    //
    //func isDecimal(_ i: Int) -> Bool {
    //    if i != 1 {
    //        for j in 2..<i {
    //            if i % j == 0 { return false }
    //        }
    //    }
    //    else { return false }
    //    return true
    //}
    //
    //for i in m...n {
    //    if isDecimal(i) { arr.append(i) }
    //}
    //if arr.isEmpty { print(-1) }
    //else { print(arr.reduce(0, +)); print(arr[0]) }
    
    //MARK: 11653
    //var n = Int(readLine()!)!
    //var count = 2
    //while n > 1 {
    //    guard count * count <= n else {
    //        print(n)
    //        break
    //    }
    //    if n % count == 0 {
    //        print(count)
    //        n /= count
    //    }
    //    else { count += 1}
    //}
    
    //MARK: 1929
    //let n = readLine()!.split(separator: " ").map {Int($0)!}
    //var arr  = Array(repeating: true, count: n[1]+1)
    //arr[1] = false
    //for i in 2...n[1] {
    //    if !arr[i] {continue}
    //    for j in stride(from: i + i, through: n[1], by: i) {
    //        arr[j] = false
    //    }
    //}
    //for i in n[0]...n[1] {
    //    if arr[i] { print(i)}
    //}
    
    //MARK: 4948 베르트랑 공준
    //var limit = 123456 * 2
    //var arr = Array(repeating: true, count: limit + 1)
    //
    //arr[1] = false
    //for i in 2..<arr.count {
    //    if !arr[i] { continue }
    //    for j in stride(from: i + i, through: limit, by: i) {
    //        arr[j] = false
    //    }
    //}
    //while true {
    //    var count = 0
    //    let n = Int(readLine()!)!
    //    if n == 0 { break }
    //    for i in n+1...n*2 {
    //        if arr[i] { count += 1 }
    //    }
    //    print(count)
    //}
    
    //MARK: 9020 골드바흐의 추측 // 1차 제출 시간 겁나 긴 버전
    //let n = Int(readLine()!)!
    //var arr = Array(repeating: true, count: 10000 + 1)
    //
    //arr[1] = false
    //for i in 2..<arr.count {
    //    if !arr[i] { continue }
    //    for j in stride(from: i + i, through: 10000, by: i) {
    //        arr[j] = false
    //    }
    //}
    //for _ in 0..<n {
    //    var arr2 = [Int]()
    //    let n1 = Int(readLine()!)!
    //
    //    for i in 0...n1 {
    //        if arr[i] { arr2.append(i) }
    //    }
    //    var lowest = n1
    //    var decimal = 0
    //    for j in 0..<arr2.count {
    //        if arr2.contains(n1 - arr2[j]) && lowest > abs(n1 - arr2[j] * 2) { lowest = abs(n1 - arr2[j] * 2); decimal = arr2[j] }
    //    }
    //    print(decimal, n1 - decimal)
    //}
    
    //MARK: 9020 - 빠른 버전
    //let n = Int(readLine()!)!
    //var arr = Array(repeating: true, count: 10000 + 1)
    //
    //arr[1] = false
    //for i in 2..<arr.count {
    //    if !arr[i] { continue }
    //    for j in stride(from: i + i, through: 10000, by: i) {
    //        arr[j] = false
    //    }
    //}
    //for _ in 0..<n {
    //    let n1 = Int(readLine()!)!
    //    for j in 0 ... n1/2 {
    //        if arr[n1/2 - j] == true && arr[n1/2 + j] == true {
    //            print(n1/2-j, n1/2+j)
    //            break
    //        }
    //    }
    //}
    
    //MARK: 5086
    //while(true) {
    //    let n = readLine()!.split(separator: " ").map { Int($0)! }
    //    if n[0] == 0 && n[1] == 0 { break }
    //    if n[1] % n[0] == 0 { print("factor") }
    //    else if n[0] % n[1] == 0 { print("multiple") }
    //    else { print("neither") }
    //}
    
    //MARK: 1037
    //let n = Int(readLine()!)!
    //let k = readLine()!.split(separator: " ").map { Int($0)! }
    //print(k.max()! * k.min()!)
    
    //MARK: 2609
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //func gcd(_ a: Int, _ b: Int) -> Int {
    //    if b == 0 { return a }
    //    else { return gcd(b, a % b)}
    //}
    //func lcm(_ a: Int, _ b: Int) -> Int {
    //    return a * b / gcd(a, b)
    //}
    //print(gcd(n[0], n[1]))
    //print(lcm(n[0], n[1]))
    
    //MARK: 1934
    //let n = Int(readLine()!)!
    //func gcd(_ a: Int, _ b: Int) -> Int {
    //    if b == 0 { return a }
    //    else { return gcd(b, a % b)}
    //}
    //func lcm(_ a: Int, _ b: Int) -> Int {
    //    return a * b / gcd(a, b)
    //}
    //for _ in 0 ..< n {
    //    let m = readLine()!.split(separator: " ").map { Int($0)! }
    //    print(lcm(m[0], m[1]))
    //}
}
