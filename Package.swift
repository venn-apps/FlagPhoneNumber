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
        .binaryTarget(
            name: "libPhoneNumber",
            path: "libPhoneNumber.xcframework"
        ),
        .target(
            name: "FlagPhoneNumber",
            dependencies: ["libPhoneNumber"],
            path: "Sources",
            resources: [
                .copy("Resources"),
                .copy("FlagPhoneNumber/Resources/countryCodes.json")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
