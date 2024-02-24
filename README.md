[![Version](https://img.shields.io/cocoapods/v/BreathalyzerSDK.svg?style=flat)](https://cocoapods.org/pods/BreathalyzerSDK)
[![License](https://img.shields.io/cocoapods/l/BreathalyzerSDK.svg?style=flat)](http://cocoapods.org/pods/BreathalyzerSDK)
![Minimum deployment version](https://img.shields.io/badge/minimum_iOS_deployment_target-iOS13-brightgreen)


## BACtrack Breathalyzer SDK
The purpose of this SDK is to establish a connection with the BACtrack Breathalyzer products' SDK and enable users to take a test and obtain BAC results. Additionally, users can retrieve general information about the Breathalyzer, such as the serial number and battery.
For SDK documentation, visit https://developer.bactrack.com/


Table of contents
=================
* [Installation](#installation)
* [Run Demo](#run-demo)

## Installation
If you haven’t already, install the latest version of CocoaPods.
If you don’t have an existing Podfile, run the following command to create one:
`pod init`

Add this line to your Podfile:
`pod 'BreathalyzerSDK'`
Run the following command:
`pod install`
Don’t forget to use the .xcworkspace file to open your project in Xcode, instead of the .xcodeproj file, from here on out.

In the future, to update to the latest version of the SDK, run:
`pod update BreathalyzerSDK`

## Run Demo
The demo project can be found under the  Run `Examples/BreathalyzerSDKDemo` folder
In order to start testing, you need to add your API key to `BactrackViewController.h`.
After that, you can follow the next steps:

1) Run the app
2) Turn on your breathalyzer.
3) Once the nearby device is discovered, tap on `Connect Breathalyzer` to establish a connection.
4) You can now fetch information such as the serial number or battery status.
5) Additionally, you can also tap on `Start Test Countdown` to start taking a test

See video for usage reference below:


https://github.com/BACtrack/breathalyzer-sdk-ios/assets/47486976/c627e6cd-652a-498d-a648-d4b0f90a60e5


