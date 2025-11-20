// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Package",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .iOSApplication(
            name: "PackageApp",
            targets: ["PackageApp"],
            bundleIdentifier: "com.onkarrajput.package",
            teamIdentifier: "YOURTEAMID",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .asset("AppIcon"),
            accentColor: .asset("AccentColor"),
            supportedDeviceFamilies: [
                .phone,
                .pad
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .portraitUpsideDown(.when(deviceFamilies: [.pad])),
                .landscapeLeft,
                .landscapeRight
            ]
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

