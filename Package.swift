// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMTargetImportSample",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPMTargetImportSample",
            targets: ["SPMTargetImportSample", "Module1", "Module2", "Core"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SPMTargetImportSample",
            dependencies: []),
        .target(name: "Module1", dependencies: []),
        .target(name: "Module2", dependencies: []),
        .target(name: "Core", dependencies: []),
        .testTarget(
            name: "SPMTargetImportSampleTests",
            dependencies: ["SPMTargetImportSample", "Module1", "Module2"]),
    ]
)
