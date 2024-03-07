// swift-tools-version: 5.9
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
        .package(url: "https://github.com/PietroMessineo/YassirComponentsPackage", branch: "main")
    ],
    targets: [
        .target(
            name: "ModelPackage",
            dependencies: [
                .product(name: "ComponentsPackage", package: "YassirComponentsPackage")
            ]),
        .testTarget(
            name: "ModelPackageTests",
            dependencies: ["ModelPackage"]),
    ]
)
