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
