# PublicAPIMonitoringExample

This project provides an example of how to monitor your macOS/iOS/tvOS/watchOS framework's public API, 
so you can spot when unexpected breaking changes are being introduced, it's the companion to
[my blog on the same subject](https://chris-mash.medium.com/xcode-monitoring-your-public-api-part-1-b50a1c372cd6).

The project is made up of two targets:

- ObjC Framework
- Swift Framework

They're very simplistic framework examples in Objective-C and Swift. Each has a build phase that runs a 
script from the `scripts/` folder, which will create a file (describing the public API) in the `api/` 
folder whenever that target is built.
