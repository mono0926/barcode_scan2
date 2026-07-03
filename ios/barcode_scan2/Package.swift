// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "barcode_scan2",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "barcode-scan2", targets: ["barcode_scan2"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.33.0")
    ],
    targets: [
        // Vendored Objective-C barcode scanner. SPM can't mix Obj-C and Swift in
        // one target, so it lives in its own module the Swift target imports.
        .target(
            name: "MTBBarcodeScanner",
            cSettings: [
                .headerSearchPath("include/MTBBarcodeScanner")
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("QuartzCore")
            ]
        ),
        .target(
            name: "barcode_scan2",
            dependencies: [
                "MTBBarcodeScanner",
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ]
        )
    ]
)
