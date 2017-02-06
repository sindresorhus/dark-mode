import Foundation

struct DarkMode {
	private static let prefix = "tell application \"System Events\" to tell appearance preferences to"

	static var isDark: Bool {
		return Bool(runAppleScript("\(prefix) get dark mode")!)!
	}

	static func toggle(force: Bool? = nil) {
		let val = force.map(String.init) ?? "not dark mode"
		runAppleScript("\(prefix) set dark mode to \(val)")
	}

	static func enable() {
		toggle(force: true)
	}

	static func disable() {
		toggle(force: false)
	}
}
