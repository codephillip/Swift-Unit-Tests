import XCTest
@testable import FirstSwift

class FirstSwiftTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FirstSwift().text, "Hello, World!")
        XCTAssertEqual(add(num1: 3, num2: 5), 8)
        XCTAssertEqual(fancyStats(values: [43,88,99,13]).max, 99)
        XCTAssertEqual(fancyStats(values: [43,88,99,13]).min, 13)
        XCTAssertEqual(eat(fruit: "orange"), "You have eaten orange")
        XCTAssertEqual(markStudents(marks: [20, 89, 50, 94, 99, 45, 93], check: hasPassed), [false, false, false, true, true, false, true])

    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
