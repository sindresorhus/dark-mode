import Foundation

struct DarkMode {
	private static let prefix = "tell application \"System Events\" to tell appearance preferences to"

	static var isEnabled: Bool {
		get {
			UserDefaults.standard.string(forKey: "AppleInterfaceStyle") ?? "" == "Dark"
		}
		set {
			toggle(force: newValue)
		}
	}

	static func toggle(force: Bool? = nil) {
		let value = force.map(String.init) ?? "not dark mode"
		runAppleScript("\(prefix) set dark mode to \(value)")
	}
}
