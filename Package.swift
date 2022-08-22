// swift-tools-version:5.5

// Copyright 2021, 2022 OpenAlloc LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

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
