import AppKit

enum DarkMode {
	private static let prefix = #"tell application "System Events" to tell appearance preferences to"#
	static var appleScriptRunner: (String) -> String? = runAppleScript

	static var isEnabled: Bool {
		get {
			if #available(macOS 10.14, *) {
				return NSAppearance.current.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
			} else {
				return UserDefaults.standard.string(forKey: "AppleInterfaceStyle") == "Dark"
			}
		}
		set {
			toggle(force: newValue)
		}
	}

	static func toggle(force: Bool? = nil) {
		let value = force.map(String.init) ?? "not dark mode"
		_ = appleScriptRunner("\(prefix) set dark mode to \(value)")
	}
}
