import UIKit

/*
    Structure
    관계가 있는 것들을 묶어서 표현
 
    Object = Data + Method
 
 
    <Structure vs Class>
 
    Structure : Value Types
                Copy
                Stack
                상속 불가능
    Class : Reference Types
            Share
            Heap
            상속 가능
 */

/*
 ex)
let pClass1 = PersonClass(name: "kwak", age: 5)
let pClass2 = pClass1
pClass2.name = "woohyun"

print(pClass1.name)
print(pClass2.name)

let pStruct1 = PersonClass(name: "kwak", age: 5)
let pStruct2 = pStruct1
pStruct2.name = "woohyun"

print(pStruct1.name)
print(pStruct2.name)
*/

/*
    도전과제
    1. 강의 이름, 강사 이름, 학생수를 가지는 Struct 만들기 (Lecture)
    2. 강의 Array 와 강사이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
    3. 강의 3개를 만들고 강사이름으로 강의 찾기
 */

struct Lecture {
    let name: String
    let instructor: String
    let numOfStudent: Int
}

func printLectureName(from instructor: String, lectures: [Lecture]) {
    var lectureName = ""
    
    for lecture in lectures {
        if instructor == lecture.instructor {
            lectureName = lecture.name
        }
    }
    print("그 강사님 강의는요 \(lectureName)")
}

let lec1 = Lecture(name: "IOS Basic", instructor: "Jason", numOfStudent: 5)
let lec2 = Lecture(name: "IOS Advanced", instructor: "Jack", numOfStudent: 5)
let lec3 = Lecture(name: "IOS Pro", instructor: "Jim ", numOfStudent: 5)
let lectures = [lec1, lec2, lec3]

printLectureName(from: "Jack", lectures: lectures)
