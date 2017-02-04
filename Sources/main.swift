import Foundation

let VERSION = "1.0.1"

func showUsage() {
	printMultiline(
		"",
		"  Usage",
		"    $ dark-mode [command]",
		"",
		"  Commands",
		"    <none>  Toggle dark mode",
		"    on      Enable dark mode",
		"    off     Disable dark mode",
		"    status  Dark mode status",
		"",
		"  Created by Sindre Sorhus"
	)
}

let arguments = Array(CommandLine.arguments.dropFirst(1))

switch arguments.stringAt(0) {
case "--help":
	showUsage()
case "--version":
	print(VERSION)
case "status":
	print(DarkMode.isDark ? "on" : "off")
case "on":
	DarkMode.enable()
case "off":
	DarkMode.disable()
default:
	DarkMode.toggle()
}
