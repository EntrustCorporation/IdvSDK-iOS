// swift-tools-version: 5.10
import PackageDescription
let package = Package(
    name: "EntrustIdv",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "EntrustIdv",
            targets: [
                "EntrustIdv",
                "Core",
                "AnalyticsEventsCore",
                "CaptureContract",
                "EntrustCaptureAPI",
                "TranslationKeys",
                "UITokens",
                "EntrustDependencies"
            ]
        ),
        .library(
            name: "Welcome",
            targets: [
                "Welcome",
                "EntrustIdv",
                "Core",
                "AnalyticsEventsCore",
                "CaptureContract",
                "EntrustCaptureAPI",
                "TranslationKeys",
                "EntrustDependencies"
            ]
        ),
        .library(
            name: "FacePhoto",
            targets: [
                "FacePhoto",
                "EntrustIdv",
                "Core",
                "AnalyticsEventsCore",
                "AnalyticsEventsFace",
                "CaptureContract",
                "EntrustCaptureAPI",
                "TranslationKeys",
                "EntrustDependencies"
            ]
        ),
        .library(
            name: "FaceMotion",
            targets: [
                "FaceMotion",
                "EntrustIdv",
                "Core",
                "AnalyticsEventsCore",
                "AnalyticsEventsFace",
                "CaptureContract",
                "EntrustCaptureAPI",
                "TranslationKeys",
                "EntrustDependencies"
            ]
        ),
        .library(
            name: "BiometricToken",
            targets: [
                "BiometricToken",
                "EntrustIdv",
                "Core",
                "AnalyticsEventsCore",
                "CaptureContract",
                "EntrustCaptureAPI",
                "TranslationKeys",
                "EntrustDependencies"
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", exact: "2.5.3"),
        .package(url: "https://github.com/bckr/MRZParser", exact: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "AnalyticsEventsCore",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsCore-100.5.0.xcframework.zip",
            checksum: "b1e7677539a06d8dbcfaf80f921dc7fbfc8db51fde0ce96b991701213ec26c2d"
        ),
        .binaryTarget(
            name: "AnalyticsEventsFace",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsFace-100.5.0.xcframework.zip",
            checksum: "7d12f47bba03fcac94d4d8661f375a5bee8a3e4647e78936c85fe5eea5710888"
        ),
        .binaryTarget(
            name: "AnalyticsEventsDocument",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsDocument-100.5.0.xcframework.zip",
            checksum: "60dcbe07d6f7137d1d64023af693228664eb1b126c77e879087d46755062f5a7"
        ),
        .binaryTarget(
            name: "AnalyticsEventsNFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsNFC-100.5.0.xcframework.zip",
            checksum: "06d92fc51c5ccd18048a03193f0c72c53608af9aeb3f270a0690600256c83812"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-100.5.0.xcframework.zip",
            checksum: "f35f779f10d5de223b5bf8930aca70562a66fc268584d5a9d74eebd110ae1f13"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-100.5.0.xcframework.zip",
            checksum: "6cf2834a8917c07d326b5704fa712d7138e4a791c1e03b51e8d1862f0fdd3d32"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-100.5.0.xcframework.zip",
            checksum: "71e4f39a3d44f9359f9519a4cd5884558ab10920f92a7c905ce1bbdb93c62dc1"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-100.5.0.xcframework.zip",
            checksum: "051587d34bf3916cd64de977c99212500ee765e414a5cc37775bf930a949a289"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-100.5.0.xcframework.zip",
            checksum: "7714d173759386311f421d2d13cb6e4549817e6853c1aa162b7ca37580b3646c"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-100.5.0.xcframework.zip",
            checksum: "8f76c94fd4c0edf3e8d78d472edec5bfc0ece66a0207d450fb3426da49f28e83"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-100.5.0.xcframework.zip",
            checksum: "aa0c46bca0a8f620092a98475e6c6dc5f60f4fe45205090e1e41bf0ab33cc89c"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-100.5.0.xcframework.zip",
            checksum: "af8f889353c4ff812e38648006e96840ffd5405d99c49fb44d4a6ca687e9abc1"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-100.5.0.xcframework.zip",
            checksum: "b86526ad8a3eb1c6502f5f42109b63a3073c9b93db3c497d2b2a3533be45625d"
        ),
        .binaryTarget(
            name: "BiometricToken",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/BiometricToken-100.5.0.xcframework.zip",
            checksum: "759fa82a950c3572b651fd68c42fa456bbd46f7b1d5d9b6bb5acea13c07fcbd8"
        ),
        .target(
            name: "EntrustDependencies",
            dependencies: [
                .product(name: "FactoryKit", package: "Factory"),
                .product(name: "MRZParserKit", package: "MRZParser"),
            ]
        )
    ]
)
