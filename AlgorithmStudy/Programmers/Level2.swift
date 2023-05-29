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

//MARK: 프로그래머스-숫자 변환하기 <DP>
//func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
//    var result = 0
//    var set = Set([x])
//
//    while !set.isEmpty {
//        var tmpSet = Set<Int>()
//
//        if set.contains(y) {
//            return result
//        }
//
//        for i in set {
//            if i + n <= y {
//                tmpSet.insert(i+n)
//            }
//            if i * 2 <= y {
//                tmpSet.insert(i*2)
//            }
//            if i * 3 <= y {
//                tmpSet.insert(i*3)
//            }
//        }
//        set = tmpSet
//        result += 1
//    }
//
//    return -1
//}

//MARK: 프로그래머스-기능개발 <Queue>
//func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
//    var days = [Int]()
//    for i in 0..<progresses.count {
//        var tmp = (100 - progresses[i]) / speeds[i]
//        if (100 - progresses[i]) % speeds[i] != 0 { tmp += 1}
//        days.append(tmp)
//    }
//    var result = [Int]()
//    var tmp = days[0]
//    var count = 1
//    for i in 1..<days.count {
//        if days[i] <= tmp {
//            count += 1
//        }
//        else {
//            tmp = days[i]
//            result.append(count)
//            count = 1
//        }
//    }
//    result.append(count)
//
//    return result
//}

//MARK: 프로그래머스-올바른 괄호 <Queue>
//func solution(_ s:String) -> Bool
//{
//    var s = s.map { String($0) }
//    var count = 0
//
//    for i in s {
//        if i == "(" { count += 1 }
//        else { count -= 1}
//        if count < 0 { return false }
//    }
//
//
//    return count == 0 ? true : false
//}

//MARK: 프로그래머스-프로세스 <Dequeue>
//func solution(_ priorities:[Int], _ location:Int) -> Int {
//    var p = priorities
//    var result = 0
//    var location = location
//    while p.count != 0 {
//        location -= 1
//        let max = p.max()!
//        let l = p[0]
//        if l != max {
//            p.append(l)
//            p.removeFirst()
//            if location < 0 { location = p.count - 1}
//        }
//        else {
//            result += 1
//            p.removeFirst()
//            if location < 0 { break }
//        }
//    }
//    return result
//}

//MARK:  removeFirst()를 사용하지 않은 시간 단축
//func solution(_ priorities:[Int], _ location:Int) -> Int {
//    var p = priorities
//    var result = 0
//    var (location, idx) = (location, -1)
//    while p.count != 0 {
//        //location -= 1
//        idx += 1
//        print(location, idx)
//        let max = p.max()!
//        let l = p[idx]
//        if l != max {
//            p.append(l)
//            p[idx] = 0
//            if location == idx { location = p.count - 1}
//            print(p, "+")
//        }
//        else {
//            result += 1
//            p[idx] = 0
//            if location == idx { break }
//            print(p, "-", result)
//        }
//    }
//    return result
//}
//

//MARK: 프로그래머스 가장 큰 수 <정렬>
//func solution(_ numbers:[Int]) -> String {
//    var sortedNumbers = numbers.sorted(by: { Int("\($0)\($1)")! > Int("\($1)\($0)")!})
//    let result = sortedNumbers.reduce("") { $0 + "\($1)"}
//    if sortedNumbers[0] == 0 {
//        return "0"
//    }
//    return result
//}

//MARK: 프로그래머스 의상 <해시>
//func solution(_ clothes:[[String]]) -> Int {
//    var dic = [String: Int]()
//    
//    for i in clothes {
//        if dic[i[1]] != nil {
//            dic[i[1]]! += 1
//        }
//        else { dic[i[1]] = 1}
//    }
//    var count = 1
//    
//    for i in dic {
//        count *= i.value+1
//    }
//    return count-1
//}
