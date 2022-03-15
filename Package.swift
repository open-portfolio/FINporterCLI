// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FINporterCLI",
    platforms: [.macOS(.v10_12)],
    products: [
        .executable(
            name: "finport",
            targets: ["FINporterCLI"]),
    ],
    dependencies: [
        .package(name: "FINporter", path: "../FINporter"),
        .package(name: "FINporterAllocSmart", path: "../FINporterAllocSmart"),
        .package(name: "FINporterFido", path: "../FINporterFido"),
        .package(name: "FINporterChuck", path: "../FINporterChuck"),
        .package(name: "FINporterTabular", path: "../FINporterTabular"),
        //.package(url: "https://github.com/openalloc/FINporter.git", from: "1.1.0"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "0.4.3"),
    ],
    targets: [
        .executableTarget(
            name: "FINporterCLI",
            dependencies: [
                "FINporter",
                "FINporterAllocSmart",
                "FINporterFido",
                "FINporterChuck",
                "FINporterTabular",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ],
            path: "Sources"
        ),
    ]
)
