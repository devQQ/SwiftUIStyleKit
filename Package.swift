// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIStyleKit",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftUIStyleKit",
            targets: ["SwiftUIStyleKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/devQQ/SwiftUIToolbox", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/devQQ/SwiftImageService", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/devQQ/NVActivityIndicatorView", .upToNextMajor(from: "5.1.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftUIStyleKit",
            dependencies: ["NVActivityIndicatorView", "SwiftUIToolbox", "SwiftImageService"]),
        .testTarget(
            name: "SwiftUIStyleKitTests",
            dependencies: ["SwiftUIStyleKit"]),
    ]
)
