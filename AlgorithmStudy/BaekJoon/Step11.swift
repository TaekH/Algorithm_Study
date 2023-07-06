//
//  Ch11.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/09.
//

import Foundation

/**
 개편 이전 11단계
 */

fileprivate class Step11 {
    
    //MARK: 10872 - 재귀 팩토리얼
    //func f(_ n: Int) -> Int{
    //    if n == 0 || n == 1 { return 1 }
    //    return n * f(n-1)
    //}
    //print(f(Int(readLine()!)!))
    
    //MARK: 10870 - 피보나치 수열
    //func fibo(_ n: Int) -> Int {
    //    if n > 1 {
    //        return fibo(n-1) + fibo(n-2)
    //    }
    //    else if n == 0 {
    //        return 0
    //    }
    //    else { return 1 }
    //}
    //print(fibo(Int(readLine()!)!))
    
    //MARK: 25501 - 재귀의 귀재
    //var count = 0
    //func recursion(_ n: [Character], _ l: Int, _ r: Int) -> Int {
    //    count += 1
    //    if(l >= r) { return 1 }
    //    else if n[l] != n[r] { return 0 }
    //    else { return recursion(n, l+1, r-1) }
    //}
    //func isPalindrome(_ n: [Character]) -> Int {
    //    return recursion(n, 0, n.count-1)
    //}
    //for _ in 0..<Int(readLine()!)! {
    //    count = 0
    //    print(isPalindrome(Array(readLine()!)), count)
    //}
    
    //MARK: 24060 - 병합정렬1 - 임시
    //func merge(_ al: [Int], _ ar: [Int]) -> [Int] {
    //    var l = al, r = ar
    //    var list = [Int]()
    //    while !l.isEmpty && !r.isEmpty {
    //        if l.first! < r.first! {
    //            print(l, r)
    //            print(l.first, r.first)
    //            list.append(l.removeFirst())
    //            print(list, "\n")
    //
    //        }else {
    //            print(l, r)
    //            print(l.first, r.first)
    //            list.append(r.removeFirst())
    //            print(list, "\n")
    //
    //        }
    //    }
    //    list.append(contentsOf: l+r)
    //    return list
    //}
    //func divide(_ a:[Int]) -> [Int] {
    //    if a.count <= 1 { return a }
    //    let m = a.count / 2
    //    let al = [Int](a[0..<m])
    //    let ar = [Int](a[m..<a.count])
    //    return merge(divide(al), divide(ar))
    //}
    //print(divide(readLine()!.split(separator: " ").map { Int($0)! }))
    
    //MARK: 24060 - 병합정렬1
    //func mergeSort(_ array: [Int]) -> [Int] {
    //    if array.count <= 1 { return array }
    //    let center = (array.count+1) / 2
    //    return merge(mergeSort(Array(array[0..<center])), mergeSort(Array(array[center..<array.count])))
    //}
    //func merge(_ left: [Int],_ right: [Int]) -> [Int] {
    //    var left = left
    //    var right = right
    //    var result: [Int] = []
    //
    //    while !left.isEmpty && !right.isEmpty {
    //        if left[0] < right[0] {
    //            a.append(left[0])
    //            result.append(left.removeFirst())
    //        } else {
    //            a.append(right[0])
    //            result.append(right.removeFirst())
    //        }
    //    }
    //    result.append(contentsOf: left + right)
    //
    //    return result
    //}
    //var a = [Int]()
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //let A = mergeSort(readLine()!.split(separator: " ").map { Int($0)! })
    //print(a.count >= n[1] ? a[n[1]-1] : -1)
    
    //MARK: 24060 - 병합정렬1
    //func mergeSort(_ array: [Int]) -> [Int] {
    //    if array.count <= 1 { return array }
    //    let center = (array.count+1) / 2
    //    let left = mergeSort(Array(array[0..<center]))
    //    let right = mergeSort(Array(array[center..<array.count]))
    //    var i = 0, j = 0
    //    var result = [Int]()
    //
    //    while i < left.count && j < right.count {
    //        if left[i] < right[j] {
    //            a.append(left[i])
    //            result.append(left[i])
    //            i += 1
    //        } else {
    //            a.append(right[j])
    //            result.append(right[j])
    //            j += 1
    //        }
    //    }
    //    while i < left.count {
    //        a.append(left[i])
    //        result.append(left[i])
    //        i += 1
    //    }
    //    while j < right.count {
    //        a.append(right[j])
    //        result.append(right[j])
    //        j += 1
    //    }
    //    i =
    //
    //    return result
    //}
    //var a = [Int]()
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //let A = mergeSort(readLine()!.split(separator: " ").map { Int($0)! })
    //print(a.count >= n[1] ? a[n[1]-1] : -1)
    
    //MARK: 2447 별찍기..
    //func setStar(_ n: Int, _ s: [String]) {
    //    if n == 1 {
    //        s.forEach{print($0)}
    //        return
    //    }
    //    let r1 = s.map { $0 + $0 + $0 }
    //    let r2 = s.map { $0 + String(repeating: " ", count: $0.count) + $0}
    //    setStar(n/3, r1 + r2 + r1)
    //}
    //setStar(Int(readLine()!)!, ["*"])
    
    //MARK: 11729 하노이탑
    //func hanoi(_ n: Int, _ f: Int, _ t: Int) {
    //    if n == 1 {
    //        print(f,t)
    //    } else {
    //        hanoi(n-1, f, (6-f-t))
    //        print(f, t)
    //        hanoi(n-1, (6-f-t), t)
    //    }
    //}
    //var n = Int(readLine()!)!
    //print(pow(2,n)-1)
    //hanoi(n, 1, 3)
    
    //MARK: 27433 <팩토리얼 2>
    //func facto(_ n: Int) -> Int {
    //if n == 0 { return 1 }
    //return n * facto(n-1)
    //}
    //print(facto(Int(readLine()!)!))
}
