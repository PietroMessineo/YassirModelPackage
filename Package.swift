// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModelPackage",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "ModelPackage",
            targets: ["ModelPackage"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "ModelPackage",
            dependencies: [
                // "ComponentsPackage"
            ]),
        .testTarget(
            name: "ModelPackageTests",
            dependencies: ["ModelPackage"]),
    ]
)
