import XCTest

final class Tests: XCTestCase {
	func testAppleScriptSource() {
		XCTAssertEqual(
			DarkMode.appleScriptSource(force: true),
			#"tell application "System Events" to tell appearance preferences to set dark mode to true"#
		)
		XCTAssertEqual(
			DarkMode.appleScriptSource(force: false),
			#"tell application "System Events" to tell appearance preferences to set dark mode to false"#
		)
		XCTAssertEqual(
			DarkMode.appleScriptSource(),
			#"tell application "System Events" to tell appearance preferences to set dark mode to not dark mode"#
		)
	}
}
