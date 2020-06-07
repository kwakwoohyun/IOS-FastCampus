import UIKit

/*
    상속
    중복이 제거되지만 너무 많이될수록 유지보수가 어렵다.
    A is B : A는 B다
    A는 B에 포함된다.
 
    사람은 학생이다. x
    학생은 사람이다. o
    = 학생은 사람을 상속받는다.
 
    person(사람) = super class
    student(학생) = sub class
 
    상속의 규칙
        1. 자식은 한개의 super class만 상속받을 수 있다.
        2. 부모는 여러 sub class를 가질 수 있다.
        3. 상속의 깊이는 상관이 없다.
 
    상속은 언제하면 좋을까?
        1. 단일 책임 (single responsibility)
        2. 타입이 분명해야 할때 (type safety)
        3. 다자녀가 있다. (shared base classes)
        4. 확장성이 필요한 경우 (extensibility)
        5. 정체를 파악하기 위해 (identity)
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

let jay = Person(firstName: "jay", lastName: "lee")
let json = Student(firstName: "json", lastName: "lee")

print(jay.firstName)
print(json.firstName)

jay.printMyName()
json.printMyName()

let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10, credits: 3)
json.grades.append(math)
json.grades.append(history)

print(json.grades)

//jay.grades.append(math) // error


/*
    학생인데 운동선수
 */
class StudentAthelete: Student {
    var minimumTrainingTime: Int = 2
    var trainingTime: Int = 0
    
    func train() {
        trainingTime = trainingTime + 1
    }
}

/*
    운동선수인데 축구선수
 */
class FootballPlayer: StudentAthelete {
    var footballTeam: String = "FC Swift"
    
    override func train() {
        trainingTime = trainingTime + 2
    }
}

// 상속 깊이 = Person > Student > Athelete > FootballPlayer

var athelete1 = StudentAthelete(firstName: "박", lastName: "태환")
var athelete2 = FootballPlayer(firstName: "손", lastName: "흥민")

athelete1.lastName
athelete2.lastName

athelete1.grades.append(math)
athelete2.grades.append(math)

athelete1.minimumTrainingTime
athelete2.minimumTrainingTime

//athelete1.footballTeam // error
athelete2.footballTeam

athelete1.train()
athelete1.trainingTime

athelete2.train()
athelete2.trainingTime
