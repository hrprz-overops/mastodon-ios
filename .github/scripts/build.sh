#!/bin/bash

set -eo pipefail

# build with SwiftPM:
# https://developer.apple.com/documentation/swift_packages/building_swift_packages_or_apps_that_use_them_in_continuous_integration_workflows

xcodebuild -workspace Mastodon.xcworkspace \
	-scheme Mastodon \
 	-destination "platform:iOS,id:dvtdevice-DVTiPhonePlaceholder-iphoneos:placeholder,name:Any iOS Device" \
	clean \
	build | xcpretty
