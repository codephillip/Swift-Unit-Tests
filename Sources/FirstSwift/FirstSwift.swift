struct FirstSwift {
    var text = "Hello, World!"
}

func add(num1: Int, num2: Int) -> Int {
	print("hello")
	return num1 + num2
}


// var x = 0
// while (x < 100) {
//   print("\nValue: " + String(x));
//   x += 2
// }

// var m = 2
// repeat {
//     m *= 2
// } while m < 100
// print(m)

// for x in 0..<4 {
// 	print(String(x))
// }

// // forloop includes the last value
// for x in 0...4 {
// 	print(String(x))
// }

// // constant
// let x1 = 9
// // variable
// var y1 = 8

// func greet(name: String, age:Int) -> String {
// 	return "Hello \(name) you are \(age) years old"
// }

// func greet2(_ name: String, _ age:Int) -> String {
// 	return "Hello \(name) you are \(age) years old"
// }

func fancyStats(values: [Int]) -> (max: Int, min: Int, sum:Int) {
	var max = values[0]
	var min = values[0]
	var sum = 0

	for x in values {
		if (x > max) {
			max = x
		}
		if (x < min) {
			min = x
		}
		sum += x
	}

	return (max, min, sum)
}

// // must explicitly identity the inputs to the function
// let message = greet(name: "Phillip", age: 88)
// print(message)

// let message2 = greet2("Makarov", 33)
// print(message2)

// let value = fancyStats(values: [1,2,3,4,5,6,7])
// print("Max: " + String(value.0))
// print("Min: \(value.min)")
// print("Sum: \(value.sum)")

func eat(fruit: String) -> String {
	switch(fruit) {
	case "mango":
		return "You have eaten \(fruit)"
	case "orange", "water melon":
		return "You have eaten \(fruit)"
	default:
		return "Fruit not available"
	}
}

// var message3 = eat(fruit: "orange")
// print(message3)
// message3 = eat(fruit: "Apple")
// print(message3)

// // dictionary
// let numbers = [
// 	"prime": [2, 3, 5, 7, 11, 13],
// 	"odd": [1, 3, 5, 7, 9, 11],
// 	"even": [2, 4, 6, 8, 10]
// ]

// print(numbers)
// for (kind, numbList) in numbers {
// 	print(kind)
// 	for numb in numbList {
// 		print(numb)
// 	}
// }

// // first-class function, that returns another function
// func createIncreament() -> ((Int) -> Int) {
// 	func add(value: Int) -> Int {
// 		return value + 1
// 	}
// 	return add
// }

// var increFunction = createIncreament()
// var number = increFunction(4)
// print(number)

// // takes function as argument
// func markStudents(marks: [Int], check: (Int) -> Bool) -> Bool {
// 	for mark in marks {
// 		if check(mark) {
// 			return true
// 		}
// 	}
// 	return false
// }

// func hasPassed(mark: Int) -> Bool {
// 	return mark > 90
// }

// print(markStudents(marks: [20, 89, 50, 94], check: hasPassed))

// empty array and dictionary
// let emptyArray = [String]()
// let emptyDictionary = [String: Float]()

// // takes function as argument returns list of results
func markStudents(marks: [Int], check: (Int) -> Bool) -> [Bool] {
	var resultsList = [Bool]()
	for mark in marks {
		resultsList.append(check(mark))
	}
	return resultsList
}

func hasPassed(mark: Int) -> Bool {
	return mark > 90
}

// print(markStudents(marks: [20, 89, 50, 94, 99, 45, 93], check: hasPassed))


// simple class
// class SimpleClass {
// 	var name = "simple name"
// 	func simpleFunc() -> String {
// 		return "Hello Class \(name)"
// 	}
// }

// let simple = SimpleClass()
// print(simple.name)
// print(simple.simpleFunc())


// class with constructor, getter and setter
// class SecondClass {
// 	var name = "second class"
// 	var cashX: Double = 300000

// 	init(name: String) {
// 		self.name = name
// 	}

// 	func greet(age: Int, happy: Bool, gender: String) -> String {
// 		var emotion: String
// 		if happy {
// 			emotion = "happy"
// 		} else {
// 			emotion = "unhappy"
// 		}
// 		return "Hello \(name), you are a \(age) year old \(emotion) \(gender)"
// 	}

// 	// cripy getter and setter :)
// 	var cash: Double {
// 		get {
// 			return cashX
// 		} 
// 		set {
// 			cashX = newValue
// 		}
// 	}
// }

// var sc = SecondClass(name: "Codephillip")
// print(sc.name)
// print(sc.greet(age: 44, happy: false, gender: "male"))
// print(sc.cash)
// sc.cash = 48990000
// print(sc.cash)


