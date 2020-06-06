import UIKit

/*
    Dictionary
    순서가 없고 key, value 쌍으로 구성되어있는 Collection
    key = unique 해야한다.
 */

// Dictionary 선언 방법 2가지
var scoreDict: [String: Int]
scoreDict = ["kwak":90,"woohyun":80,"kim":50]
print(scoreDict)

var scoreDict2: Dictionary<String, Int>
scoreDict2 = ["kwak":90,"woohyun":80,"kim":50]
print(scoreDict2)

// 값 접근
// Optional type
print(scoreDict["kwak"])
print(scoreDict["woohyun"])

print(scoreDict["nil"])

// optional binding
if let score = scoreDict["kwak"] {
    print(score)
} else{
    print("score 없습니다.")
}

print(scoreDict.isEmpty)
//scoreDict = [:]
print(scoreDict.count)

//값 변경
scoreDict["kwak"] = 70
print(scoreDict["kwak"])

//값 추가
scoreDict["hyun"] = 100
print(scoreDict)

//값 제거
scoreDict["hyun"] = nil
print(scoreDict)

// For loop
for (name, score) in scoreDict {
    print("name:\(name), score:\(score)")
}

for key in scoreDict.keys {
    print(key)
}

