//
//  Step28_PriorityQueue.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/05/18.
//

import Foundation

/**
 우선순위 큐
 */

fileprivate class Step28_PriorityQueue {
    
    //MARK: 백준 11279 최대힙
    //var heap = [Int]()
    //
    //for _ in 0..<Int(readLine()!)! {
    //    let data = Int(readLine()!)!
    //
    //    if data == 0 {
    //        if heap.count == 0 { print("0") }
    //        else {
    //            var (m, idx) = (0,0)
    //            for i in 0..<heap.count {
    //                if heap[i] >= m {
    //                    m = heap[i]
    //                    idx = i
    //                }
    //            }
    //            heap[idx] = 0
    //            print(m)
    //        }
    //    }
    //    else {
    //        heap.append(data)
    //    }
    //}

    //MARK: 백준 11279 시간 초과 : 최댓값을 찾고 최댓값을 기준으로 한번 더 배열을 탐색하면서 시간초과 예상 -> 최댓값과 그 인덱스를 한번에 찾도록 수동 for문을 돌려야함
    //for _ in 0..<Int(readLine()!)! {
    //    let data = Int(readLine()!)!
    //
    //    if data == 0 {
    //        if heap.count == 0 { print("0") }
    //        else {
    //            var m = heap.max()!
    //            heap[heap.firstIndex(of: m)!] = 0
    //            print(m)
    //        }
    //    }
    //    else {
    //        heap.append(data)
    //    }
    //}

    //MARK: 백준 1927 최소 힙 <우선순위 큐>
    //var heap = [Int]()
    //
    //for _ in 0..<Int(readLine()!)! {
    //    let input = Int(readLine()!)!
    //    if input == 0 {
    //        if heap.count == 0 { print("0") }
    //        else {
    //            var (min, idx) = (Int(pow(2.0, 31.0)),0)
    //
    //            for i in 0..<heap.count {
    //                if min >= heap[i] {
    //                    min = heap[i]
    //                    idx = i
    //                }
    //            }
    //            heap[idx] = Int(pow(2.0, 31.0))
    //            print(min == Int(pow(2.0, 31.0)) ? 0 : min)
    //        }
    //    }
    //    else {
    //        heap.append(input)
    //    }
    //}

    //MARK: 백준 11286 절댓값 힙 <우선순위 큐> - 시간초과
//    var heap = [Int]()
//
//    for _ in 0..<Int(readLine()!)! {
//        let input = Int(readLine()!)!
//
//        if input == 0 {
//            if heap.count == 0 { print("0") }
//
//            else {
//                var (min, idx) = (Int(pow(2.0, 31.0)), 0)
//
//                for i in 0..<heap.count {
//                    if abs(min) > abs(heap[i]) || (abs(min) == abs(heap[i]) && min >= heap[i]) {
//                        min = heap[i]
//                        idx = i
//                    }
//                }
//                heap[idx] = Int(pow(2.0, 31.0))
//                print(min == Int(pow(2.0, 31.0)) ? 0 : min)
//            }
//        }
//        else { heap.append(input) }
//    }

}
