//
//  Step22.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/05/15.
//

import Foundation

/**
 백트래킹
 */

fileprivate class Step22_Backtracking {
    
    //MARK: 백준 15649
    //let input = readLine()!.split(separator: " ").map {Int(String($0))!}
    //let n = input[0]
    //let m = input[1]
    //var result: [Int] = []
    //
    //func getResult() {
    //    if result.count == m {
    //        print(result.map { String($0)}.joined(separator: " "))
    //        return
    //    }
    //    for i in 1...n {
    //        if !result.contains(i) {
    //            result.append(i)
    //            getResult()
    //            result.popLast()
    //        }
    //    }
    //}
    //
    //getResult()


    //MARK: 백준 15649
    //let input = readLine()!.split(separator: " ").map {Int(String($0))!}
    //let n = input[0]
    //let m = input[1]
    //var result: [Int] = []
    //
    //func getResult(_ s: Int) {
    //    if result.count == m {
    //        print(result.map { String($0)}.joined(separator: " "))
    //        return
    //    }
    //    for i in s...n {
    //        if !result.contains(i) {
    //            result.append(i)
    //            getResult(i)
    //            result.popLast()
    //        }
    //    }
    //}
    //
    //getResult(1)

    //MARK: 백준 15651 시간초과
    //let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    //let n = input[0]
    //let m = input[1]
    //var result: [Int] = []
    //
    //func getResult() {
    //    if result.count == m {
    //        print(result.map { String($0)}.joined(separator: " "))
    //        return
    //    }
    //    for i in 1...n {
    //        result.append(i)
    //        getResult()
    //        result.popLast()
    //    }
    //}
    //
    //getResult()

    //MARK: 백준 15651
    //let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    //let n = input[0]
    //let m = input[1]
    //var result: [Int] = []
    //var resultStr: String = ""
    //
    //func getResult() {
    //    if result.count == m {
    //        resultStr += result.map { String($0)}.joined(separator: " ")
    //        resultStr += "\n"
    //        return
    //    }
    //    for i in 1...n {
    //        result.append(i)
    //        getResult()
    //        result.popLast()
    //    }
    //}
    //
    //getResult()
    //print(resultStr)


    //MARK: 백준 15652
    //let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    //let n = input[0]
    //let m = input[1]
    //var result: [Int] = []
    //var resultStr: String = ""
    //
    //func getResult(_ start: Int) {
    //    if result.count == m {
    //        resultStr += result.map { String($0)}.joined(separator: " ")
    //        resultStr += "\n"
    //        return
    //    }
    //    for i in start...n {
    //        result.append(i)
    //        getResult(i)
    //        result.popLast()
    //    }
    //}
    //
    //getResult(1)
    //print(resultStr)

    //MARK: 백준 2309
    //var input: [Int] = []
    //for _ in 0 ..< 9 {
    //    input.append(Int(readLine()!)!)
    //}
    //func findDwarf() {
    //    for i in 0..<8 {
    //        for j in (i+1)..<9 {
    //            let m = input[i]
    //            let n = input[j]
    //            if input.reduce(0, +) - m - n == 100 {
    //                input.remove(at: input.firstIndex(of: m)!)
    //                input.remove(at: input.firstIndex(of: n)!)
    //                return
    //            }
    //        }
    //    }
    //}
    //findDwarf()
    //for i in input.sorted() {
    //    print(i)
    //}

    //MARK: 백준 14888
    //let n = Int(readLine()!)!
    //let num = readLine()!.split(separator: " ").map{ Int($0)! }
    //var oper = readLine()!.split(separator: " ").map { Int($0)! }
    //var charOper = [Character]()
    //var maxValue = -1000000000
    //var minValue = 1000000000
    //var visited = Array(repeating: false, count: n+1)
    //var tempOper = [Character]()
    //for i in 0..<oper.count {
    //    while oper[i] > 0 {
    //        if i == 0 {
    //            charOper.append("+")
    //            oper[i] -= 1
    //        }
    //        if i == 1 {
    //            charOper.append("-")
    //            oper[i] -= 1
    //        }
    //        if i == 2 {
    //            charOper.append("*")
    //            oper[i] -= 1
    //        }
    //        if i == 3 {
    //            charOper.append("/")
    //            oper[i] -= 1
    //        }
    //    }
    //}
    //
    //func dfs(_ depth: Int) {
    //    var idx = 1
    //    var result = num[0]
    //    if depth == charOper.count {
    //        for i in tempOper {
    //            switch i {
    //            case "+" :
    //                result += num[idx]
    //                idx += 1
    //            case "-" :
    //                result -= num[idx]
    //                idx += 1
    //            case  "*" :
    //                result *= num[idx]
    //                idx += 1
    //            case "/" :
    //                result /= num[idx]
    //                idx += 1
    //            default:
    //                result += num[idx]
    //                idx += 1
    //            }
    //        }
    //        maxValue = max(maxValue, result)
    //        minValue = min(minValue, result)
    //        return
    //    }
    //    for i in 0..<charOper.count {
    //        if !visited[i] {
    //            visited[i] = true
    //            tempOper.append(charOper[i])
    //            dfs(depth+1)
    //            visited[i] = false
    //            tempOper.removeLast()
    //        }
    //    }
    //}
    //
    //dfs(0)
    //print(maxValue)
    //print(minValue)

    //MARK: 백준 14888
    //let n = Int(readLine()!)
    //var num = readLine()!.split(separator: " ").map { Int($0)! }
    //var oper = readLine()!.split(separator: " ").map { Int($0)! }
    //var maxValue = -1000000000
    //var minValue = 1000000000
    //
    //func dfs(_ depth: Int, _ value: Int) {
    //    if depth == n {
    //        maxValue = max(value, maxValue)
    //        minValue = min(value, minValue)
    //    }
    //    for i in 0..<4 {
    //        if oper[i] > 0 {
    //            oper[i] -= 1
    //            var tmp = 0
    //            switch i {
    //            case 0 :
    //                tmp = value + num[depth]
    //            case 1 :
    //                tmp = value - num[depth]
    //            case 2 :
    //                tmp = value * num[depth]
    //            default :
    //                tmp = value / num[depth]
    //            }
    //            dfs(depth+1, tmp)
    //            oper[i] += 1
    //        }
    //    }
    //}
    //dfs(1, num[0])
    //print(maxValue)
    //print(minValue)

    //MARK: 백준 14888
    //let input = Int(readLine()!)
    //let num = readLine()!.split(separator: " ").map { Int($0)! }
    //var oper = readLine()!.split(separator: " ").map { Int($0)! }
    //var (m, n) = (-1000000000, 1000000000)
    //
    //func dfs(_ depth: Int, _ plus: Int, _ sub: Int, _ mul: Int, _ div: Int, _ value: Int) {
    //    if depth == input {
    //        m = max(value, m)
    //        n = min(value, n)
    //    }
    //    if plus < oper[0] {
    //        dfs(depth+1, plus+1, sub, mul, div, value+num[depth])
    //    }
    //    if sub < oper[1] {
    //        dfs(depth+1, plus, sub+1, mul, div, value-num[depth])
    //    }
    //    if mul < oper[2] {
    //        dfs(depth+1, plus, sub, mul+1, div, value*num[depth])
    //    }
    //    if div < oper[3] {
    //        dfs(depth+1, plus, sub, mul, div+1, value/num[depth])
    //    }
    //}
    //
    //dfs(1, 0, 0, 0, 0, num[0])
    //print(m)
    //print(n)
    
    //MARK: 백준 14889
    //let input = Int(readLine()!)!
    //let teamCount = input/2
    //var s = [[Int]]()
    //for _ in 0..<input {
    //    s.append(readLine()!.split(separator: " ").map { Int($0)! })
    //}
    //let team = Array(0..<input)
    //var team1: [Int] = []
    //var minValue = Int(pow(2.0, Float(teamCount))) * 100
    //
    //func getResult(_ idx: Int) {
    //    if team1.count == teamCount {
    //        let team2 = team.filter{!team1.contains($0)}
    //        var value1 = 0
    //        var value2 = 0
    //
    //        for i in 0 ..< teamCount {
    //            for j in 0 ..< teamCount {
    //                value1 += s[team1[i]][team1[j]]
    //                value2 += s[team2[i]][team2[j]]
    //            }
    //        }
    //        minValue = min(minValue, abs(value1-value2))
    //        return
    //    }
    //    for i in idx..<input {
    //        if !team1.contains(i) {
    //            team1.append(i)
    //            getResult(i+1)
    //            team1.popLast()
    //        }
    //    }
    //}
    //
    //getResult(0)
    //print(minValue)


    //MARK: 백준 14889
    //let input = Int(readLine()!)!
    //let teamCount = input/2
    //var s = [[Int]]()
    //for _ in 0..<input {
    //    s.append(readLine()!.split(separator: " ").map { Int($0)! })
    //}
    //
    //var team1Array: [Int] = []
    //var team2Array: [Int] = []
    //var minValue = Int(pow(2.0, Float(teamCount))) * 100
    //
    //func dfs(_ team1: Int, _ team2: Int, _ member: Int) {
    //    if team1 == teamCount && team2 == teamCount {
    //        var (value1, value2) = (0,0)
    //        for i in 0 ..< teamCount {
    //            for j in 0 ..< teamCount {
    //                value1 += s[team1Array[i]][team1Array[j]]
    //                value2 += s[team2Array[i]][team2Array[j]]
    //            }
    //        }
    //        minValue = min(minValue, abs(value1-value2))
    //    }
    //    if team1 < teamCount {
    //        team1Array.append(member)
    //        dfs(team1+1, team2, member+1)
    //        team1Array.popLast()
    //    }
    //    if team2 < teamCount {
    //        team2Array.append(member)
    //        dfs(team1,team2+1, member+1)
    //        team2Array.popLast()
    //    }
    //}
    //dfs(0, 0, 0)
    //print(minValue)
}
