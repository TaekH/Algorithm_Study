//
//  Level3.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/05/16.
//

import Foundation

//MARK: 프로그래머스 네트워크 <DFS>
//func solution(_ n:Int, _ computers:[[Int]]) -> Int {
//    var visited = Array(repeating: false, count: n)
//    var network = 0
//    func bfs(_ computer: Int) {
//        visited[computer] = true
//
//        for i in 0..<n {
//            if computers[computer][i] == 1 && visited[i] == false {
//                bfs(i)
//            }
//        }
//    }
//    for i in 0..<n {
//        if visited[i] == false {
//            network += 1
//            bfs(i)
//        }
//    }
//
//    return network
//}

//MARK: 프로그래머스 단어 변환 <DFS>
//func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
//    if !words.contains(target) { return 0 }
//    var result = 0
//    var visited = Array(repeating: false, count: words.count)
//    func dfs(_ str: String, _ count: Int) {
//        if str == target && (result > count || result == 0) {
//            result = count
//        }
//        var arrStr = Array(str).map { String($0) }
//        for i in 0..<words.count {
//            if visited[i] == true { continue }
//
//            var arrWord = Array(words[i]).map { String($0) }
//            var difCount = 0
//            for j in 0..<arrWord.count {
//                if arrStr[j] != arrWord[j] { difCount += 1 }
//            }
//            if difCount == 1 {
//                visited[i] = true
//                dfs(words[i], count+1)
//            }
//            visited[i] = false
//        }
//
//    }
//    dfs(begin, 0)
//    return result
//}

//MARK: 프로그래머스 여행경로 <DFS>
//func solution(_ tickets:[[String]]) -> [String] {
//var tickets = tickets.sorted { $0[1] < $1[1] }
//var visited = Array(repeating: false, count: tickets.count)
//var result = [String]()
//func dfs(_ place: String) {
//    if !visited.contains(false) {
//        result.append(place)
//        return
//    }
//    for i in 0..<tickets.count {
//        if tickets[i][0] == place && visited[i] == false {
//            visited[i] = true
//            result.append(place)
//            dfs(tickets[i][1])
//            if result.count == tickets.count + 1 {
//                return
//            }
//            visited[i] = false
//            result.removeLast()
//        }
//    }
//}
//
//dfs("ICN")
//return result
//}

//MARK: 프로그래머스 N으로 표현 <DP>
//func solution(_ N:Int, _ number:Int) -> Int {
//    if N == number { return 1 }
//    var result = -1
//    
//    func dfs(_ n: Int, _ count: Int) {
//        if count > 8 {
//            return
//        }
//        if n == number {
//            if count < result || result == -1 {
//                result = count
//            }
//            return
//        }
//        var nn = 0
//        
//        for i in 0..<8 {
//            if result != -1 && result < count + i + 1 {
//                break
//            }
//            nn = 10 * nn + N
//            dfs(n + nn, count + i + 1)
//            dfs(n - nn, count + i + 1)
//            dfs(n * nn, count + i + 1)
//            dfs(n / nn, count + i + 1)
//        }
//    }
//    dfs(0,0)
//    
//    return result
//}

//MARK: 프로그래머스 베스트 앨범 <해시>
//func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
//    var result = [Int]()
//    var list = [String: [[Int]]]()
//    for i in 0..<genres.count {
//        if list[genres[i]] != nil {
//            list[genres[i]]?.append([plays[i], i])
//        }
//        else { list[genres[i]] = [[plays[i], i]]}
//    }
//    let sortedList = list.sorted { $0.value.map { $0[0] }.reduce(0,+) > $1.value.map { $0[0] }.reduce(0,+) }
//    
//    for i in 0..<sortedList.count {
//        let values = sortedList[i].value.sorted { $0[0] > $1[0] || ($0[0] == $1[0] && $0[1] < $1[1]) }
//
//        if values.count <= 1 { result.append(values[0][1])}
//        else {
//            result += [values[0][1], values[1][1]]
//        }
//    }
//    return result
//}
