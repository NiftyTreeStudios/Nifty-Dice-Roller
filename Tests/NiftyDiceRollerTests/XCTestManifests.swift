import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Nifty_Dice_RollerTests.allTests),
    ]
}
#endif
