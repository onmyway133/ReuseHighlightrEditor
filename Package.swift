// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ReuseHighlightrEditor",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ReuseHighlightrEditor",
            targets: ["ReuseHighlightrEditor"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/raspu/Highlightr", from: "2.1.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ReuseHighlightrEditor",
            dependencies: [
                "Highlightr"
            ]
        ),
        .testTarget(
            name: "HighlightrEditorTests",
            dependencies: ["ReuseHighlightrEditor"]
        )
    ]
)
