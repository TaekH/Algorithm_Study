//
//  BruteForce.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/03/20.
//

import Foundation

/**
 브루트 포스 알고리즘
*/

fileprivate class BruteForce {
    
    func bruteForce() {
        let list: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        var result: [Int] = []
        for item in list {
            if 10 % item == 0 {
                result.append(item)
            }
        }
    }
    
}
