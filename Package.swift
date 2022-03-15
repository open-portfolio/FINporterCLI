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
        .package(url: "https://github.com/openalloc/FINporter.git", from: "1.1.0"),
        .package(url: "https://github.com/openalloc/FINporterAllocSmart.git", from: "0.9.0"),
        .package(url: "https://github.com/openalloc/FINporterFido.git", from: "0.9.0"),
        .package(url: "https://github.com/openalloc/FINporterChuck.git", from: "0.9.0"),
        .package(url: "https://github.com/openalloc/FINporterTabular.git", from: "0.9.0"),
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
