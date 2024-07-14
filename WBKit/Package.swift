// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WBKit",
    defaultLocalization: "ru",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "SharedResources", targets: ["SharedResources"]),
        .library(name: "CommonUI", targets: ["CommonUI"])
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: Version(5 ,7 ,1))
    ],
    targets: [
        .target(
            name: "CommonUI",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit")
            ]
        ),
        .target(
            name: "SharedResources",
            dependencies: [],
            resources: [.process("Resources")]
        )
    ]
)
