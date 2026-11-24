// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkMediationPubNativeAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationPubNativeAdapter",
            targets: ["AnyThinkMediationPubNativeAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/vervegroup/hybid-ios-spm-sdk.git", exact: "3.9.3")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkPubNativeAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkPubNativeAdapter/3.9.3.2.10/AnyThinkPubNativeAdapter-3.9.3.2.10.zip",
            checksum: "TODO_CHECKSUM"
        ),
        .target(
            name: "AnyThinkMediationPubNativeAdapterTarget",
            dependencies: [
                "AnyThinkPubNativeAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "HyBid", package: "hybid-ios-spm-sdk")
            ],
            path: "Sources/AnyThinkMediationPubNativeAdapterTarget"
        )
    ]
)
