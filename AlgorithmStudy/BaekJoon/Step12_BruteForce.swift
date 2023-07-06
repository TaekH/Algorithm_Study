//
//  Ch12.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/16.
//

import Foundation

/**
브루트포스
 */

class Step12_BruteForce {
    //MARK: 2798 블랙잭
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //let m = readLine()!.split(separator: " ").map { Int($0)! }
    //var max = 0
    //for i in 0..<m.count {
    //    for j in i+1..<m.count {
    //        for k in j+1..<m.count {
    //            if m[i]+m[j]+m[k] >= max && m[i]+m[j]+m[k] <= n[1] {
    //                max = m[i]+m[j]+m[k]
    //            }
    //        }
    //    }
    //}
    //print(max)
    
    //MARK: 2231 분해합
    //let n = Int(readLine()!)!
    //var m = 0
    //for i in 0 ..< n {
    //    var tmp = 0
    //    var j = i
    //    while j != 0 {
    //        tmp += j % 10
    //        j /= 10
    //    }
    //    if n == (tmp + i) {
    //        m = i
    //        break
    //    }
    //}
    //print(m)
    
    //MARK: 7568 덩치
    //let n = Int(readLine()!)!
    //var m = [(Int, Int)]()
    //var a = [Int]()
    //for _ in 0..<n {
    //    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    //    m.append((tmp[0], tmp[1]))
    //}
    //for i in 0..<m.count {
    //    var count = 1
    //    for j in 0..<m.count {
    //        if m[i].0 < m[j].0 && m[i].1 < m[j].1 {
    //            count += 1
    //        }
    //    }
    //    print(count, terminator: " ")
    //}
    
    //MARK: 1018 체스판 다시 칠하기
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //var input = [[String]](repeating: [String](repeating: "", count: n[1]), count: n[0])
    //for i in 0...input.count - 1 {
    //    input[i] = Array(readLine()!.map{ String($0) })
    //}
    //let w =
    //[["W", "B", "W", "B", "W", "B", "W", "B"],
    // ["B", "W", "B", "W", "B", "W", "B", "W"],
    // ["W", "B", "W", "B", "W", "B", "W", "B"],
    // ["B", "W", "B", "W", "B", "W", "B", "W"],
    // ["W", "B", "W", "B", "W", "B", "W", "B"],
    // ["B", "W", "B", "W", "B", "W", "B", "W"],
    // ["W", "B", "W", "B", "W", "B", "W", "B"],
    // ["B", "W", "B", "W", "B", "W", "B", "W"]]
    //
    //let b =
    //[["B", "W", "B", "W", "B", "W", "B", "W"],
    //["W", "B", "W", "B", "W", "B", "W", "B"],
    //["B", "W", "B", "W", "B", "W", "B", "W"],
    //["W", "B", "W", "B", "W", "B", "W", "B"],
    //["B", "W", "B", "W", "B", "W", "B", "W"],
    //["W", "B", "W", "B", "W", "B", "W", "B"],
    //["B", "W", "B", "W", "B", "W", "B", "W"],
    //["W", "B", "W", "B", "W", "B", "W", "B"]]
    //
    //var res = 64
    //func compare(_ r: Int, _ c: Int) -> Int {
    //    var wcount = 0
    //    var bcount = 0
    //    for i in 0..<8 {
    //        for j in 0..<8 {
    //            if w[i][j] != input[i+r][j+c] {
    //                wcount += 1
    //            }
    //            else if b[i][j] != input[i+r][j+c] {
    //                bcount += 1
    //            }
    //        }
    //    }
    //    return wcount >= bcount ? bcount : wcount
    //}
    //for i in 0...n[1]-8 {
    //    for j in 0...n[0]-8 {
    //        res = min(compare(j, i), res)
    //    }
    //}
    //print(res)
    
    //MARK: 1436
    //let n = Int(readLine()!)!
    //var count = 0
    //var m = 666
    //var arr = [Int]()
    //while n != count {
    //    var j = m
    //    var incount = 0
    //    while j != 0 {
    //        if j % 10 == 6 { incount += 1}
    //        else { incount = 0}
    //        j /= 10
    //        if incount == 3 { count += 1; break }
    //    }
    //    m+=1
    //}
    //print(m-1)
    
    //MARK: 백준 19532 <수학은 비대면 강의입니다> - 수식 응용
    //let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    //var x = ( input[2] * input[4] - input[1] * input[5] ) / ( input[0] * input[4] - input[1] * input[3] )
    //var y = ( input[2] * input[3] - input[0] * input[5] ) / ( input[1] * input[3] - input[0] * input[4] )
    //print(x, y)

    //MARK: 백준 19532 <수학은 비대면 강의입니다> - 완전탐색
    //func bruteforce() {
    //    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    //    for x in -999 ... 999 {
    //        for y in -999 ... 999 {
    //            if (input[0] * x + input[1] * y == input[2]) && (input[3] * x + input[4] * y == input[5]) {
    //                print(x, y)
    //                return
    //            }
    //        }
    //    }
    //}
    //bruteforce()

}

