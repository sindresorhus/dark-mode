//
//  main.m
//  dark-mode
//
//  Created by Sindre Sorhus on 18/10/14.
//  Copyright (c) 2014 Sindre Sorhus. All rights reserved.
//

#import <Foundation/Foundation.h>

int main() {
	@autoreleasepool {
		NSArray *args = [[NSProcessInfo processInfo] arguments];
		NSString *mode = CFBridgingRelease(CFPreferencesCopyValue((CFStringRef)@"AppleInterfaceStyle", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost));
		NSString *newMode = [mode isEqualToString: @"Dark"] ? @"Light" : @"Dark";

		if (args.count > 1 && [args[1] isEqualToString: @"--mode"]) {
			if (args.count == 2) {
				printf("%s\n", [mode UTF8String]);
				return 0;
			}

			newMode = args[2];
		}

		CFPreferencesSetValue((CFStringRef)@"AppleInterfaceStyle", (__bridge CFPropertyListRef)(newMode), kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

		CFNotificationCenterPostNotification(CFNotificationCenterGetDistributedCenter(), (CFStringRef)@"AppleInterfaceThemeChangedNotification", NULL, NULL, YES);
	}

	return 0;
}
