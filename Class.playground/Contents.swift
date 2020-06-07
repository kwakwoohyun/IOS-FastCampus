import UIKit


/*
    관계가 있는 것 끼리 묵는것 : Object
    Object = Data + Method
            (properties) + (method)
    Object의 종류 1. struct
                2. class
                비슷하지만 동작이 다름
                struct는 다른 객체를 가리킴 : 값을 바꾸면 두개 다른 값이됨 (value type)
                class는 같은 객체를 가리킴 : 값을 바꾸면 같이 바뀜 (reference type)
 */

// Struct
struct PersonStruct {
    
    var firstName: String
    var lastName: String
    
    //    생성자
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }

}
// --------------------------------------------------

// Class
class PersonClass {
    
    var firstName: String
    var lastName: String
    
//    생성자
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
    
}


var personStruct1 = PersonStruct(firstName: "kwak", lastName: "woo")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "kwak", lastName: "woo")
var personClass2 = personClass1



personStruct2.firstName = "jay"
print(personStruct1.firstName)
print(personStruct2.firstName)



personClass2.firstName = "jay"
print(personClass1.firstName)
print(personClass2.firstName)

personClass2 = PersonClass(firstName: "ffff", lastName: "llll")
print(personClass1.firstName)
print(personClass2.firstName)

personClass1 = personClass2
print(personClass1.firstName)
print(personClass2.firstName)


/*
    언제 struct, class를 사용해야할까
        struct 1. 두 object가 같다, 다르다를 비교해야 할때
               2. copy된 각 객체들이 독립적인 상태를 가져야 하는 경우
               3. 코드에서 오브젝트의 데이터를 여러 스레드를 거쳐 사용할 경우
        class 1. 두 object의 인스턴스 자체가 같음을 확인해야 할때
              2. 하나의 객체가 필요하고, 여러대상에 의해 접근되고 변경이 필요할 경우
        
        일단 struct로 쓰고 class로 바꿀 이유가있으면 바꾸자
        swift는 struct를 많이 사용된다. 
 
 */
