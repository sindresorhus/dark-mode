import Foundation

@discardableResult
func runAppleScript(_ source: String) -> String? {
	NSAppleScript(source: source)?.executeAndReturnError(nil).stringValue
}

struct CLI {
	static let arguments = Array(CommandLine.arguments.dropFirst(1))
}
