import UIKit

// 1, 성, 이름을 받아서 fullname을 출력하는 함수 만들기

// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기

// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기

// 1.
func printFullname(lastName: String, firstName: String){
    print("Last Name : \(lastName), First Name : \(firstName)")
}
printFullname(lastName: "Kwak", firstName: "woohyun")

// 2.
func printFullname2(_ lastName: String, _ firstName: String){
    print("Last Name : \(lastName), First Name : \(firstName)")
}
printFullname2("Kwak", "woohyun")

// 3.
func printFullname3(lastName: String, firstName: String) -> String{
    return "Last Name : \(lastName), First Name : \(firstName)"
}
print(printFullname3(lastName: "Kwak", firstName: "woohyun"))
