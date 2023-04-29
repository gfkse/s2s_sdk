// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "S2S_SDK",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "S2S_SDK",
            targets: ["S2S_SDK"]
        )
    ],
    targets: [
        .target(
            name: "S2S_SDK",
            dependencies: [
                "s2s_sdk_ios",
                "GoogleInteractiveMediaAds"
            ]
        ),
        .binaryTarget(
            name: "s2s_sdk_ios",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.15.2/s2s_sdk_ios_1.15.2.zip",
            checksum: "5a9ae9d0a6a40995ecd7146024dd156cc130b41a7aef3e0780b3d97f97e01f8b"
        ),
        .binaryTarget(
            name: "GoogleInteractiveMediaAds",
            url: "https://imasdk.googleapis.com/native/downloads/ima-ios-v3.18.4.zip",
            checksum: "2ca30c7ea01452dd8b522376729831c89b449283aeecba165f6b3e748af80c41"
        )
    ]
)
