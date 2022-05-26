//
//  main.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2022/05/26.
//

import Foundation

func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
} // generics

func quickSort<T: Comparable>(_ a: [T]) -> [T] {
    
    guard a.count > 1 else { return a }
    
    let pivot = a[a.count / 2]
    let low = a.filter { $0 < pivot}
    let pivotIndex = a.filter { $0 == pivot}
    let high = a.filter { $0 > pivot }
    
    return quickSort(low) + pivotIndex + quickSort(high)
}

let arr: [Int] = [ 0,3,4,12,5,1 ]
let arr2: [String] = ["a", "c", "e", "d", "b"]
print(quickSort(arr))
print(quickSort(arr2))
