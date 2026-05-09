import XCTest

final class Tests: XCTestCase {
	func testToggleRunsExpectedAppleScripts() {
		let originalRunner = DarkMode.appleScriptRunner
		var scripts = [String]()

		DarkMode.appleScriptRunner = {
			scripts.append($0)
			return nil
		}

		defer {
			DarkMode.appleScriptRunner = originalRunner
		}

		DarkMode.isEnabled = true
		DarkMode.isEnabled = false
		DarkMode.toggle()
		DarkMode.toggle(force: false)
		DarkMode.toggle(force: true)

		XCTAssertEqual(scripts, [
			#"tell application "System Events" to tell appearance preferences to set dark mode to true"#,
			#"tell application "System Events" to tell appearance preferences to set dark mode to false"#,
			#"tell application "System Events" to tell appearance preferences to set dark mode to not dark mode"#,
			#"tell application "System Events" to tell appearance preferences to set dark mode to false"#,
			#"tell application "System Events" to tell appearance preferences to set dark mode to true"#
		])
	}
}
