import UIKit

/*
    struct에 data에 해당하는 부분이 properties이다.
 
    instance properties = stored properties, computed properties
    type properties = type properties
 */

struct Person {
//    stored properties : 저장되어있는 프로퍼티, 실무에서는 let으로 사용한다. 값을 바뀌지 않게하기위해
    var firstName: String
    var lastName: String
    
//    computed properties : 값이 정해져있지않고 가공해서 어떤 값을 만드는 프로퍼티 (연산 프로퍼티)
    var fullName: String {
        // computed properties는 readonly이기때문에 getter setter가 필요하다.
        get {
            return "\(firstName) \(lastName)"
        }
        
        set {
//            newValue = "jay park"
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
    }
//    type properties : 생성된 인스턴스에 상관없이 타입 자체에 속성을 정하고싶을때 사용
    static let isAilen: Bool = false
}

var person = Person(firstName: "kwak", lastName: "woohyun")
print(person.firstName, person.lastName)

// change properties
person.firstName = "kkkk"
person.lastName = "wwww"
print(person.firstName, person.lastName)


print(person.fullName)
person.fullName = "Jay Park"
print(person.fullName)
print(person.firstName, person.lastName)
