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
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", exact: "2.5.3"),
        .package(url: "https://github.com/bckr/MRZParser", exact: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "AnalyticsEventsCore",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsCore-100.12.0.xcframework.zip",
            checksum: "cf4b569082f090a33e8ea808143085cdb6f677b743a3a5d23bcea16a8a66ebe4"
        ),
        .binaryTarget(
            name: "AnalyticsEventsFace",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsFace-100.12.0.xcframework.zip",
            checksum: "ee4953c37165175b6fd2425906fa830ed65f3cfc57292b5943eaf31a036cd05f"
        ),
        .binaryTarget(
            name: "AnalyticsEventsDocument",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsDocument-100.12.0.xcframework.zip",
            checksum: "92f6a7ea993daa5993868823b8ab0439d8910cda166b0f7d2fdf346a30ac66ad"
        ),
        .binaryTarget(
            name: "AnalyticsEventsNFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsNFC-100.12.0.xcframework.zip",
            checksum: "471124931a9e11cca4c2cc477d28d7bb86c5c74a208f45557ec2c8210b43fde8"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-100.12.0.xcframework.zip",
            checksum: "e9ae29f516b6976fa21a340ee527d33444b77868c3801e1de297dd79cbf356a1"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-100.12.0.xcframework.zip",
            checksum: "596cc72c5efdad3dec86c258dbbae4e37fc90cf72b1b0c79ef087dd8072a3571"
        ),
        .binaryTarget(
            name: "DeviceSecurity",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/DeviceSecurity-100.12.0.xcframework.zip",
            checksum: "84954c95d2eab941ddb18469d52d8dac3cf3e72fff4e84c40d43f9dc993e3021"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-100.12.0.xcframework.zip",
            checksum: "968a3e66113f6650dda92d3eefdfeb08312cb8800cf6132509c4ea99c12b419f"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-100.12.0.xcframework.zip",
            checksum: "2fa8b5f7deed830328b669601b896bc125e625dea05e69e2d0bbcf402ec541db"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-100.12.0.xcframework.zip",
            checksum: "fe7754c88266fa7702bcec6fde37cced056c5c0fdabd1cd01748a1d5ef8d20f2"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-100.12.0.xcframework.zip",
            checksum: "08756319ed724a278c7c1ca30779e9afec8f1cbaf3c6a3720b3f6c27137c7379"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-100.12.0.xcframework.zip",
            checksum: "152640b614fe52803e125090fafea77135207ff7bfd3ece49d68feab5483c2e4"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-100.12.0.xcframework.zip",
            checksum: "545613da3e8d9f8664804dfa6c9c15a9ce7ed0b1783e09db84f746639ff95611"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-100.12.0.xcframework.zip",
            checksum: "36be184850797675d38770ce4f2bbdfd6a7ee8f7cf00de6039f01584240c1cfe"
        ),
        .binaryTarget(
            name: "Document",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Document-100.12.0.xcframework.zip",
            checksum: "8225f292efcb0c3584b42b04db3cb1c2791c09d50c746be7727cd49c27699258"
        ),
        .binaryTarget(
            name: "NFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/NFC-100.12.0.xcframework.zip",
            checksum: "787e579cc61771bf4b638ccf8ac7aa987db2a09ac818faa8f6220b62eb992206"
        ),
        .binaryTarget(
            name: "BiometricToken",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/BiometricToken-100.12.0.xcframework.zip",
            checksum: "3594023465f6d6f3b2f2489c00c9e1837d03483e2273e1d1fccacdee682e88dc"
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
