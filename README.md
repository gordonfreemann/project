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

##딕셔너리(Dictionary)

**딕셔너리는 요소들이 순서 없이 키와 값의 쌍으로 구성되는 컬렉션 타입**

딕셔너리 안에는 키가 하나이거나 여러 개일 수 있다. 단, 하나의 딕셔너리 안의 키는 그 안에서 유일해야한다.

```swift
ex) var numberForName: [String: Int] = [String: Int]()
    // 키는 String, 값은 Int 타입인 빈 딕셔너리를 생성합니다.
    var numberForName: [String: Int] = ["chulsoo": 100, "jenny": 300]
    // 초기값을 주어 생성해줄 수도 있습니다.
```

##세트(set), 열거형

**나중에 정리**

#Chapter 5

##연산자

###연산자의 종류

**할당 연산자**

A=B A에 B값을 할당, 서로 다른 데이터 타입이라면 오류 발생

**산술 연산자**
산술 연산자는 대체로 수학에서 쓰이는 연산자와 같은 역할을 수행

**비교 연산자**
두 값을 비교할때 사용

참조가 같다  A === B   A와 B가 참조타입일때 같은 인스턴스를 가리키고 있는지 비교하여 불리언값을 반환( A !== B 참조가 같지 않다)

**삼항 조건 연산자**
피연산자가 세 개인 삼항 조건 연산자

Question ? A:B   Question(불리언값)이 참이면 A를  거짓이면 B를 반환

**범위 연산자**
값(수)의 범위를 나타내고자 할 때 사용

**부울 연산자**
불리언 값의 논리연산을 할 때 사용

**비트 연산자**
값의 비트 논리연산을 위한 연산자

**복합 할당 연산자**
할당 연산자와 다른 연산자가 수행하는 일을 한 번에 수행할 수 있도록 연산자를 결합

**오버플로 연산자**
기본 연산자를 통해 오버플로에 대비할 수 있도록 오버플로 연산자를 사용하면 오버플로를 자동으로 처리

**기타 연산자**

#Chapter 6

##흐름제어

###조건문

**if 구문**

스위프트의 if 구문은 조건의 값이 꼭 Bool 타입이어야 함

if구문은 else if 가 몇개씩 이어져도 상관없으며 else 블록은 없어도 됨

**switch 구문**

###반복문

**for-in 구문**

딕셔너리는 넘겨받는 값의 타입이 튜플로 지정되어 넘어옴

```swift
//Dictinary
let friend: [String: Int] = ["Jay":35, "Joe":29, "Jenny":31]

for tuple in friend{
	print(tuple)
}
//("Joe", 29)
//("Jay", 35)
//("Jenny", 31)
```

**while 구문**

**repeat-while 구문**

###구문 이름표

반복문 앞에 이름과 함께 콜론을 붙여 구문의 이름을 지정할 수 있다. 이름이 지정된 구문을 제어하고자 할 떄는 제어 키워드와 구문 이름을 함께 써주면 된다.

#Chapter 7

##함수

###함수와 메서드

함수와 메서드는 기본적으로 같고 상황이나 위치에 따라 다르게 부름

구조체, 클래스, 열거형등 특정 타입에 연관되어 사용하는 함수는 **메서드**, 모듈 전체에서 전역적으로 사용할 수 있는 함수는 그냥 **함수**라고 부름

###함수의 정의와 호출

매개변수 타입이 다르면 같은 이름의 함수를 만들 수 있음 매개변수의 개수가 달라도 같은 이름의 함수를 만들 수 있음

###매개변수

**매개변수 이름과 전달인자 레이블**

매개변수를 정의하면서 함수이름과 전달인자 레이블을 따로 지정하면 함수 내부에서 매개변수의 역할을 명확히 할 수 있다.

```swift
ex) //from 과 to라는 매개변수 이름으 가지며
    //myName과 name으로 전달인자 레이블을 가지는 sayHello 함수
    func sayHello(from myName:String, to name:String) -> String
    {
      return "Hello \(name)! I'm \(myName)"
    }

    print(sayHello(from: "chulsoo", to: "Jenny")) // Hello Jenny! I'm chulsoo

    //함수 내부에서 매개변수 이름을 사용할 수 없으며, 함수를 호출할 때 전달인자 레이블을 사용할 수 없다.
```

#Chapter 8

##옵셔널

###옵셔널 사용

오류가 발생하는 nil 할당

```swift
var myName: String = "chulsoo"
myName = nil // 오류발생
```

옵셔널 변수의 선언 및 nil 할당

