import UIKit

/*
    Array
    Dictionary
    Set
 
    Closure
 */

/*
    1. Array
    Element (속성)
    타입이 같은 것들만 담을 수 있다.
    Index 0 부터 시작한다.
    
    순서 있는 아이템, 아이템의 순서를 알면 유용할때 사용한다.
 
    중요한 함수 = isEmpty, count, num[1], for array
 */

// Array 선언 방법 2가지
var evenNumbers: [Int] = []
var evenNumbers2: Array<Int> = [2, 4, 6 ,8]

// Array가 비어있나 확인
var isEmpty = evenNumbers.isEmpty
print(isEmpty)

// Array에 Element 추가 방법 3가지
print(evenNumbers)
evenNumbers.append(10)
print(evenNumbers)
evenNumbers = evenNumbers+[12]
print(evenNumbers)
evenNumbers.append(contentsOf: [14,16])
print(evenNumbers)

isEmpty = evenNumbers.isEmpty
print(isEmpty)

// Array에 Element가 몇개인가
var count = evenNumbers.count
print(count)

//evenNumbers = []

// Array에 첫번째 요소
let firstItem = evenNumbers.first
print(firstItem) // Optional
let lastItem = evenNumbers.last
print(lastItem) // Optional


// Optional Binding
if let firstElement = firstItem {
    print("first element = \(firstElement)")
}else {
    print("first element 는 비어있습니다.")
}

// Array에 최댓값 최솟값
let minItem = evenNumbers.min()
print(minItem) // Optional
let maxItem = evenNumbers.max()
print(maxItem) // Optional


print(evenNumbers[0])
print(evenNumbers[1])
print(evenNumbers[count-1])

// range를 사용
let firstToTwo = evenNumbers[0...1]
print(firstToTwo)

// Array에 사용자가 원하는 숫자가 있나 확인할 수 있다. contains()
var isNumberCondition = evenNumbers.contains(3)
print(isNumberCondition)
isNumberCondition = evenNumbers.contains(10)
print(isNumberCondition)

// 특정 값을 새로운 인덱스에 삽입
evenNumbers.insert(18, at: 4)
print(evenNumbers)

//Array Element 전체 삭제
//evenNumbers.removeAll
//evenNumbers = []

//Array Element 한개 삭제 (index)
evenNumbers.remove(at: 4)
print(evenNumbers)

//Array swap
evenNumbers.swapAt(0, 1)
print(evenNumbers)

for num in evenNumbers {
    print(num)
}

for (index, num) in evenNumbers.enumerated() {
    print("index : \(index), num : \(num)")
}

// 앞에 두개를 제거
let firstTwoRemoved = evenNumbers.dropFirst(2)
print(firstTwoRemoved)
// 뒤에 한개를 제거
let lastOneRemoved = evenNumbers.dropLast(1)
print(lastOneRemoved)

// 앞에 두개를 가져온다.
let firstTwo = evenNumbers.prefix(2)
print(firstTwo)
// 뒤에 두개를 가져온다.
let lastTwo = evenNumbers.suffix(2)
print(lastTwo)
