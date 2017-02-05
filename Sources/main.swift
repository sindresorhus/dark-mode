import Foundation

let VERSION = "2.0.0"

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

let arguments = CommandLine.arguments.dropFirst(1)

switch arguments.first {
case "--help"?:
	showUsage()
case "--version"?:
	print(VERSION)
case "status"?:
	print(DarkMode.isDark ? "on" : "off")
case "on"?:
	DarkMode.enable()
case "off"?:
	DarkMode.disable()
default:
	DarkMode.toggle()
}
