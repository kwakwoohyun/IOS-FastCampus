import UIKit

/*
    Closure
    익명함수로 알려진 기능으로, 함수를 func 키워드로 선언하는 것이 아니라,
    함수를 변수에 선언하는 형태 이다.
    Closure는 변수에 값을 선언하는 대신에 변수에 함수 를 선언합니다.
    이름이 없는 메소드(함수) 이다.
    수행해야하는 코드블록을 담고있는것
 */

// 기본형
var multiplyClosure: (Int, Int) -> Int = { (a:Int, b: Int) -> Int in
    return a * b
}
let result1 = multiplyClosure(4, 3)
print(result1)

// 간단형
var multiplyClosure2: (Int, Int) -> Int = { $0 * $1 }
let result2 = multiplyClosure2(4, 3)
print(result2)

// 추천형
var multiplyClosure3: (Int, Int) -> Int = { a, b in
    return a * b
}
let result3 = multiplyClosure3(4, 3)
print(result3)



func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}
print(operateTwoNum(a: 4, b: 2, operation: multiplyClosure))

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}
print(operateTwoNum(a: 4, b: 2, operation: addClosure))