// // class with willSet and didSet
// class ShareMoney {
// 	var _cash1: Double = 0
// 	var _cash2: Double = 0

// 	init(cashx1: Double, cashx2: Double) {
// 		self._cash1 = cashx1
// 		self._cash2 = cashx2
// 		/*
// 		willSet and didSet observers are not called 
// 		when a property is first initialized. 
// 		They are only called when the property’s value is 
// 		set outside of an initialization context
// 		*/
// 		cash1 = 1000
// 		cash2 = 1000
// 	}

// 	var cash1: Double {
// 		// Called before the prop is set
// 		willSet {
// 			_cash1 = newValue
// 			_cash2 = (_cash2 + _cash1 / 2)
// 		}
// 		// Called after a new val is set
// 		didSet {
// 			print("Finished changing cash1")
// 		}
// 	}

// 	var cash2: Double {
// 		willSet {
// 			_cash2 = newValue
// 			_cash1 = (_cash1 + _cash2 / 2)
// 		}
// 		didSet {
// 			print("Finished changing cash2")
// 		}
// 	}
// }

// var sm = ShareMoney(cashx1: 2000, cashx2: 3000)
// print(sm._cash1)
// print(sm._cash2)
// sm.cash1 = 40000
// sm.cash2 = 60000
// print(sm._cash1)
// print(sm._cash2)


// // simple enum
// enum SimpleEnum: Int {
// 	case one
// 	case two
// }

// let onex = SimpleEnum.one
// print(onex)
// // variable of type SimpleEnum
// var se: SimpleEnum
// se = .two
// print(se)

// switch(se) {
// case .one:
// 	print("Choose one")
// case .two:
// 	print("Choose two")
// }
// /*
// rawValue is a reference number assigned 
// by the compiler when accessing items
// */
// print(onex.rawValue)


// // ambiguous enum
// enum Color {
// 	case red, blue, green, yellow
// 	// explicitly provide rawValues
// 	// case red = 1, blue = 2, green = 3, yellow = 4
// 	func describe() -> String {
// 		// switch must be exhaustive. no need for 'default case'
// 		switch self {
// 		case .red:
// 			return "redx"
// 		case .blue:
// 			return "blue"
// 		case .green:
// 			return "green"
// 		case .yellow:
// 			return "yellow"
// 		}
// 	}
// }

// var color = Color.red
// // compiler returns variable name incase its not explicitly provided
// print(color)
// // raw value. Incase not provided, it starts from 0
// // rawValue is only provided by compiler when enum type is provided 'enum Color: Int/Double/...'
// // print(color.rawValue)
// // explicitly return your own value
// print(color.describe())


// // structures
// struct MyStruct {
// 	var One = 1
// 	var Two = 2
// 	func describe() -> String {
// 		return "Count \(One), Count \(Two)"
// 	}
// }

// var stt = MyStruct()
// print(stt.Two)

// var stt2 = MyStruct(One: 11, Two: 22)
// print(stt2)
// print(stt2.One)
// print(stt2.describe())


// // exception handling
// enum Gender{
// 	case male
// 	case female
// }

// enum CustomError: Error {
// 	case notFoundError
// 	case notNowError
// 	case callMeLaterError
// 	case videHerNow
// 	case notFunnyError
// }

// func crashOnBabe(_ age: Int, _ gender: Gender, _ hot: Bool, _ superHot: Bool) throws -> Bool {
// 	if superHot {
// 		// ofcourse we throw an error for SuperHot Babes 
// 		throw CustomError.videHerNow
// 	}
// 	else if ((age > 18 && age < 26) && (gender == .female) && hot) {
// 		return true
// 	} else {
// 		throw CustomError.notNowError
// 	}
// }

// /*
// optional returns nil or true/false
// use this incase you don't need the do-catch block
// */
// let vibeBabe1 = try? crashOnBabe(20, Gender.female, true, true)
// print(vibeBabe1)

// do {
// 	let vibeBabe2 = try crashOnBabe(21, Gender.female, true, false)
// 	print(vibeBabe2)
// } catch let error as CustomError {
// 	print("Error message \(error)")
// }

// // // specify error
// // do {
// // } catch CustomError.notNowError {
// // }

// // // generic error
// // do {
// // } catch {
// // 	print("Error message \(error)")
// // }


// // Defer
// /*
// defer is executed last, regardless of an exception 
// and called before return statement
// */
// var isGreaterThanTen = false
// func add(num1: Int, num2: Int) -> Int {
// 	var sum = 0
// 	defer {
// 		isGreaterThanTen = sum > 10
// 	}
// 	sum = num1 + num2
// 	return sum
// }

// let totalSum = add(num1: 3, num2: 10)
// print("TotalSum \(totalSum) is greater \(isGreaterThanTen)")