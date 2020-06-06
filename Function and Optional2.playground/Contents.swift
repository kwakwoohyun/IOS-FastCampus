import UIKit

/*
    Optional
        var name: String = "kwak"
        var dogName: String = "dubu"
        var carName: String = ???
        
        변수에 값이 존재하지 않을때 nil
    
    Optional
        값이 있을수도 있고 없을수도 있다.
 */

var carName1: String?
var carName2: String? = "Tesla"

// 아주 간단한 과제
// 여러분이 최애하는 영화배우의 이름을 담는 변수를 작성해주세요.(타입 String?)
// let num = Int("10") -> 타입은 뭘까요 ??

// 1.
var actor: String? = nil
// 2.
let num = Int("10")
print(type(of: num))


// 고급 기능 4가지
// Forced unwrapping : optional 타입을 억지로 박스를 깐다.
// Optional binding (if let) : optional 타입을 부드럽게 깐다1.
// Optional binding (guard) : optional 타입을 부드럽게 깐다2.
// Nil coalescing : optional 타입을 까봤더니, 값이 없으면 디폴트 값을 준다.



// Forced unwrapping = !느낌표를 사용하여 강제로 언랩핑한다.
// 그러나 값이 없으면 에러가 난다.
print(carName1)
// nil
//print(carName1!)
//error
print(carName2)
// Optional("Tesla")
print(carName2!)
// Tesla

// Optional binding (if let)
if let unwrappedCarName = carName1{
    print(unwrappedCarName)
}else{
    print("Car Name 없다.")
}

func printParsedInt(from: String) {
    if let parsedInt = Int(from) {
        print(parsedInt)
    } else{
        print("Int로 컨버팅 안된다.")
    }
}
print(printParsedInt(from: "100"))
print(printParsedInt(from: "kwakwoohyun"))


// Optional binding (guard)
func printParsedInt2(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅 안된다.")
        return
    }
    print(parsedInt)
}
print(printParsedInt(from: "100"))
print(printParsedInt(from: "kwakwoohyun"))


// Nil coalescing
var myCarName3: String = carName1 ?? "Tesla"

