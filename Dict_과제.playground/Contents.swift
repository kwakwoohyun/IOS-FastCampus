import UIKit


/*
    1. 이름, 직업, 도시 에대해서 본인의 딕셔너리 만들기
    2. 여기서 도시를 부산으로 업데이트 하기
    3. 딕셔너리를 받아서 이름과 도시 프린트하는 함수 만들기
 */

// 1.
var myDict = ["이름":"kwak","직업":"개발자","도시":"경기도"]
print(myDict)
print(type(of: myDict))

// 2.
myDict["도시"] = "부산"
print(myDict)

func printMyDict(dict: [String:String]) {
    if let name = dict["이름"], let city = dict["도시"] {
        print(name, city)
    } else{
        print("Cannot find")
    }
}
printMyDict(dict: myDict)