```swift
var myName: String? = "chulsoo"
print(myName) // chulsoo

myName = nil

print(myName)  // nil
```

옵셔널이 쓰이는 상황은 우리가 만든 함수의 전달되는 전달인자의 값이 잘못된 값일 경우 제대로 처리하지 못했음을 nil을 반환하여 표현할 수 있다.(심각한 오류일 경우에는 별도로 처리)

###옵셔널 추출

**강제 추출**

옵셔널 강제추출 방식은 옵셔널 값을 추출하는 가장 간단한 방법이지만 **가장 위험한 방법**이다.

옵셔널의 값을 강제 추출하려면 옵셔널 값 뒤에 느낌표(!)를 붙여주면 된다. 만약, 강제 추출 시 옵셔널이 값을 가지고 있지 않다면 런타임 오류가 발생하게 된다.

**옵셔널 바인딩**

옵셔널 바인딩은 옵셔널에 값이 있는지 확인할때 사용함. 옵셔널에 값이 있다면 옵셔널에서 추출된 값을 일정 블록 안에서 사용할 수 있는 상수나 변수로 할당해서 옵셔널이 아닌 형태로 사용할 수 있도록 해줌.

옵서널 바인딩을 사용한 옵셔널 값의 추출
```swift
var myName: String? = "chulsoo"

//옵셔널 바인딩을 통한 임시 상수 할당
if let name = myName //var를 사용해서 변수로 사용 가능
{
  //변수일경우 name = "wizplan" 내부에서 값 변경 가능
  print("My name is \(name)")
}
else
{
  print("myName == nil")
}
```

###암시적 추출 옵셔널

nil을 할당하고 싶지만 옵셔널 바인딩을 사용하기 귀찮거나 런타임 오류가 발생하지 않을 확신이 들때 사용한다 사용 방법은 옵셔널을 표시하고자 하는 타입 뒤에 물음표(?)가 아닌 느낌표(!)를 사용해준다.

**하지만 오류가 생기지 않을거라는 확신은 위험하므로 가능한 옵셔널 바인딩, nil 병합 연산자, 옵셔널 체이닝 등을 사용하는게 좋다.**

#Chapter 9

##구조체와 클래스

###구조체

####구조체의 정의

**구조체 명명법**

구조체를 정의한다는 것은 새로운 타입을 생성해주는 것과 마찬가지이므로 기본타입이름 처럼 대문자 카멜케이스를 사용하여 이름을 지어주고, 프로퍼티와 메서드는 소문자 카멜케이스를 사용하여 이름을 지어준다.

```swift
ex) struct BasicStruct
    {
	var name : String
	var age : Int
    }
```

####구조체 인스터스의 생성 및 초기화

구조체의 인스턴스를 생성하고 초기화하고자 할 때에는 기본적으로 생성되는 멤버와이즈 이니셜라이저를 사용한다. 구조체에 기본 생성된 이니셜라이저의 매개변수는 구조체의 프로퍼티 이름으로 자동 지정된다.(인스턴스가 생성되고 초기화된 후 프로퍼티 값에 접근하고 싶다면 마침표(.)를 사용한다)

```swift
//프로퍼티 이름(name, age)으로 자동 생성된 이니셜라이저를 사용하여 구조체를 생성
ex) var chulsooInfo: BasicStruct = BasicStruct(name: "Chulsoo", age: 99)
    chulsooInfo.age = 100 // var로 생성되었기 때문에 값 변경 가능
    chulsooInfo.name = "Seba" // var로 생성되었기 때문에 값 변경 가능
```
기본 제공되는 멤버와이즈 이니셜라이저 외에 사용자정의 이니셜라이저도 구현 가능

###클래스

####클래스 정의

**클래스 명명법**

기본적으로 클래스 명명법은 구조체와 같다. 다만 정의할때는 구조체와 흡사하지만 클래스는 상속을 받을 수 있기 때문에 상속받을 때에는 클래스 이름 뒤에 콜론(:)을 써주고 부모클래스의 이름을 명시한다.(상속받지 않을 때에는 구조체와 동일)

```swift
ex) class 클래스 이름 : 부모클래스 이름
    {
	프로퍼티와 메서드들
    }
```

####클래스 인스턴스의 생성과 초기화

클래스의 인스턴스를 생성하고 초기화하고자 할 때에는 기본적인 이니셜라이저를 사용한다. 인스턴스가 생성되고 초기화된 후 프로퍼티 값에 접근하고 싶다면 마침표(.)를 사용하면 된다. **구조체와 다르게 클래스의 인스턴스는 참조타입이므로 클래스의 인스턴스를 상수(let)으로 선언해도 내부 프로퍼티 값을 변경할 수 있다.**

