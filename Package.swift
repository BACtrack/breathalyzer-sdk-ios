// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "BreathalyzerSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BreathalyzerSDK",
            targets: ["BreathalyzerSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BreathalyzerSDK",
            path: "BreathalyzerSDK.xcframework"
        )
    ]
)
