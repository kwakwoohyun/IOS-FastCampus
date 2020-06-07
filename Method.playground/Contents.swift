import UIKit

/*
    Method : 기능을 수행하는 코드블록
    vs Function
        인스턴스에 귀속되서 사용
        struct, class 안에서 동작
 */

struct Lecture {
    var title: String
    var maxStudents: Int = 10
    var numberOfRegistered: Int = 0
    
    func remainSeats(of lec: Lecture) -> Int {
        let remainSeats = maxStudents - numberOfRegistered
        return remainSeats
    }
    
//    function을 사용하여 struct에 있는 properties가 변경될때에는 mutaing 키워드를 써줘어야한다.
    mutating func register() {
//        등록된 학생 수 증가시키기
        numberOfRegistered = numberOfRegistered + 1
    }
    
//    Type properties
    static let target: String = "Enybody want to learn somthing"
    
//    Type Method
    static func 소속학원이름() -> String {
        return "fastcampus"
    }
}

var lec = Lecture(title: "IOS Basic")

lec.remainSeats(of: lec)
lec.register()
lec.remainSeats(of: lec)
lec.register()
lec.register()
lec.register()
lec.remainSeats(of: lec)

print(Lecture.target)
print(Lecture.소속학원이름())


// -----------------------------------------------------------------------------------

struct Math {
    
//    Type Method
    static func abs(value: Int) -> Int {
        if value > 0 {
            return value
        } else {
            return value * -1
        }
    }
    
}

Math.abs(value: -29)

// 메소드 확장하기 : extension zldnjem tkdyd
// 제곱, 반값 구하는 함수로 확장
extension Math {
    
    static func square(value: Int) -> Int {
        return value * value
    }
    
    static func half(value: Int) -> Int {
        return value/2
    }
    
}


// ex)
let value: Int = 10
// Int에 extention을 사용하여 기능을 확장한다.
// 내가만든 struct가 아니고 apple이 만든 Int struct도 확장할 수 있다.
extension Int {
    
    func square(value: Int) -> Int {
        return value * value
    }
    
    func half(value: Int) -> Int {
        return value/2
    }
    
}
