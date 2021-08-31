import XCTest
@testable import swift_lib_03

final class swift_lib_03Tests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swift_lib_03().text, "Swift package 03 2021082702")
    }
    
    func testConcatenateStrings() {
        XCTAssertEqual(swift_lib_03().concatenateStrings(a:"Hola", b:"Mundo"),"Hola Mundo")
    }
}
