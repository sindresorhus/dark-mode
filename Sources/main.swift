import Foundation

let VERSION = "3.0.2"

func showUsage() {
	print(
		"""

		  Usage
		    $ dark-mode [command]

		  Commands
		    <none>  Toggle dark mode
		    on      Enable dark mode
		    off     Disable dark mode
		    status  Dark mode status

		  Created by Sindre Sorhus
		"""
	)
}

switch CLI.arguments.first {
case "--help":
	showUsage()
case "--version":
	print(VERSION)
case "status":
	print(DarkMode.isEnabled ? "on" : "off")
case "on":
	DarkMode.isEnabled = true
case "off":
	DarkMode.isEnabled = false
default:
	DarkMode.toggle()
}
