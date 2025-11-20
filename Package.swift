// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Package",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v17),
        .macOS(.v13)
    ],
    products: [
        .executable(
            name: "PackageApp",
            targets: ["PackageApp"]
        )
    ],
    targets: [
        .executableTarget(
            name: "PackageApp",
            path: "Package",
            resources: [
                .process("Assets.xcassets")
            ]
        ),
        .testTarget(
            name: "PackageTests",
            dependencies: [
                .target(name: "PackageApp")
            ],
            path: "PackageTests"
        ),
        .testTarget(
            name: "PackageUITests",
            dependencies: [
                .target(name: "PackageApp")
            ],
            path: "PackageUITests"
        )
    ]
)

