// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Package",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Package",
            targets: ["Package"]
        )
    ],
    targets: [
        .target(
            name: "Package",
            path: "Package/Sources",
            exclude: [],
            resources: [
                .process("../Resources")
            ]
        ),
        .testTarget(
            name: "PackageTests",
            dependencies: ["Package"],
            path: "PackageTests"
        ),
        .testTarget(
            name: "PackageUITests",
            dependencies: ["Package"],
            path: "PackageUITests"
        )
    ],
    swiftLanguageVersions: [.v5]
)

