// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PHBApplying",
    // Note: This must be equivalent to the version in PHBApplying.podspec
    platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "PHBApplying",
            targets: ["PHBApplying"]),
    ],
    targets: [
        .target(
            name: "PHBApplying",
            dependencies: []),
    ],
    // Note: This must be equivalent to the version in PHBApplying.podspec
    swiftLanguageVersions: [.v5]
)
