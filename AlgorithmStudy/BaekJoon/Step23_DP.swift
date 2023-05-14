//
//  Step.swift
//  AlgorithmStudy
//
//  Created by 한택환 on 2023/05/15.
//

import Foundation

/**
 동적 프로그래밍 (DP)
 */

fileprivate class Step23_DP {
    
    //MARK: 백준 DP 224416
    //MARK: TopDown DP Fibonacci
    //var fiboData = Array(repeating: 0, count: 40)
    //func topDownDpFibo(_ n: Int) -> Int {
    //
    //    if n <= 1 { return n }
    //
    //    if fiboData[n] == 0 {
    //        fiboData[n] = topDownDpFibo(n-1) + topDownDpFibo(n-2)
    //    }
    //    return fiboData[n]
    //}
    //
    //var dpCount = 0
    //func recurFibo(_ n: Int) -> Int {
    //    if n == 2 || n == 1 {
    //        return 1
    //    } else {
    //        return recurFibo(n-1) + recurFibo(n-2)
    //    }
    //}

    //MARK: BottomUp DP Fibonacci
    //func DpFibo(_ n: Int) -> Int {
    //    var fiboData: [Int] = [0, 1, 1]
    //
    //    guard n > 1 else { return n }
    //    for i in 3...n {
    //        dpCount += 1
    //        fiboData.append(fiboData[i-1] + fiboData[i-2])
    //    }
    //    return fiboData[n]
    //}
    //let input = Int(readLine()!)!
    //DpFibo(input)
    //print(recurFibo(input), dpCount)

    //MARK: 백준 224416 시간복잡도 줄인 버전
    //재귀를 사용하는 경우 연산의 횟수와 N번째 피보나치 값과 같음
    //DP를 사용하는 경우 N-2만큼의 연산을 수행함
    //func fibo(_ n: Int) -> Int {
    //    var fiboData = [0,1,1]
    //    for i in 3...n {
    //        fiboData.append(fiboData[i-1] + fiboData[i-2])
    //    }
    //    return fiboData[n]
    //}
    //let input = Int(readLine()!)!
    //print(fibo(input), input-2)


    //MARK: 백준 9184 재귀함수를 DP로 바꾸기
    //w는 기존 재귀함수
    //func w(_ a: Int, _ b: Int, _ c: Int) -> Int {
    //    if a <= 0 || b <= 0 || c <= 0 {
    //        return 1
    //    }
    //    if a > 20 || b > 20 || c > 20 {
    //        return w(20,20,20)
    //    }
    //    if a < b && b < c {
    //        return w(a, b, c-1) + w(a, b-1, c-1) - w(a, b-1, c)
    //    }
    //    else {
    //        return w(a-1, b, c) + w(a-1, b-1, c) + w(a-1, b, c-1) - w(a-1, b-1, c-1)
    //    }
    //}
    //3중 for문으로 값 넣기
    //func bottomUpDp(_ a: Int, _ b: Int, _ c: Int) -> Int {
    //    var (a,b,c) = (a,b,c)
    //    if a <= 0 || b <= 0 || c <= 0 { return 1 }
    //    if a > 20 || b > 20 || c > 20 {
    //        (a,b,c) = (20,20,20)
    //    }
    //    var dpData: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: c+1), count: b+1), count: a+1)
    //    for i in 0 ... a {
    //        for j in 0 ... b {
    //            for k in 0 ... c {
    //                if i <= 0 || j <= 0 || k <= 0 {
    //                    dpData[i][j][k] = 1
    //                }
    //                else if i < j && j < k {
    //                    dpData[i][j][k] = dpData[i][j][k-1] + dpData[i][j-1][k-1] - dpData[i][j-1][k]
    //                }
    //                else {
    //                    dpData[i][j][k] = dpData[i-1][j][k] + dpData[i-1][j-1][k] + dpData[i-1][j][k-1] - dpData[i-1][j-1][k-1]
    //                }
    //            }
    //        }
    //    }
    //    return dpData[a][b][c]
    //}
    //
    //while true {
    //    let input = readLine()!.split(separator: " ").map { Int($0)! }
    //    if input == [-1,-1,-1] { break }
    //    print("w(\(input[0]), \(input[1]), \(input[2])) = \(bottomUpDp(input[0], input[1], input[2]))")
    //}


    //MARK: 백준 9184 재귀함수를 DP로 바꾸기 풀이법 2

    //var dpData = Array(repeating: Array(repeating: Array(repeating: -1, count: 21), count: 21), count: 21)
    //var result = ""
    //while true {
    //    let input = readLine()!.split(separator: " ").map { Int($0)! }
    //    if input == [-1,-1,-1] { break }
    //    result += "w(\(input[0]), \(input[1]), \(input[2])) = \(dp(input[0], input[1], input[2]))\n"
    //}
    //print(result)
    //func dp(_ a: Int, _ b: Int, _ c: Int) -> Int {
    //    if a <= 0 || b <= 0 || c <= 0 { return 1 }
    //    else if a > 20 || b > 20 || c > 20 { return dp(20, 20, 20)}
    //    else if dpData[a][b][c] != -1 { return dpData[a][b][c]}
    //    else if  a < b && b < c  {
    //        dpData[a][b][c] = dp(a, b, c-1) + dp(a, b-1, c-1) - dp(a, b-1, c)
    //        return dpData[a][b][c]
    //    }
    //    else {
    //        dpData[a][b][c] = dp(a-1, b, c) + dp(a-1, b-1, c) + dp(a-1, b, c-1) - dp(a-1, b-1, c-1)
    //        return dpData[a][b][c]
    //    }
    //}

    //MARK: 백준 1904 01타일

    //let input = Int(readLine()!)!
    //
    //func dp(_ n: Int) -> Int {
    //    if n == 1 || n == 2 { return n }
    //    var dpData = [0, 1, 2]
    //    for i in 3...n {
    //        dpData.append((dpData[i-1] + dpData[i-2])%15746)
    //    }
    //    return dpData[n]
    //}
    //print(dp(input))

    //MARK: 백준 1904 01타일 refactoring

    //let input = Int(readLine()!)!
    //var a = 1
    //var b = 2
    //if input == 1 || input == 2 { b = input }
    //else {
    //    for _ in 2..<input {
    //        let tmp = a
    //        a = b
    //        b = (tmp+b) % 15746
    //    }
    //}
    //print(b)

    //MARK: 백준 9461 파도반 수열
    //func dp(_ n : Int) -> Int {
    //    var dpData = [0, 1, 1, 1]
    //    if n <= 3 { return 1 }
    //
    //    for i in 4...n {
    //        dpData.append(dpData[i-2]+dpData[i-3])
    //    }
    //    return dpData[n]
    //}
    //for _ in 0..<Int(readLine()!)! {
    //    print(dp(Int(readLine()!)!))
    //}
    //

    //MARK: 백준 1912 연속합
    //
    //let input = Int(readLine()!)!
    //let num = readLine()!.split(separator: " ").map { Int($0)! }
    //var dpData = Array(repeating: -1001, count: 100001)
    //dpData[0] = num[0]
    //for i in 1..<input {
    //    dpData[i] = max(num[i], dpData[i-1] + num[i])
    //}
    //print(dpData.max()!)

    //MARK: 백준 1149 RGB 거리
    //
    //let input = Int(readLine()!)!
    //var num = [[Int]]()
    //for _ in 0 ..< input {
    //    let input = readLine()!.split(separator: " ").map { Int($0)! }
    //    num.append(input)
    //}
    //var result = 1001 * input
    //
    //func dp(_ prevIdx: Int, _ index: Int, _ value: Int) {
    //    for i in 0 ..< 3 {
    //        if i == prevIdx { continue }
    //        if index < input-1 {
    //            dp(i, index + 1, value+num[index][i])
    //        } else {
    //            result = min(result, value+num[index][i])
    //        }
    //    }
    //}
    //dp(4, 0, 0)
    //print(result)

    //let input = Int(readLine()!)!
    //var num: [[Int]] = [[]]
    //for _ in 1 ... input {
    //    let input = readLine()!.split(separator: " ").map { Int($0)! }
    //    num.append(input)
    //}
    //var dpData = Array(repeating: Array(repeating: 0, count: 4), count: input + 1)
    //for i in 1...input {
    //    dpData[i][0] = min(dpData[i - 1][1], dpData[i - 1][2]) + num[i][0]
    //    dpData[i][1] = min(dpData[i - 1][0], dpData[i - 1][2]) + num[i][1]
    //    dpData[i][2] = min(dpData[i - 1][0], dpData[i - 1][1]) + num[i][2]
    //}
    //print(min(dpData[input][0], dpData[input][1], dpData[input][2]))



    //MARK: 백준 1932 정수 삼각형

    //let input = Int(readLine()!)!
    //var result = Array(repeating: Array(repeating: 0, count: input+1), count: input+1)
    //var num: [[Int]] = [[]]
    //for _ in 1...input {
    //    num.append(readLine()!.split(separator: " ").map { Int($0)! })
    //}
    //result[1][0] = num[1][0]
    //
    //for i in stride(from: 2, through: input, by: 1){
    //    for j in 0..<num[i].count {
    //        if j == 0 {
    //            result[i][j] = result[i-1][j] + num[i][j]
    //        } else if j < num[i].count-1 {
    //            result[i][j] = max(result[i-1][j] + num[i][j], result[i-1][j-1] + num[i][j])
    //        } else if j == num[i].count-1 {
    //            result[i][j] = result[i-1][j-1] + num[i][j]
    //        }
    //    }
    //}
    //print(result[input].max()!)



    //MARK: 백준 2579
    //let input = Int(readLine()!)!
    //var stairs = [0]
    //for _ in 0..<input {
    //    stairs.append(Int(readLine()!)!)
    //}
    //var dpData = Array(repeating: 0, count: input+1)
    //dpData[0] = 0
    //for i in 1..<input+1 {
    //    if i == 1 {
    //        dpData[1] = stairs[1]
    //    }
    //    else if i == 2 {
    //        dpData[2] = stairs[1] + stairs[2]
    //    }
    //    else if i == 3 {
    //        dpData[3] = max(stairs[3] + stairs[2], stairs[3] + stairs[1])
    //    }
    //    else {
    //        dpData[i] = max(stairs[i] + stairs[i-1] + dpData[i-3], dpData[i-2] + stairs[i])
    //    }
    //}
    //
    //print(dpData[input])

    //MARK: 백준 15650
    //let input = readLine()!.split(separator: " ").map { Int($0)! }
    //let (m, n) = (input[0], input[1])
    //var visited = Array(repeating: false, count: m+1)
    //var result = [Int]()
    //
    //func dfs(_ idx: Int) {
    //    if result.count == n {
    //        print(result.map{ String($0) }.joined(separator: " "))
    //        return
    //    }
    //
    //    for i in idx...m {
    //        if !visited[i] {
    //            visited[i] = true
    //            result.append(i)
    //            dfs(i)
    //            visited[i] = false
    //            result.popLast()
    //        }
    //    }
    //}
    //
    //dfs(1)

    //MARK: 백준 15651
    //let input = readLine()!.split(separator: " ").map { Int($0)! }
    //let (m, n) = (input[0], input[1])
    //var result = [Int]()
    //var resultStr = ""
    //func dfs() {
    //    if result.count == n {
    //        resultStr += result.map { String($0) }.joined(separator: " ")
    //        resultStr += "\n"
    //        return
    //    }
    //
    //    for i in 1...m {
    //        result.append(i)
    //        dfs()
    //        result.popLast()
    //    }
    //}
    //
    //dfs()
    //print(resultStr)


    //MARK: 백준 15652
    //let input = readLine()!.split(separator: " ").map { Int($0)! }
    //let (m, n) = (input[0], input[1])
    //var result = [Int]()
    //var resultStr = ""
    //func dfs(_ idx: Int) {
    //    if result.count == n {
    //        resultStr += result.map { String($0) }.joined(separator: " ")
    //        resultStr += "\n"
    //        return
    //    }
    //
    //    for i in idx...m {
    //        result.append(i)
    //        dfs(i)
    //        result.popLast()
    //    }
    //}
    //
    //dfs(1)
    //print(resultStr)
    //

    //MARK: 백준 1로 만들기 DP  1463 다시 풀어보기
    //let input = Int(readLine()!)!
    //var temp = [Int]()
    //var result = [input]
    //var count = 0
    //while true {
    //    var temp = [Int]()
    //    if result.contains(1) {
    //        break
    //    }
    //    count += 1
    //    for r in result {
    //        if r % 3 == 0 { temp.append(r / 3) }
    //        if r % 2 == 0 { temp.append(r / 2) }
    //        temp.append(r - 1)
    //    }
    //    result = temp
    //}
    //print(count)

    //MARK: 백준 10844 DP 계단수
    //import Foundation
    //let n = Int(readLine()!)!
    //var dp = Array(repeating: Array(repeating: 1, count: 10), count: n)
    //dp[0][0] = 0
    //for i in 1..<n {
    //    for j in 0..<10 {
    //        if j == 0 { dp[i][j] = dp[i-1][1] }
    //        else if j == 9 { dp[i][j] = dp[i-1][8] }
    //        else { dp[i][j] = (dp[i-1][j-1] + dp[i-1][j+1]) }
    //    }
    //}
    //print((dp[n-1].reduce(0, +)) % 1000000000)

    //MARK: 백준 10844 DP 계단수
    //let n = Int(readLine()!)!
    //var dp = [0] + Array(repeating: 1, count: 9)
    //
    //for _ in 1..<n {
    //    var tmp = dp
    //    dp[0] = tmp[1]%1000000000
    //    for j in 1..<9 {
    //        dp[j] = (tmp[j-1] + tmp[j+1]) % 1000000000
    //    }
    //    dp[9] = tmp[8]%1000000000
    //}
    //
    //print((dp.reduce(0, +) % 1000000000))

    //MARK: 백준 2156 DP 포도주 시식
    //var input = Int(readLine()!)!
    //var arr = [0]
    //for _ in 0..<input {
    //    arr.append(Int(readLine()!)!)
    //}
    //var result = Array(repeating: 0, count: input+1)
    //for i in 1...input {
    //    if i == 1 { result[1] = arr[1] }
    //    else if i == 2 { result[2] = arr[1]+arr[2] }
    //    else { result[i] = max(arr[i] + arr[i-1] + result[i-3], arr[i] + result[i-2], result[i-1])}
    //}
    //print(result[input])


    //MARK: 백준 11053 DP 길이가 긴 부분 수열 : 시간초과
    //let n = Int(readLine()!)!
    //let input = readLine()!.split(separator: " ").map { Int($0)! }
    //var result = 0
    //
    //func dfs(_ idx: Int, _ value: Int, _ count: Int) {
    //    if count > result {
    //        result = count
    //    }
    //    for i in idx..<input.count {
    //        if input[i] > value {
    //            dfs(i, input[i], count+1)
    //        }
    //    }
    //    return
    //}
    //
    //dfs(0, 0, 0)
    //print(result)

    //MARK: 백준 11053 DP 길이가 긴 부분 수열
    //let n = Int(readLine()!)!
    //let input = readLine()!.split(separator: " ").map { Int($0)! }
    //var dp = Array(repeating: 1, count: input.count)
    //
    //for i in 0..<input.count {
    //    for j in 0..<i {
    //        if input[j] < input[i] {
    //            dp[i] = max(dp[i], dp[j]+1)
    //        }
    //    }
    //}
    //
    //print(dp.max()!)

    //MARK: 백준 11054 바이토닉 부분 수열
    //let n = Int(readLine()!)!
    //let input = readLine()!.split(separator: " ").map { Int($0)! }
    //var dp = Array(repeating: Array(repeating: 1, count: 2), count: input.count)
    //
    //for i in 0..<input.count {
    //    for j in 0..<i {
    //        if input[j] < input[i] {
    //            dp[i][0] = max(dp[i][0], dp[j][0]+1)
    //        }
    //    }
    //    for k in stride(from: input.count-1, through: input.count-1-i, by: -1) {
    //        if input[k] < input[input.count-1-i] {
    //            dp[input.count-1-i][1] = max(dp[input.count-1-i][1], dp[k][1]+1)
    //        }
    //    }
    //}
    //var maxValue = 0
    //for i in 0..<input.count {
    //    if maxValue <= dp[i].reduce(0, +) {
    //        maxValue = dp[i].reduce(0, +)
    //    }
    //}
    //print(maxValue-1)

    //MARK: 백준 2565번 전깃줄 실패
    //let n = Int(readLine()!)!
    //var input = [(Int,Int)]()
    //for _ in 0..<n {
    //    let m = readLine()!.split(separator: " ").map { Int($0)! }
    //    input.append((m[0],m[1]))
    //}
    //input = input.sorted { $0.0 > $1.0 || ($0.0 == $1.0 && $0.1 > $0.0)}
    //var count = Array(repeating: 0, count: input.count)
    //for i in 0..<input.count {
    //    for j in i+1..<input.count {
    //        if input[i].1 < input[j].1 {
    //            count[i] += 1
    //        }
    //    }
    //}
    //print(count.max()!)

    //MARK: 백준 DP 2565번 전깃줄
    //let n = Int(readLine()!)!
    //var input = [(Int,Int)]()
    //for _ in 0..<n {
    //    let m = readLine()!.split(separator: " ").map { Int($0)! }
    //    input.append((m[0],m[1]))
    //}
    //input = input.sorted { $0.0 < $1.0 }
    //var dp = Array(repeating: 1, count: input.count)
    //
    //for i in 0..<input.count {
    //    for j in 0..<i {
    //        if input[j].1 < input[i].1 {
    //            dp[i] = max(dp[i], dp[j]+1)
    //        }
    //    }
    //}
    //
    //print(input.count - dp.max()!)

    //MARK: 백준 DP 9251 LCS

    //let a = readLine()!.map { String($0) }
    //let b = readLine()!.map { String($0) }
    //var dp = Array(repeating: Array(repeating: 0, count: b.count+1), count: a.count+1)
    //
    //for i in 1...a.count {
    //    for j in 1...b.count {
    //        if a[i-1] == b[j-1] {
    //            dp[i][j] = dp[i-1][j-1] + 1
    //        }
    //        else {
    //            dp[i][j] = max(dp[i-1][j], dp[i][j-1])
    //        }
    //    }
    //}
    //
    //print(dp[a.count][b.count])

    //MARK: 백준 DP 12865 평범한 배낭 시간초과
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //var input = [(Int, Int)]()
    //for i in 0..<n[0] {
    //    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    //    input.append((tmp[0], tmp[1]))
    //}
    //var result = 0
    //func dp(_ weight: Int, _ value: Int) {
    //    if value > result { result = value }
    //    for i in 0..<input.count {
    //        if weight - input[i].0 >= 0 {
    //            dp(weight-input[i].0, value+input[i].1)
    //        }
    //    }
    //}
    //dp(n[1],0)
    //print(result)

    //MARK: 백준 DP 12865 평범한 배낭
    //let n = readLine()!.split(separator: " ").map { Int($0)! }
    //var input = [(Int, Int)]()
    //for i in 0..<n[0] {
    //    let tmp = readLine()!.split(separator: " ").map { Int($0)! }
    //    input.append((tmp[0], tmp[1]))
    //}
    //var dp = Array(repeating: Array(repeating: 0, count: n[1]+1), count: n[0]+1)
    //
    //for i in 1...n[0] {
    //    for j in 1...n[1] {
    //        if input[i-1].0 <= j {
    //            dp[i][j] = max(input[i-1].1 + dp[i-1][j-input[i-1].0], dp[i-1][j])
    //        }
    //        else {
    //            dp[i][j] = dp[i-1][j]
    //        }
    //    }
    //}
    //
    //print(dp[n[0]][n[1]])
}
