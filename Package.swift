// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "S2S_GoogleIMA",
    platforms: [.iOS(.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "S2S_GoogleIMA",
            targets: ["S2S_GoogleIMA"])
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on
        .binaryTarget(
             name: "S2S_GoogleIMA",
             url:
               "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/testing/1/S2S_GoogleIMA_1.zip",
             checksum: ""
           ),

    ]
)
