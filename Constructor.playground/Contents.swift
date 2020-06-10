import UIKit

/*
    클래스 생성시 2가지 단계
        1. 모든 stored properties는 모두 initialize 되어야 한다.
        (자식 클래스 properties 부터 initialzie 되어야한다.)
        2. properties로의 접근이 가능하고 메소드도 호출이 가능하다.
    두가지 단계를 차례대로 거쳐야 한다. 반대로 되면 오류가 난다.
 
    initialize
        1. 지정 initialize
        2. 간편 initialize
            지정 initialize는 자신의 부모 클래스의 지정 initialize를 호출해야한다.
            간편 initialize는 같은 클래스의 initialize를 꼭 하나 호출해야한다.
            간편 initialize는 궁극적으로 지정 initialize를 호출해야한다.
 */

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
    var grades: [Grade] = []
}

// 학생인데 운동선수
class StudentAthlete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
//        첫번째 단계
//        자식클래스의 properties부터 부모클래스의 properties까지 initialize한다.
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
//        두번째 단계
//        properties로의 접근이 가능하고 메소드도 호출이 가능하다.
        self.train()
    
    }
    
    //        parameter가 많아 initialize가 복잡해질때 줄일 수 있다. (convenience 사용)
    convenience init(name: String) {
        self.init(firstName: name, lastName: "", sports: [])
    }

    func train() {
        trainedTime += 1
    }
}

// 운동선인데 축구선수
class FootballPlayer: StudentAthlete {
    var footballTeam = "FC Swift"

    override func train() {
        trainedTime += 2
    }
}


let student1 = Student(firstName: "Json", lastName: "lee")
let student2 = StudentAthlete(firstName: "Kwak", lastName: "woohyun", sports: ["Football"])
let student3 = StudentAthlete(name: "Park")