####클래스 인스턴스의 소멸

클래스의 인스턴스는 참조타입이므로 참조할 필요가 없어지면 메모리에서 해제된다. 이 과정을 소멸이라고 칭하는데 소멸되기 직전에 deinit라는 메서드가 호출된다. 보통 deinit메서드에는 인스턴스가 메모리에서 해제되기 직전에 처리할 코드를 넣어준다. 예를 들어 인스턴스 소멸 전에 데이터를 저장한다거나 다른 객체에 인스턴스 소멸을 알려야 할 때는 특히 deinit매서드를 구현해야 한다.

###구조체와 클래스의 차이

**같은점**

- 값을 저장하기 위새 프로퍼티를 정의할 수 있다.
- 기능 수행을 위해 메서드를 정의할 수 있다.
- 서브스크립트 문법을 통해 구조체 또는 클래스가 가지는 값(프로퍼티)에 접근하도록 서브스크립트를 정의할 수 있다
- 초기화 될때의 상태를 지정하기 위해 이니셜라이저를 정의할 수 있다.
- 초기구현과 더불어 새로운 기능 추가를 위해 익스텐션을 통해 확장할 수 있다.
- 특정 기능을 수행하기 위해 특정 프로토콜을 준수할 수 있다.

**다른점**

- 구조체는 상속할 수 없다.
- 타입캐스팅은 클래스의 인스턴스에만 허용된다.
- 디이니셜라이저는 클래스의 인스턴스에만 활용할 수 있다.
- 참조 횟수 계산은 클래스의 인스턴스에만 적용된다.

구조체와 클래스는 겉보기에는 많이 비슷해 보이지만 이 두 타입을 구분 짓는 가장 큰 차이점은 값 타입과 참조 타입이라는 것

####값 타입과 참조 타입

값 타입과 참조 타입의 가장 큰 차이는 **무엇이 전달되느냐**이다. 예를 들면 함수의 전달인자로 값 타입의 값을 넘긴다면 **전달될 값이 복사**되어 전달되고 참조 타입이 전달인자로 전달될 때에는 **참조(주소)가 전달**된다.

``` swift
struct Basic
{
    let name : String
    var age : Int
}

var chulsooInfo : Basic = Basic(name: "Chulsoo", age: 99)
chulsooInfo.age = 100

var friendInfo : Basic = chulsooInfo
// chulsooInfo의 값을 복사하여 할당

print(chulsooInfo.age) // 100
print(friendInfo.age) // 100

friendInfo.age = 999

print(chulsooInfo.age) // 100 chulsoo의 값은 변동이 없음
print(friendInfo.age) // 999 chulsoo의 값을 복사해 왔기 때문에 별개의 값을 가짐
```

```swift
class Person
{
    var height : Float = 0.0
    var weight : Float = 0.0
}

var chulsoo : Person = Person()
var friend : Person = chulsoo // chulsoo의 참조를 할당

print(chulsoo.height) // 0.0
print(friend.height) // 0.0

friend.height = 185.5

print(chulsoo.height) // 185.5 friend는 chulsoo를 참조하기 때문에 값이 변동됨
print(friend.height) // 185.5 이를 통해 chulsoo가 참조하는 곳과 friend가 참조하는 곳이 같음을 알 수 있다.
```

값 타입의 데이터가 함수의 전달인자로 전달되면 메모리에 전달인자를 위한 인스턴스가 새로 생선된다. 생성된 새 인스턴스에는 전달하려는 값이 복사되어 들어가게 된다.반면 참조 타입의 데이터는 전달인자로 전달될 때, 기존 인스턴스의 참조가 전달되므로 새로운 인스턴스가 아닌 기존의 인스턴스 참조가 전달된다. 함수의 전달인자뿐만 아니라 새로운 변수에 할당될 때 또한 마찬가지이다.(클래스의 인스턴스끼리 참조가 같은지 확인하려면 **식별 연산자**를 사용)

###구조체와 클래스 선택해서 사용하기

애플 가이드라인에서는 다음 조건 중 하나 이상 해당되면 구조체를 사용하기를 권함

- 연관된 간단한 값의 집합을 캡슐화하는 것만이 목적일 때
- 캡슐화된 값이 참조되는 것보다 복사되는 것이 합당할 때
- 구조체에 저장된 프로퍼티가 값 타입이며 참조되는 것보다 복사되는 것이 합당할 때- 다른 타입으로부터 상속받거나 자신이 상속될 필요가 없을 때



