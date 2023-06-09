.PHONY: info build test clean

info:
	xcodebuild -list
	xcrun simctl list

build:
	xcodebuild build \
		-destination 'platform=iOS Simulator,name=iPhone 14 Pro,OS=16.4' \
		-scheme HelloWorldIos

test:
	xcodebuild test \
		-destination 'platform=iOS Simulator,name=iPhone 14 Pro,OS=16.4' \
		-scheme HelloWorldIos

clean:
	xcodebuild clean
