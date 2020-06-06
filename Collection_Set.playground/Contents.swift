import UIKit

/*
  Set
    순서가 없고
    유일한 값을 가진다.
    중복이없는 유일한 값들을 관리할때 사용
 */

var someArray: Array<Int> = [1, 2, 3, 1]
var someSet: Set<Int> = [1, 2, 3, 1]
print(someArray)
print(someSet)

print(someSet.isEmpty)
print(someSet.count)
// 안에 값이 있나
print(someSet.contains(4))
print(someSet.contains(1))
// 값 추가
someSet.insert(5)
print(someSet)
// 값 삭제
someSet.remove(1)
print(someSet)

