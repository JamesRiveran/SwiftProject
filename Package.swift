// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "Swift",
    platforms: [
        .macOS(.v12), .iOS(.v15)
    ],
    dependencies: [
        // External dependencies
    ],
    targets: [
        .executableTarget(
            name: "SwiftProject",
            dependencies: []
        ),
    ]
)
