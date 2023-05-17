//
//  Level2.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/05/14.
//

import Foundation

//MARK: 프로그래머스-다리를 지나는 트럭
//func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
//    var bridgeWeight = 0
//    var trucks = truck_weights
//    var bridge = Array(repeating: 0, count: bridge_length)
//    var time = 0
//    while !bridge.isEmpty {
//        bridgeWeight -= bridge.removeFirst()
//        if let truck = trucks.first {
//            if bridgeWeight + truck < weight {
//                bridgeWeight += truck
//                trucks.removeFirst()
//                bridge.append(truck)
//            }
//            else { bridge.append(0)}
//        }
//        time += 1
//    }
//    return time
//}
//
//print(solution(2, 10, [7,4,5,6]))

//MARK: 프로그래머스 큰 수 만들기 <greedy>
//func solution(_ number:String, _ k:Int) -> String {
//    let number = number.map { Int(String($0))!}
//    var arr = [number[0]]
//    var k = k
//    for i in 1..<number.count {
//        while number[i] > arr.last ?? -1 && arr.count > 0 && k != 0 {
//            arr.removeLast()
//            k -= 1
//        }
//        arr.append(number[i])
//    }
//    return arr[0..<arr.count-k].map { String($0) }.joined()
//}

//MARK: 프로그래머스 모음사전 <완전 탐색>
//func solution(_ word:String) -> Int {
//var count = 0
//let words = ["A", "E", "I", "O", "U"]
//var result = [String]()
//func dfs(_ str: String) {
//    result.append(str)
//    if str.count == 5 {
//        return
//    }
//    for i in words {
//        dfs(str+i)
//    }
//}
//dfs("")
//return result.firstIndex(of: word)!
//}


//MARK: 프로그래머스 타겟넘버 <DFS>
//func solution(_ numbers:[Int], _ target:Int) -> Int {
//    var result = 0
//    func dfs(_ value: Int, _ idx: Int) {
//        if value == target {
//            result += 1
//            return
//        }
//        for n in idx..<numbers.count {
//            dfs(value + numbers[n], idx+1)
//            dfs(value - numbers[n], idx+1)
//        }
//    }
//    dfs(0, 0)
//    return result
//}
