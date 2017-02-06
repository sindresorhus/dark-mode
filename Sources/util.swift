import Foundation

@discardableResult
func runAppleScript(_ source: String) -> String? {
	return NSAppleScript(source: source)?.executeAndReturnError(nil).stringValue
}

func printMultiline(_ lines: String...) {
	print(lines.joined(separator: "\n"))
}
