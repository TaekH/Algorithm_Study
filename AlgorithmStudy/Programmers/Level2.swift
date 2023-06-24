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

//MARK: 프로그래머스 H-Index <정렬>
//func solution(_ citations:[Int]) -> Int {
//    var m = 0
//    var citations = citations.sorted(by: { $0 < $1})
//    var n = citations.count
//    for i in 0..<citations.count {
//        var hIndex = n - i
//        if citations[i] >= hIndex {
//            m = hIndex
//            break
//        }
//    }
//    return m
//}

//MARK: 프로그래머스 소수찾기 <완전 탐색>
//func solution(_ numbers:String) -> Int {
//    var numbers = numbers.map { (String($0)) }
//    var visited = Array(repeating: false, count: numbers.count)
//    var result = [Int]()
//
//    func isPrime(_ num: Int) -> Bool {
//        if num < 4 {
//            return (num <= 1) ? false : true
//        } else {
//            for i in 2...Int(sqrt(Double(num))) {
//                if num % i == 0 {
//                    return false
//                }
//            }
//        }
//        return true
//    }
//
//    func getNumbers(_ depth: Int, _ number: String, _ count: Int) {
//        if depth == count {
//            if let number = Int(number) {
//                if !result.contains(number) && isPrime(number) {
//                    result.append(number)
//                }
//            }
//        } else {
//            for i in 0..<numbers.count {
//                if visited[i] == false {
//                    visited[i] = true
//                    getNumbers(depth+1, number + numbers[i], count)
//                    visited[i] = false
//                }
//            }
//        }
//    }
//
//    for i in  1...numbers.count {
//        getNumbers(0, "", i)
//    }
//
//
//    return result.count
//}

//MARK: 프로그래머스 요격 시스템
//func solution(_ targets:[[Int]]) -> Int {
//    let targets = targets.sorted(by: { $0[1] < $1[1] })
//    var e = 0
//    var result = 0
//    for target in targets {
//        if target[0] >= e {
//            result += 1
//            e = target[1]
//        }
//    }
//    return result
//}

//MARK: 프로그래머스 혼자서하는 틱택토
//func solution(_ board:[String]) -> Int {
//    var boards = [[Character]]()
//    var oCount = 0
//    var xCount = 0
//    for r in board {
//        boards.append(Array(r))
//        for c in r {
//            if c == "." { continue }
//            else if c == "O" { oCount += 1 }
//            else { xCount += 1 }
//        }
//    }
//    if xCount > oCount || xCount + 1 < oCount { return 0 }
//
//    var oBingo = 0
//    var xBingo = 0
//
//    for i in 0..<3 {
//        if boards[i][0] != "." && boards[i][0] == boards[i][1] && boards[i][1] == boards[i][2] {
//            if boards[i][0] == "O" { oBingo += 1 }
//            else { xBingo += 1 }
//        }
//
//        if boards[0][i] != "." && boards[0][i] == boards[1][i] && boards[1][i] == boards[2][i] {
//            if boards[0][i] == "O" { oBingo += 1 }
//            else { xBingo += 1 }
//        }
//    }
//
//    if boards[1][1] == "O" {
//        if boards[2][0] == boards[1][1] && boards[0][2] == boards[1][1] { oBingo += 1 }
//        if boards[0][0] == boards[1][1] && boards[2][2] == boards[1][1] { oBingo += 1 }
//    }
//    if boards[1][1] == "X" {
//        if boards[2][0] == boards[1][1] && boards[0][2] == boards[1][1] { xBingo += 1 }
//        if boards[0][0] == boards[1][1] && boards[2][2] == boards[1][1] { xBingo += 1 }
//    }
//
//    if xBingo != 0 &&  oBingo != 0 { return 0 }
//    if oBingo == 1 && oCount <= xCount { return 0 }
//    if xBingo == 1 && xCount < oCount { return 0 }
//    return 1
//}

//MARK: 프로그래머스 호텔 대실
//func solution(_ book_time:[[String]]) -> Int {
//    var newTime = book_time.sorted {
//        if $0[0] == $1[0] {
//            return $0[1] < $1[1]
//        } else { return $0[0] < $1[0] }
//    }
//    var time = [(Int, Int)]()
//    var rooms = [(Int, Int)]()
//    for i in 0..<newTime.count {
//        var tmp = newTime[i][0].split(separator: ":")
//        var tmp2 = newTime[i][1].split(separator: ":")
//        time.append((Int(String(tmp[0]))!*60 + Int(String(tmp[1]))!, Int(String(tmp2[0]))!*60 + Int(String(tmp2[1]))!))
//
//    }
//    print(time)
//    var idx = 0
//    loop1: for t in time {
//        for (i, r) in rooms.enumerated() {
//            if !(r.0..<(r.1 + 10) ~= t.0) {
//                rooms[i] = t
//                continue loop1
//            }
//        }
//        rooms.append(t)
//    }
//    return rooms.count
//}

//MARK: 프로그래머스 연속된 부분 수열의 합
//func solution(_ sequence:[Int], _ k:Int) -> [Int] {
//    var (l, r) = (0,-1)
//    var sum = 0
//    var result = [0,sequence.count]
//    while l < sequence.count {
//        if r == sequence.count-1 && sum < k {
//            break
//        }
//        if sum < k {
//            r += 1
//            sum += sequence[r]
//        }
//        else if sum > k {
//            sum -= sequence[l]
//            l += 1
//        }
//        if sum == k {
//            if r-l < result[1]-result[0] {
//                result = [l,r]
//            }
//            sum -= sequence[l]
//            l += 1
//        }
//    }
//    return result
//}

