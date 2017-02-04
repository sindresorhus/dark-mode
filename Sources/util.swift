import Foundation

extension Collection {
	func stringAt(_ index: Index) -> String {
		return index >= startIndex && index < endIndex ? self[index] as! String : ""
	}
}

@discardableResult
func runAppleScript(_ source: String) -> String? {
	return NSAppleScript(source: source)!.executeAndReturnError(nil).stringValue
}

func printMultiline(_ lines: String...) {
	print(lines.joined(separator: "\n"))
}
