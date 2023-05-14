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
