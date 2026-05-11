import AppKit

enum DarkMode {
	private static let prefix = #"tell application "System Events" to tell appearance preferences to"#

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

	static func appleScriptSource(force: Bool? = nil) -> String {
		let value = force.map(String.init) ?? "not dark mode"
		return "\(prefix) set dark mode to \(value)"
	}

	static func toggle(force: Bool? = nil) {
		runAppleScript(appleScriptSource(force: force))
	}
}