//MARK: 프로그래머스 최댓값과 최솟값
//func solution(_ s:String) -> String {
//    var s = s.split(separator: " ").map { Int(String($0))! }
//    let result = String(s.min()!) + " " + String(s.max()!)
//    return result
//}

//MARK: 프로그래머스 JadenCase 문자열 만들기
//func solution(_ s:String) -> String {
//    var s = s.map { String($0) }
//    var result = ""
//    var isBlank = true
//    for c in s {
//        result += !isBlank ? c.lowercased() : c.uppercased()
//        isBlank = (c == " ")
//    }
//
//    return result
//}

//MARK: 프로그래머스 최솟값 만들기
//func solution(_ A:[Int], _ B:[Int]) -> Int
//{
//    var A = A.sorted(by: >)
//    var B = B.sorted(by: <)
//    var result = 0
//    for i in 0..<A.count {
//        result += A[i] * B[i]
//    }
//    return result
//}

//MARK: 프로그래머스 짝지어 제거하기
//func solution(_ s:String) -> Int {
//    var result = [Character]()
//    var str = ""
//    var s = Array(s)
//    for i in 0..<s.count {
//        if !result.isEmpty && result.last == s[i] {
//            result.removeLast()
//        } else {
//            result.append(s[i])
//        }
//    }
//    return result.isEmpty ? 1 : 0
//}

//MARK: 프로그래머스 이진변환 반복하기
//func solution(_ s:String) -> [Int] {
//    var str = s
//    var count = 0
//    var zeroCount = 0
//    func getBinary() {
//        if str == "1" {
//            return
//        }
//        else {
//            count += 1
//            var tmp = ""
//            for i in str {
//                if i != "0" {
//                    tmp += String(i)
//                } else { zeroCount += 1 }
//            }
//            str = String(tmp.count, radix: 2)
//            getBinary()
//        }
//    }
//    getBinary()
//    return [count, zeroCount]
//}

//MARK: 프로그래머스 영어 끝말잇기
//func solution(_ n:Int, _ words:[String]) -> [Int] {
//    var groups = [[Character]]()
//
//    for i in words {
//        groups.append(Array(i))
//    }
//    
//    var round = 1
//    var personNum = 1
//    var tmp = groups[0]
//    var check = [String : Int]()
//    check[String(groups[0])] = 0
//    for i in 1..<words.count {
//        if personNum == n {
//            personNum = 0
//            round += 1
//        }
//        personNum += 1
//
//        if tmp.last! == groups[i][0] && check[String(groups[i])] == nil {
//            tmp = groups[i]
//            check[String(groups[i])] = 0
//        } else { break }
//
//        if i == words.count - 1 {
//            personNum = 0
//            round = 0
//        }
//    }
//    return [personNum, round]
//}

//MARK: 프로그래머스 피보나치 수 - 시간 초과
//func solution(_ n:Int) -> Int {
//
//    func fibo(_ n: Int) -> Int {
//        if n > 1 {
//            var num = n % 1234567
//            return fibo(num-1) + fibo(num-2)
//        }
//        else if n == 0 { return 0 }
//        else { return 1 }
//    }
//    return fibo(n)
//}


//MARK: 프로그래머스 피보나치 수
//func solution(_ n:Int) -> Int {
//    var result = [Int]()
//    for i in 0...n {
//        if i <= 1 { result.append(i) }
//        else {
//            var sum = result[i-1] + result[i-2]
//            result.append(sum % 1234567)
//        }
//    }
//    return result[n]
//}

//MARK: 프로그래머스 귤 고르기
//func solution(_ k:Int, _ tangerine:[Int]) -> Int {
//    var dic = [Int: Int]()
//    for i in tangerine {
//        if dic[i] == nil { dic[i] = 1 }
//        else { dic[i]! += 1 }
//    }
//    var result = dic.sorted(by: {
//        if $0.value == $1.value {
//            return $0.key < $1.key
//        } else { return $0.value > $1.value }
//    })
//    var count = 0
//    var num = 0
//    for i in 0..<result.count {
//        if count >= k { break }
//        count += result[i].value
//        num += 1
//    }
//    return num
//}

//MARK: N개의 최소공배수
//func solution(_ arr:[Int]) -> Int {
//    func gcd(_ a: Int, _ b: Int) -> Int {
//        var r = 0
//        var a = a
//        var b = b
//        while b != 0 {
//            r = a % b
//            a = b
//            b = r
//        }
//        return ax
//    }
//    var arr = arr.sorted(by: >)
//    if arr.count == 1 { return 2 }
//    var tmp = arr[0] * arr[1] / gcd(arr[0], arr[1])
//    if arr.count == 2 { return tmp }
//    for i in 2 ..< arr.count {
//        tmp = tmp * arr[i] / gcd(tmp, arr[i])
//    }
//    return tmp
//}

//MARK: 프로그래머스 예상 대진표
//func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
//{
//    var a = a
//    var b = b
//    var round = 0
//    while true {
//        round += 1
//        a = (a/2) + (a%2)
//        b = (b/2) + (b%2)
//        if a == b {
//            break
//        }
//    }
//    return round
//}

//MARK: 프로그래머스 멀리뛰기
//func solution(_ n:Int) -> Int {
//    var result = [1,2]
//    var i = 0
//    while result.count < n {
//        result.append((result[i] + result[i+1]) % 1234567)
//        i += 1
//    }
//    return result[n-1]
//}

//MARK: 점프와 순간이동
//func solution(_ n:Int) -> Int
//{
//    var n = n
//    var result = 0
//    while n > 0 {
//        if n % 2 == 0 {
//            n /= 2
//        }
//        else {
//            n -= 1
//            result += 1
//        }
//    }
//
//    return result
//}
