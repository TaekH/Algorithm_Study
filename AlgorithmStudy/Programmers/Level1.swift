//
//  Level1.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/05/14.
//

import Foundation

//MARK: Programmers level 1
//var board = [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]
//let moves = [1,5,3,5,1,2,1,4]
//var result = 0
//var q: [Int] = []
//for i in moves {
//    for j in 0..<board.count {
//        if board[j][i-1] != 0 {
//            q.append(board[j][i-1])
//            board[j][i-1] = 0
//            break
//        }
//    }
//    if q.count > 1 && q.last == q[q.count - 2] {
//        q.removeSubrange(q.count-2 ... q.count-1)
//        result += 2
//    }
//}
//
//print(result)



//
//var s = "-1234"
//var str: [Int] = []
//for i in s {
//    if i != "-" && i != "+" {
//        str.append(Int(String(i))!)
//    }
//}

//MARK: 프로그래머스 최소 직사각형 <완전탐색>
//func solution(_ sizes:[[Int]]) -> Int {
//    var (width, height) = (0, 0)
//    for i in sizes {
//        var tmp = i.sorted { $0 > $1 }
//        if tmp[1] > height { height = tmp[1]}
//        if tmp[0] > width { width = tmp[0]}
//    }
//    return width * height
//}

//MARK: 프로그래머스 모의고사 <완전탐색>
//func solution(_ answers:[Int]) -> [Int] {
//    var one = [1,2,3,4,5]
//    var two = [2,1,2,3,2,4,2,5]
//    var three = [3,3,1,1,2,2,4,4,5,5]
//    var arr = [-1, 0, 0, 0]
//    var result = [Int]()
//    while true {
//        if one.count >= answers.count { break }
//        one += one
//        two += two
//        three += three
//    }
//    for i in 0..<answers.count {
//        if answers[i] == one[i] { arr[1] += 1 }
//        if answers[i] == two[i] { arr[2] += 1}
//        if answers[i] == three[i] { arr[3] += 1}
//    }
//    var max = arr.max()!
//    for i in 0..<4 {
//        if arr[i] == max {
//            result.append(i)
//        }
//    }
//    return result
//}
