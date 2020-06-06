import UIKit

/*
    어떤 기능을 수행하는 코드블록
    Function
    function 과 method의 차이점
    
    Method : object.methodNmae()  오브젝트에 속해서 기능 수행
    Function : functionName()  독립적으로 기능 수행 가능
 */

func printName(){
    print("----> My name is Kwak")
}

printName()

// param 1개
// 숫자를 받아서 10을 곱해서 출력한다.
func printMultipleOfTen (value: Int){
    print("\(value) * 10 = \(value * 10)")
}
printMultipleOfTen(value: 10)




// param 2개
// 물건 값과 갯수를 받아서 전체 금액을 출력하는 함수
func printTotalPrice(price: Int, count: Int){
    print("Total Price : \(price * count)")
}
printTotalPrice(price: 1500, count: 5)




// 값의 이름을 안적어도 된다. _ 언더바를 넣으면 된다.
func printTotalPrice2(_ price: Int, _ count: Int){
    print("Total Price : \(price * count)")
}
printTotalPrice2(1500, 5)




// default param value
func printTotalPrice3(price: Int = 1500, count: Int){
    print("Total Price : \(price * count)")
}
printTotalPrice3(count: 5)
printTotalPrice3(price:1000, count: 5)




// 반환값
// -> 반환타입
func totalPrice(price: Int, count: Int) -> Int {
    let totalPrice = price * count
    return totalPrice
}
let calculatedPrice = totalPrice(price: 1000, count: 77)
print(calculatedPrice)




// 메소드 오버로드
// 함수이름은 같은데 다르게 구현해야 할때 사용



// In-Out parameter
// 함수의 파라미터는 값이 바뀌는게아니고 복사되서 보내진다.
var value = 0
func incrementAndPrint(_ value: inout Int){
    value = value+1
    print(value )
}
incrementAndPrint(&value)




// Function as a param
// 함수를 파리미터로 넘기는 법
func add(_ a: Int, _ b: Int) -> Int{
    return a+b
}

func subtract(_ a: Int, _ b: Int) -> Int{
    return a-b
}

var function = add
function(4,2)

function = subtract
function(4,2)

func printResultFunction(_ function: (Int, Int) -> Int,_ a: Int, _ b: Int){
    let result = function(a,b)
    print(result)
}
printResultFunction(add, 10, 5)
printResultFunction(subtract, 10, 5)
