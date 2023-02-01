#!/bin/bash

set -eo pipefail

# build with SwiftPM:
# https://developer.apple.com/documentation/swift_packages/building_swift_packages_or_apps_that_use_them_in_continuous_integration_workflows

xcodebuild -workspace Mastodon.xcworkspace \
	-scheme Mastodon \
 	-destination "platform:iOS Simulator, id:B25A0228-F51A-40C2-8C14-91C624D7C837, OS:16.0, name:iPhone 14" \
	clean \
	build | xcpretty
