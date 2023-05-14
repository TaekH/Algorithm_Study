//
//  Sorting.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/01/03.
//

import Foundation

/**
 정렬 알고리즘 구현
 */

func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

func genericQuickSort<T: Comparable>(_ a: [T]) -> [T] {

    guard a.count > 1 else { return a }

    let pivot = a[a.count / 2]
    let low = a.filter { $0 < pivot}
    let pivotIndex = a.filter { $0 == pivot}
    let high = a.filter { $0 > pivot }

    return genericQuickSort(low) + pivotIndex + genericQuickSort(high)
}

let arr: [Int] = [ 0,3,4,12,5,1 ]
let arr2: [String] = ["a", "c", "e", "d", "b"]
//print(genericQuickSort(arr))
//print(genericQuickSort(arr2))


func quickSort(_ a: [Int]) -> [Int] {

    guard a.count > 1 else { return a }

    let pivot = a[a.count / 2]
    let low = a.filter { $0 < pivot}
    let pivotIndex = a.filter { $0 == pivot}
    let high = a.filter { $0 > pivot }

    return quickSort(low) + pivotIndex + quickSort(high)
}
