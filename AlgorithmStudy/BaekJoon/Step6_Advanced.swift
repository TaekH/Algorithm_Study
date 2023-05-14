//
//  Ch6.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/03.
//

import Foundation

/**
 심화1
 
 개편 이전 단계
 */

fileprivate class Step6_Advanced {
    //MARK: 10809
    //let n = readLine()!.map {$0.asciiValue!}
    //for i in Character("a").asciiValue!...Character("z").asciiValue! {
    //    if n.contains(i) { print(n.firstIndex(of: i)!, terminator: " ")}
    //    else { print(-1, terminator: " ")}
    //}
    
    //MARK: 2675 - 시간초과
    //let n = readLine()!.map{$0}
    //var max = 0
    //var c: Character = "?"
    //for i in 0..<n.count {
    //    let count = n.filter({$0 == n[i]}).count
    //    if max < count {
    //        max = count
    //        c = n[i]
    //    }
    //    else if max == count && c != n[i] {
    //        c = "?"
    //    }
    //}
    //print(c.uppercased())
    
    //MARK: 2675
    //let n = readLine()!.uppercased()
    //var dic = [String: Int]()
    //var temp = [String]()
    //
    //for i in n {
    //    if dic[String(i)] == nil {
    //        dic[String(i)] = 1
    //    } else  {
    //        dic[String(i)]! += 1
    //    }
    //}
    //
    //for k in dic.keys {
    //    if dic[k] == dic.values.max() {
    //        temp.append(k)
    //    }
    //}
    //
    //print(temp.count > 1 ? "?" : temp[0])
    
    //MARK: 1152
    //let s = readLine()!.split(separator: " ").map { Int(String($0.reversed()))! }
    //print(s.max()!)
    
    //MARK: 5622
    //let s = readLine()!.uppercased()
    //var result = 0
    //for i in s {
    //    switch i {
    //    case "A", "B", "C":
    //        result += 3
    //    case "D", "E", "F":
    //        result += 4
    //    case "G", "H", "I":
    //        result += 5
    //    case "J", "K", "L":
    //        result += 6
    //    case "M", "N", "O":
    //        result += 7
    //    case "P", "Q", "R","S":
    //        result += 8
    //    case "T", "U", "V":
    //        result += 9
    //    case "W", "X", "Y", "Z":
    //        result += 10
    //    default :
    //        break
    //    }
    //}
    //print(result)
    
    //MARK: 2941
    //var input = readLine()!
    //var arr = ["c=","c-","dz=","d-","lj","nj","s=","z="]
    //for i in 0...arr.count-1 {
    //    //MARK: replacingOccurences : 특정 문자열을 변경해주는 함수
    //    input = input.replacingOccurrences(of: arr[i] , with: "0")
    //}
    //print(input.count)
    
    //MARK: 1316
    //var n = Int(readLine()!)!
    //var count = 0
    //func isDuplication(_ s:String) -> Int {
    //    var arrS = [Character]()
    //    for i in s {
    //        if arrS.contains(i) && arrS.last != i {
    //            return 0
    //        }
    //        else { arrS.append(i) }
    //    }
    //    return 1
    //}
    //for _ in 0..<n {
    //    let s = readLine()!
    //    count += isDuplication(s)
    //}
    //print(count)
}
