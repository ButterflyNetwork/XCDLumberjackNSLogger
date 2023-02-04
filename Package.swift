// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "XCDLumberjackNSLogger",
    products: [
        .library(
            name: "XCDLumberjackNSLogger",
            targets: ["XCDLumberjackNSLogger"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/fpillet/NSLogger", branch: "master"),
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack", from: "3.7.2"),
    ],
    targets: [
        .target(
            name: "XCDLumberjackNSLogger",
            dependencies: [
                .product(name: "NSLogger", package: "NSLogger"),
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack"),
            ],
            path: "XCDLumberjackNSLogger",
            exclude: [
                "AppledocSettings.plist",
                "Info.plist"
            ],
            publicHeadersPath: "./"
        )
    ]
)
