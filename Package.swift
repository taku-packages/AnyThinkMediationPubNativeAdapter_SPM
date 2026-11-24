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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkPubNativeAdapter/30903.2.10/AnyThinkPubNativeAdapter-30903.2.10.zip",
            checksum: "53e31faff8d1a31bd10ca6ccfa38d498fe67bfadd9e89f5a4ef65402949c97f1"
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
