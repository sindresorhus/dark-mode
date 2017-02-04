import XCTest

final class Tests: XCTestCase {
    func testDarkMode() {
		let initMode = DarkMode.isDark

		DarkMode.enable()
		XCTAssertTrue(DarkMode.isDark)

		DarkMode.disable()
		XCTAssertFalse(DarkMode.isDark)

		DarkMode.toggle()
		XCTAssertTrue(DarkMode.isDark)

		DarkMode.toggle(force: false)
		XCTAssertFalse(DarkMode.isDark)

		DarkMode.toggle(force: true)
		XCTAssertTrue(DarkMode.isDark)

		// Reset to initial mode before testing
		DarkMode.toggle(force: initMode)
    }
}
