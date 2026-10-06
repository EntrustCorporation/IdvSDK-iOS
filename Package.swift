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
                "DeviceSecurity",
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
                "DeviceSecurity",
                "EntrustCaptureAPI",
                "TranslationKeys",
                "EntrustDependencies"
            ]
        ),
        .library(
            name: "Document",
            targets: [
                "Document",
                "EntrustIdv",
                "Core",
                "AnalyticsEventsCore",
                "AnalyticsEventsDocument",
                "CaptureContract",
                "DeviceSecurity",
                "EntrustCaptureAPI",
                "TranslationKeys",
                "EntrustDependencies"
            ]
        ),
        .library(
            name: "NFC",
            targets: [
                "NFC",
                "EntrustIdv",
                "Core",
                "AnalyticsEventsCore",
                "AnalyticsEventsNFC",
                "CaptureContract",
                "DeviceSecurity",
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
        .library(
            name: "Consent",
            targets: [
                "Consent",
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
            name: "EntrustIdvTrial",
            targets: [
                "EntrustIdvTrial",
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
            name: "Retry",
            targets: [
                "Retry",
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
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsCore-100.17.0.xcframework.zip",
            checksum: "1f8b7e8249dcabe3d0976fd0b57f169946d401daff1bff5799cb138b9208a2f0"
        ),
        .binaryTarget(
            name: "AnalyticsEventsFace",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsFace-100.17.0.xcframework.zip",
            checksum: "1027770c86b9023aac3da530ea7669e25847639853eb09ddb00e06b3d39fe97c"
        ),
        .binaryTarget(
            name: "AnalyticsEventsDocument",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsDocument-100.17.0.xcframework.zip",
            checksum: "c995e7fd4141237548ab3f8ac02250bb1b55ed9a01e6bfbd4a9598053b4c6f55"
        ),
        .binaryTarget(
            name: "AnalyticsEventsNFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsNFC-100.17.0.xcframework.zip",
            checksum: "3d2406f6a02e8a9d585847e803b59f1c7d12e2c58be927a76842e789f24bb2c3"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-100.17.0.xcframework.zip",
            checksum: "4caa94a2feef96873904ae0fd3a2450ff7662ba41378f86d40e2f952c27c04fb"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-100.17.0.xcframework.zip",
            checksum: "3f4b9dffa60a12aee0e3743e2f336b5adacfd5b03a59e017cadc3c64d6f50cf0"
        ),
        .binaryTarget(
            name: "DeviceSecurity",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/DeviceSecurity-100.17.0.xcframework.zip",
            checksum: "7e453b195c4148f6c48041b74d06a1cca5f62c9b8c373387745bdea979185de8"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-100.17.0.xcframework.zip",
            checksum: "d309bd822cecaa68208cf87e78362350703a88eda88bb3b720370958104884ed"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-100.17.0.xcframework.zip",
            checksum: "19329fce58b2d55ffb990f22fb31545e498118c206bf93fc143bd47e0190e8f8"
        ),
        .binaryTarget(
            name: "EntrustIdvTrial",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdvTrial-100.17.0.xcframework.zip",
            checksum: "8d1dadf6751680536d22898414379607e041d9970fcdfcdd2a4725d666c57136"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-100.17.0.xcframework.zip",
            checksum: "e1122752b1424731b672054cca9b54a5ce0f52d23d50ff0adf0210a3ecddc9c9"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-100.17.0.xcframework.zip",
            checksum: "559f39209921811ec09cfb001e1afcdf2cc33bea2a493afef96392067fc72946"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-100.17.0.xcframework.zip",
            checksum: "381e8c723ef0002b5fb3c7e5fe25f988b95f95e5de1bb0d191edc9a7edf5d1c6"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-100.17.0.xcframework.zip",
            checksum: "c25818365e60c8933f255a6adb4b43efe95f7d0b3b28e6882c665285a394fbf5"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-100.17.0.xcframework.zip",
            checksum: "8f03569292a23cb0b004e02158ed29af84c971254cb668449df58f7fe1314c16"
        ),
        .binaryTarget(
            name: "Document",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Document-100.17.0.xcframework.zip",
            checksum: "40dabde8d65b3864104ba7f3fbe6c148f4731141db764e3876077834b438802e"
        ),
        .binaryTarget(
            name: "NFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/NFC-100.17.0.xcframework.zip",
            checksum: "c1527ed9c50cb50a20cc4c2ac856de465d27adcb8c950ed076a7d37a6943ab90"
        ),
        .binaryTarget(
            name: "BiometricToken",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/BiometricToken-100.17.0.xcframework.zip",
            checksum: "6517d2e79b29e0360211840b94a0832a5d4ba275a166496adc199e2c986d0ad0"
        ),
        .binaryTarget(
            name: "Consent",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Consent-100.17.0.xcframework.zip",
            checksum: "116b18883da05da1a81156b8160dda7259ae71501618caa92c9f1b993c28d9ae"
        ),
        .binaryTarget(
            name: "Retry",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Retry-100.17.0.xcframework.zip",
            checksum: "6f8128efe0ff2f72594ac77bf708d6ce1d7b2a5a2f7c12f03880c3fc59ab6b45"
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
