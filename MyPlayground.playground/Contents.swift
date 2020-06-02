import UIKit

var str = "Hello, playground"
let value = arc4random_uniform(100)

print("==> \(value)")



// Tuple (사전비슷)
/*
 유한 개의 사물의 순서있는 열거이다
 얼핏보면 배열(Array) 과 똑같은게 아닌가 싶지만 배열은 같은 타입의 데이터들을 한 곳에 담아 편리하게 이용하려고 사용하는 것이고, 튜플은 타입이 같을 필요가 없어서 배열과 비슷하지만 다른 개념이다.
 */

let coordinates = (4,6)
let x = coordinates.0
let y = coordinates.1

let coordinatesNamed = (x:2, y:3)
let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let (x3, y3) = coordinatesNamed
x3
y3



// Boolean
// 명제에 대한 참 or 거짓

let yes = true
let no = false

let isFourGreaterThanFive = 4 > 5

let name1 = "kwak"
let name2 = "woohyun"
let isTwoNameSame = name1 == name2



/*
    논리 연산자
        && and = 둘다 true 일때만 true
        || or = 둘중에 하나만 true 이면 true
 */
let isWoohyun = name2 == "woohyun"
let isMale = true
let isFemale = false

// and
let woohyunAndMale = isWoohyun && isMale
let woohyunAndFemale = isWoohyun && isFemale
// or
let woohyunOrMale = isWoohyun || isMale
let woohyunOrFemale = isWoohyun || isFemale


/*
    Scope
        변수가 사용되는 범위
        블록 안에있는것이 하나의 scope
 */

var hours = 50
let payPerHour = 10000
var salary = 0

if hours > 40 {
    let extraHours = hours-40
    salary += extraHours * payPerHour * 2
    hours -= extraHours
}

salary += hours * payPerHour
// extraHours 는 scope범위가 if문 코드블록 안까지라 밖에서 사용할 수 없다.
// print(extraHours)


/*
    While
 
    while 조건 {
        코드
    }
 */

var i = 0
while i < 10 {
    print(i)
    i = i + 1
    
    if i == 5{
        break
    }
}

// repeat : do while
i = 0
repeat {
    print(i)
    i += 1
}while i < 10



/*
    for loop
 */

// 0 ~ 10 까지 표현
let closedRange = 0...10
// 0 ~ 9 까지 표현
let halfColsedRange = 0..<10

print("closedRange")
var sum = 0
for i in closedRange {
    print("----> \(i)")
    sum = sum + i
}
print("----> total sum : \(sum)")

print("halfClosedRange")
sum = 0
for i in halfColsedRange {
    print("----> \(i)")
    sum = sum + i
}
print("----> total sum : \(sum)")

for i in closedRange {
    if i == 3 {
        continue
    }
    print("---> \(i)")
}



/*
    Switch
 */

let num = 11

switch num {
case 0:
    print("0입니다.")
case 10:
    print("10입니다.")
case 10...20:
    print("0~10 사이입니다.")
default:
    print("0도 10도 아닌 숫자입니다.")
}

let coordinate = (x:10, y:10)

switch coordinate{
case(0,0):
    print("0,0 입니다.")
case(_,0):
    print("x축이네요")
case(0,_):
    print("y축이네요")
case(let x, let y) where x == y:
    print("x, y 가 같네요")
default:
    print("좌표 어딘가 있는데 잘모르겠네요 = \(x), \(y)")
}
