# PublicAPIMonitoringExample

This project provides an example of how to monitor your macOS/iOS/tvOS/watchOS framework's public API, 
so you can spot when unexpected breaking changes are being introduced. 
Check out [my blog series](https://chris-mash.medium.com/xcode-monitoring-your-public-api-part-1-b50a1c372cd6)
for more information.

The project is made up of two targets:

- ObjC Framework
- Swift Framework

They're very simplistic framework examples in Objective-C and Swift. Each has a build phase that runs a 
bash script from the `scripts/` folder, which will create a file (describing the public API, in both Swift and Objective-C) 
in the `api/` folder whenever that target is built.

The scripts are as follows:

- [scripts/copy_swiftinterface_from_swift_framework.sh](scripts/copy_swiftinterface_from_swift_framework.sh): Creates a file describing the Swift API of a Swift framework
- [scripts/gen_swift_api_from_objc_framework.sh](scripts/gen_swift_api_from_objc_framework.sh): Creates a file describing the Swift API of an ObjC framework
- [scripts/gen_objc_api_from_swift_framework.sh](scripts/gen_objc_api_from_swift_framework.sh): Creates a file descriving the ObjC API of a Swift framework
- [scripts/gen_objc_api_from_objc_framework.sh](scripts/gen_objc_api_from_objc_framework.sh): Creates a file describing the ObjC API of an ObjC framework
