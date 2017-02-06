#Chapter 2

##기본명명규칙

**변수, 상수, 함수, 메서드, 타입 등의 이름은 유니코드에서 지원하는 어떤 문자라도 사용할 수 있다.**

**예외사항**

1. 스위프트에서 사용하고 있는 예약어 또는 키워드
2. 해당 코드범위 내에서 미리 사용되고 기존의 이름과 동일한 이름
3. 연산자로 사용될 수 있는 기호(+,-,*,/)
4. 숫자로 시작하는 이름
5. 공백이 포함된 이름

##콘솔 로그

**콘솔 로그는 디버깅중 디버깅 콘솔에 보여줄 로그를 뜻합니다. 스위프트에서는 print() 또는 dump() 함수를 사용하여 콘솔 로그를 출력할 수 있습니다.**

_print함수보다 dump함수가 조금 더 자세한 정보를 출력해줌_

##문자열 보간법

**문자열 보간법은 변수 또는 상수 등의 값을 문자열 내에 나타내고 싶을때 사용**

_문자열 내에 "\(변수 또는 상수)"의 형태로 표기_
```swift
ex) let name: String = "chulsoo"
    print("My name is \(name)")
```
##변수와 상수

**변수와 상수는 특정 데이터 타입에 해당하는 값의 이름, 변수는 생성 후 데이터값을 변경할 수 있지만 상수는 한 번 값을 설정하면 추후에 변경 불가능**

_변수를 생성하려면 var 키워드를 사용하여 var [변수명]: [데이터 타입] = [값]의 형태로 선언. 변수를 생성할 때 데이터 타입은 생략 가능_

_상수를 생성하려면 let 키워드를 사용하여 let [상수명]: [데이터 타입] = [값]의 형태로 선언. 변수 생성과 마찬가지로 데이터 타입은 생략 가능_

(데이터 타입을 생략하면 컴파일러가 변숫값의 타입을 추론하여 타입을 지정하는데 자칫 잘못된 타입 추론으로 인해 오류가 생기면 오류를 찾는데 상당한 시간이 걸릴 수 있으므로 타입 추론은 스위프트가 익숙해 졌을때 사용하기를 권함.)

#Chapter 3

##데이터 타입 기본

**데이터 타입은 프로그램 내에서 다뤄지는 데이터의 종류를 뜻함.**

_스위프트의 모든 데이터 타입의 이름은 첫 글자가 대문자로 시작_

##Int와 UInt

**정수 타입이며 Int는 +,-를 포함한 정수를 뜻하고 이 중 -부호를 포함하지 않는 0을 을 포함한 양의 정수는 UInt로 표현**

_같은 정수라도 Int와 UInt를 완전히 다른 타입으로 인식하며 코드 안에 Int와 UInt 두 타입 모두 사용하면 정수타입의 변수끼리도 값을 교환할 때 많은 자원을 소모할 수도 있음_

##Bool

**Bool은 불리언 타입. 불리언 타입은 참(true) 또는 거짓(false)만 값으로 가짐**

```swift
ex) let isTimeUnlimited: Bool = false
    print("시간은 무한합니까? : \(isTimeUnlimited)")
```

##Float과 Double

**Float과 Double은 부동소수점을 사용하는 실수형이며 부동소수 타입이라고 한다.**

_Float은 32비트 부동소수를 표현하고 Double은 64비트 부동소수를 표현(64비트 환경에서 Float은 6자리 Double은 15자리 십진수를 표현)_

##Character

**Character는 말 그대로 '문자'를 의미함 단어, 문장처럼 문자의 집합이 아닌 단 하나의 문자를 의미**

_스위프트는 유니코드 문자를 사용하므로 유니코드에서 지원하는 모든 언어 및 특수기호 등을 사용할 수 있음(문자를 표현하기 위해서는 값의 앞뒤에 큰따옴표를 사용)_

##String

**String은 문자의 나열, 즉 문자열임**

_String 은 Character와 마찬가지로 유니코드를 사용할 수 있으며, 값의 앞뒤에 큰 따옴표를 사용하여 표현함_

##Any, AnyObject와 nil

**Any는 스위프트의 모든 데이터 타입을 사용할 수 있다는 뜻**

**AnyObject는 Any보다 조금 한정된 의미로 클래스의 인스턴스만 할당가능**

**nil은 특정타입이 아니라 '없음'을 나타내는 스위프트의 키워드**

#Chapter 4

##데이터 타입 고급

##데이터 타입 안심

**데이터 타입 안심이란?**

스위프트는 데이터 타입을 안심하고 사용할 수 있는 언어다. 예를 들어 Int 타입 변수에 할당하려는 값이 Character 타입이라면 컴파일 오류가 발생한다. 이렇게 스위프트가 컴파일 시 타입을 확인하는 것을 **타입확인**이라고 한다.

##타입 추론

**변수나 상수를 선언할 때 특정타입을 명시하지 않아도 컴파일러가 할당된 값을 기준으로 그 변수나 상수의 타입을 결정**

```swift
ex) let name = "chulsoo" 라는 코드를 작성하면, 컴파일러가 컴파일하면서 name의 타입을 String으로 결정.
```
##타입 별칭

이미 존재하고 있는 데이터 타입에 임의로 다른 이름(별칭)을 부여할 수 있음. 그런 다음 기본 타입 이름과 이후에 추가한 별칭을 모두 사용할 수 있다.

```swift
ex) typealias MyInt = Int
    let age: MyInt = 100 // MyInt는 Int의 또 다른 이름
```
##튜플

**타입의 이름이 따로 지정되어 있지 않은, 프로그래머 마음대로 만드는 타입. '지정된 데이터의 묶음'이라고 표현가능**

튜플의 포함될 데이터의 개수는 자유롭게 정할 수 있다.

```swift
ex) var person: (String, Int, Double) = ("chulsoo", 100, 182.5)
    // String, Int, Double 타입을 갖는 기본적인 튜플형태
```

##컬렉션 타입

**튜플 외에도 많은 수의 데이터를 묶어서 저장하고 관리할 수 있는 Array, Dictionary, set등이 있다.**

##배열(Array)

**배열은 같은 타입의 데이터를 일렬로 순서대로 저장하는 형태의 컬렉션 타입**

```swift
ex) var name: Array<String> = ["chulsoo", "younghee", "kuma"]
    var name: [String] = ["chulsoo", "younghee", "kuma"]
   // 선언한 두개의 배열은 동일한 표현
   // [String]은 Array<String>의 축약표현
```

##딕셔너리(DIctionary)

**딕셔너리는 요소들이 순서 없이 키와 값의 쌍으로 구성되는 컬렉션 타입**

딕셔너리 안에는 키가 하나이거나 여러 개일 수 있다. 단, 하나의 딕셔너리 안의 키는 그 안에서 유일해야한다.

```swift
ex) var numberForName: [String: Int] = [String: Int]()
    // 키는 String, 값은 Int 타입인 빈 딕셔너리를 생성합니다.
    var numberForName: [String: Int] = ["chulsoo": 100, "jenny": 300]
    // 초기값을 주어 생성해줄 수도 있습니다.
```



 



