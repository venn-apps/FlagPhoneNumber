// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FlagPhoneNumber",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "FlagPhoneNumber",
            targets: ["FlagPhoneNumber"]
        )
    ],
    targets: [
        .target(
            name: "FlagPhoneNumber",
            path: "Sources"
        )
    ],
    swiftLanguageVersions: [.v5]
)
