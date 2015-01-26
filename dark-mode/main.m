//
//  main.m
//  dark-mode
//
//  Created by Sindre Sorhus on 18/10/14.
//  Copyright (c) 2015 Sindre Sorhus. All rights reserved.
//

#import <Foundation/Foundation.h>

int main() {
	@autoreleasepool {
		NSArray *args = [[NSProcessInfo processInfo] arguments];
		NSString *mode = CFBridgingRelease(CFPreferencesCopyValue((CFStringRef)@"AppleInterfaceStyle", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost));
		NSString *newMode = [mode isEqualToString: @"Dark"] ? @"Light" : @"Dark";

		if (args.count > 1) {
			if ([args[1] isEqualToString: @"--version"]) {
				puts("1.0.1");
				return 0;
			}

			if ([args[1] isEqualToString: @"--help"]) {
				puts("\n  Usage:\n    dark-mode [--mode]\n\n  Options:\n    --mode  Get or set the mode: Dark|Light\n\n  Created by Sindre Sorhus");
				return 0;
			}

			if ([args[1] isEqualToString: @"--mode"]) {
				if (args.count == 2) {
					printf("%s\n", [mode UTF8String]);
					return 0;
				}

				newMode = args[2];
			}
		}

		CFPreferencesSetValue((CFStringRef)@"AppleInterfaceStyle", (__bridge CFPropertyListRef)(newMode), kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

		CFNotificationCenterPostNotification(CFNotificationCenterGetDistributedCenter(), (CFStringRef)@"AppleInterfaceThemeChangedNotification", NULL, NULL, YES);
	}

	return 0;
}
