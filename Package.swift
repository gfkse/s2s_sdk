// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "S2S_SDK",
    platforms: [.iOS(.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "S2S_SDK",
            targets: ["s2s_sdk_ios"])
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on
        .binaryTarget(
             name: "s2s_sdk_ios",
             url:
               "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/testing/1/s2s_sdk_ios_1.zip",
             checksum: "7adc094d6a6233366fd72d076aa2812f89b3a83cb9fa8da0aae79c0ba7b96e4d"
           ),

    ]
)
