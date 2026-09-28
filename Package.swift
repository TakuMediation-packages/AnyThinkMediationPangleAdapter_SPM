// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationPangleAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationPangleAdapter",
            targets: ["AnyThinkMediationPangleAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "8.2.1-release.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkPangleAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkPangleAdapter/8.2.1.0.2.0/AnyThinkPangleAdapter-8.2.1.0.2.0.zip",
            checksum: "9d6e09c22efa741be99cd00b05318f711f311cb66bcee2d118507d596ba28766"
        ),
        .target(
            name: "AnyThinkMediationPangleAdapterTarget",
            dependencies: [
                "AnyThinkPangleAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage")
            ],
            path: "Sources/AnyThinkMediationPangleAdapterTarget"
        )
    ]
)
