import XCTest

final class Tests: XCTestCase {
	func testDarkMode() {
		let initialMode = DarkMode.isEnabled

		DarkMode.isEnabled = true
		XCTAssertTrue(DarkMode.isEnabled)

		DarkMode.isEnabled = false
		XCTAssertFalse(DarkMode.isEnabled)

		DarkMode.toggle()
		XCTAssertTrue(DarkMode.isEnabled)

		DarkMode.toggle(force: false)
		XCTAssertFalse(DarkMode.isEnabled)

		DarkMode.toggle(force: true)
		XCTAssertTrue(DarkMode.isEnabled)

		// Reset to initial mode before testing.
		DarkMode.toggle(force: initialMode)
	}
}
