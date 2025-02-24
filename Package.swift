// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GraphZahl",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "GraphZahl",
                 targets: ["GraphZahl"]),
    ],
    dependencies: [
        .package(url: "https://github.com/GraphQLSwift/GraphQL.git", .upToNextMajor(from: "1.1.7")),
        .package(url: "https://github.com/nerdsupremacist/Runtime.git", from: "2.1.2-beta.12"),
        .package(url: "https://github.com/nerdsupremacist/ContextKit.git", from: "0.2.1"),
    ],
    targets: [
        .target(
            name: "GraphZahl",
            dependencies: ["GraphQL", "Runtime", "CContext", "ContextKit"]
        ),

        .testTarget(
            name: "GraphZahlTests",
            dependencies: ["GraphZahl"]),

        .target(name: "CContext"),
    ]
)
