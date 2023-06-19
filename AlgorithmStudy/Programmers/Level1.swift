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

//MARK: 프로그래머스 달리기 경주
//func solution(_ players:[String], _ callings:[String]) -> [String] {
//    var dic = [String: Int]()
//    var players = players
//    for i in 0..<players.count {
//        dic[players[i]] = i
//    }
//    for i in callings {
//        var tmp = players[dic[i]! - 1]
//        players[dic[tmp]!] = i
//        players[dic[i]!] = tmp
//        dic[tmp]! += 1
//        dic[i]! -= 1
//    }
//    return players
//}

//MARK: 프로그래머스 추억 점수
//func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
//    var dic = [String : Int]()
//
//    for i in 0..<name.count {
//        dic[name[i]] = yearning[i]
//    }
//    var result = [Int]()
//    for i in photo {
//        var tmp = 0
//        for j in i {
//            tmp += dic[j] ?? 0
//        }
//        result.append(tmp)
//    }
//    return result
//}

//MARK: 프로그래머스 카드 뭉치
//func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
//    var idx1 = 0
//    var idx2 = 0
//    for word in goal {
//        if !cards1.contains(word) && !cards2.contains(word) {
//            return "No"
//        }
//
//        if idx1 < cards1.count && cards1[idx1] == word {
//            idx1 += 1
//        }
//        else if idx2 < cards2.count && cards2[idx2] == word {
//            idx2 += 1
//        }
//        else { return "No"}
//    }
//
//    return "Yes"
//}

//MARK: 프로그래머스 덧칠하기
//func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
//    var count = 0
//
//    section.reduce(section.min()!) { result, value in
//        if result + m - 1 < value {
//            count += 1
//            return value
//        }
//
//        return result
//    }
//
//    return count + 1
//}
