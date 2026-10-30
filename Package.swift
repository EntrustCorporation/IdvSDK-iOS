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
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsCore-100.18.1.xcframework.zip",
            checksum: "b23a8bf0398d3d01c5e5cafa368d43b74a66238d5cdf6d6d7c0ed2a900633b52"
        ),
        .binaryTarget(
            name: "AnalyticsEventsFace",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsFace-100.18.1.xcframework.zip",
            checksum: "b14f24fa758fc7badcc700ba8cfa329ab824e586d50dcc4612308cd316b0943d"
        ),
        .binaryTarget(
            name: "AnalyticsEventsDocument",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsDocument-100.18.1.xcframework.zip",
            checksum: "483e6b48346c1354e370f7acd8d4f9d7e443ec2f7e33c141db261d8f2369c316"
        ),
        .binaryTarget(
            name: "AnalyticsEventsNFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsNFC-100.18.1.xcframework.zip",
            checksum: "00396eaf7819478e4dde8b9738e3a58954f7de94b877290bf4c85b7d12bcb143"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-100.18.1.xcframework.zip",
            checksum: "485b917de3ec4bf3b04fa8371dfcd19c1c8e77af2f53b004ba2a23b0e44d7559"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-100.18.1.xcframework.zip",
            checksum: "439e44031cac4d1d1aff552b737734939f3656dd3a7c375a2423e2ada6d7b510"
        ),
        .binaryTarget(
            name: "DeviceSecurity",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/DeviceSecurity-100.18.1.xcframework.zip",
            checksum: "d025a746f5b89595d4dc95862d59a5152696971258457142ee7495061ccf3135"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-100.18.1.xcframework.zip",
            checksum: "5118a9bfe8713a4ab0efd0f535a37fdddc3bbb5160e5d199b06c5d5f572d5739"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-100.18.1.xcframework.zip",
            checksum: "0b02642d219d4c6208b3f78ed5dadd302e5e890d3036d41709ce42375985889a"
        ),
        .binaryTarget(
            name: "EntrustIdvTrial",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdvTrial-100.18.1.xcframework.zip",
            checksum: "fd29a9e711a7c3c14f4d306f9be223d2b7d98396410439a26332130991d1e5a5"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-100.18.1.xcframework.zip",
            checksum: "8ea13ff0a8c3578b1b123f685b49cba0e49d1109db9772a8ff2c447d03ec3a27"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-100.18.1.xcframework.zip",
            checksum: "4b162d8ae5948445abcaf49c2cf2fc806a5d52112b0cabe3d3a6eec44dd7a2f9"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-100.18.1.xcframework.zip",
            checksum: "d7351a2efc75e8b89ec2a7c8a887770c9ee7f9e9d7702ed64a5a5fec0954648b"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-100.18.1.xcframework.zip",
            checksum: "9440f9a09a0d5afd3bd1a4e1f4f531aa353205a46ddf82380abea69a4e15d2e1"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-100.18.1.xcframework.zip",
            checksum: "b770d6e359728452411ac92f6821fa3bcbfe58bd91fdcc2a01d0b97bfc09c3cc"
        ),
        .binaryTarget(
            name: "Document",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Document-100.18.1.xcframework.zip",
            checksum: "7e02f2ac1c6c60c2fb91f540174dfe51f592c25cb815b23b953f977503068621"
        ),
        .binaryTarget(
            name: "NFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/NFC-100.18.1.xcframework.zip",
            checksum: "569c48b910d4354be1f5ced2401c053a88072ff90b0f27c6e71c42bd4895e87e"
        ),
        .binaryTarget(
            name: "BiometricToken",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/BiometricToken-100.18.1.xcframework.zip",
            checksum: "0dd27fb26f2123a2cbb9bd350267d565e86708ab0c217707f2c3760f0a0027ed"
        ),
        .binaryTarget(
            name: "Consent",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Consent-100.18.1.xcframework.zip",
            checksum: "af6fc213db7fcdd0974d476fa0c0f04a66694c3d4a6a925e40d9776e43c294c7"
        ),
        .binaryTarget(
            name: "Retry",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Retry-100.18.1.xcframework.zip",
            checksum: "bbe13ac79b5509f5d4715b8cefd7842a085615fdc4c0988e7a14569d7bba5413"
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
