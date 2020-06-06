import UIKit

/*
도전과제
 1. 최애 음식이름을 담는 변수를 작성하시고 (String?),
 2. 옵셔널 바인딩을 이용해서 값을 확인해보기
 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 : 입력 파라미터는 String?
 */


//let favoriteFood: String? = nil
let favoriteFood: String? = "food"

// 1. Forced unwrapping
// 느낌표를 추가하여 강제로 Unwrapping 한다.
print(favoriteFood)
//  결과 : Optional("chiken")
print(favoriteFood!)
//  결과 : chiken


// 2. Optional binding (if let)
if let unwrappedFavoriteFood = favoriteFood {
    print(unwrappedFavoriteFood)
} else {
    print("favoriteFood 값이 비어있다.")
}


// 2. Optional binding (guard)
func printUnwrappedFavoriteFood(food: String?) {
    guard let unwrappedFavoriteFood2 = food else {
        print("favoriteFood 값이 비어있다.")
        return
    }
    print(unwrappedFavoriteFood2)
}
//printUnwrappedFavoriteFood(food: nil)
printUnwrappedFavoriteFood(food: "food")

