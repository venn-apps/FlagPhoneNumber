// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FlagPhoneNumber",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "FlagPhoneNumber",
            type: .static,
            targets: ["FlagPhoneNumber"]
        )
    ],
    dependencies: [
        .package(
            name: "libPhoneNumber",
            url: "https://github.com/iziz/libPhoneNumber-iOS.git",
            .branch("master")
        )
    ],
    targets: [
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
