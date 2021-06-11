import XCTest
@testable import NiftyDiceRoller

final class NiftyDiceRollerTests: XCTestCase {
    func testDiceRolls() {
        XCTAssertTrue(diceRoll(dice: .d4) <= 4)
        XCTAssertTrue(diceRoll(dice: .d6) <= 6)
        XCTAssertTrue(diceRoll(dice: .d8) <= 8)
        XCTAssertTrue(diceRoll(dice: .d10) <= 10)
        XCTAssertTrue(diceRoll(dice: .d12) <= 12)
        XCTAssertTrue(diceRoll(dice: .d20) <= 20)
        XCTAssertTrue(diceRoll(dice: .d100) <= 100)
    }

    static var allTests = [
        ("testExample", testDiceRolls),
    ]
}
