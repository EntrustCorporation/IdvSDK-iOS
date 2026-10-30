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
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", exact: "2.5.3"),
        .package(url: "https://github.com/bckr/MRZParser", exact: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "AnalyticsEventsCore",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsCore-100.15.1.xcframework.zip",
            checksum: "2c31156459713396ec417e4035dcc3491e5ba10a205dd7eefb8cfcbe6b428ffe"
        ),
        .binaryTarget(
            name: "AnalyticsEventsFace",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsFace-100.15.1.xcframework.zip",
            checksum: "f4732edc206b6f3d838a9b45391151adf57e311b0b5b9646681833725df06a4f"
        ),
        .binaryTarget(
            name: "AnalyticsEventsDocument",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsDocument-100.15.1.xcframework.zip",
            checksum: "de1204afa07e1abcea13e3f48d949880ecf2a2ded4855972eb983ce285254262"
        ),
        .binaryTarget(
            name: "AnalyticsEventsNFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsNFC-100.15.1.xcframework.zip",
            checksum: "1efcbfddfa29906f7d2fd3739bd6780dc7647d7592820591a9eceb6102de5358"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-100.15.1.xcframework.zip",
            checksum: "5e99f63063d870d61b2c21ceda5efef9e853b014a3db9be58ed1e0d8616a4411"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-100.15.1.xcframework.zip",
            checksum: "a89f55cdb8717624822f8e99512acddfbcc90e60d01992adebc1a227320e8ec7"
        ),
        .binaryTarget(
            name: "DeviceSecurity",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/DeviceSecurity-100.15.1.xcframework.zip",
            checksum: "e3035999e8bf4d55fc056bcb1cbfc7fcdf153f0d7d58bddc85e99a85ffd34364"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-100.15.1.xcframework.zip",
            checksum: "8d519d9fcdeeea8b1df630bd3212436f5b690996da3db239a718f67e0bebfc1f"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-100.15.1.xcframework.zip",
            checksum: "e45bc4f19d05e119fe7d306e85f1f6eb51b73f9d69150b850b865f74e5255080"
        ),
        .binaryTarget(
            name: "EntrustIdvTrial",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdvTrial-100.15.1.xcframework.zip",
            checksum: "83f1980f13dd19149348e2a8817274aaf3ef926f258eb73e0d909ed9f3d66788"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-100.15.1.xcframework.zip",
            checksum: "fd68f403b1d60e4a51f69defc44cdb85a24d0562e6eddae01e8899543ea5ce80"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-100.15.1.xcframework.zip",
            checksum: "d11c6360bbe59496d421df52c220598241210fca08efe7967c349296425ce525"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-100.15.1.xcframework.zip",
            checksum: "e44ef478bd84f3a28fcb6889c76fa9a98c31fb6392ce2c83e706890a0442733b"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-100.15.1.xcframework.zip",
            checksum: "f3da416cc02b6f5b774a24b9ec903d257aa10f4f041df1dd659e9b719ab7dfe2"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-100.15.1.xcframework.zip",
            checksum: "84d12148236adc2141f22d1a3355f8e2d47866659a16d489d37abfb3330b62dd"
        ),
        .binaryTarget(
            name: "Document",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Document-100.15.1.xcframework.zip",
            checksum: "d7aba79c20ae1111009734a53d09a0aa8ca1d54b27ce93c7b84f06650737f550"
        ),
        .binaryTarget(
            name: "NFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/NFC-100.15.1.xcframework.zip",
            checksum: "0daeafdb0011e9eda68e21d4deff6cc4d969ad996bf7d31a1377ab0dc40e01ef"
        ),
        .binaryTarget(
            name: "BiometricToken",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/BiometricToken-100.15.1.xcframework.zip",
            checksum: "5dc708bd608c44906d6a85916a0751a35d14bed207defa84c471f3142d09f766"
        ),
        .binaryTarget(
            name: "Consent",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Consent-100.15.1.xcframework.zip",
            checksum: "904c022b66a80a2e6679122572761c88be6e31afe4e31f1714b22b42faf781a3"
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
