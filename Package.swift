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
                "AnalyticsEvents",
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
                "AnalyticsEvents",
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
                "AnalyticsEvents",
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
                "AnalyticsEvents",
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
                "AnalyticsEvents",
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
            name: "AnalyticsEvents",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEvents-v100.1.0.xcframework.zip",
            checksum: "225849a196dda7e2e3cef43fe381f081ae59fd7b49d2f9f4cee0287de5255670"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-v100.1.0.xcframework.zip",
            checksum: "3a0492fd12cf6cc3fbc5ea468ee60522c4b4f7f1b4276bff86ae2e452cee5efd"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-v100.1.0.xcframework.zip",
            checksum: "0f06869d2fcef5e7fa9af370e6dddf66be5b5da61ef51b86928fa3f7a96eb17d"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-v100.1.0.xcframework.zip",
            checksum: "9605439ac8801748bf39e6fa5571024ab71c771f5e059e8a6d4fabf6296d493c"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-v100.1.0.xcframework.zip",
            checksum: "981094c5cc0e5137429eda5fede38358beacd9d464b4fa91b1d60fa7e2e41da5"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-v100.1.0.xcframework.zip",
            checksum: "c6ddfd6299c56139b444e2df73a6688db80eeb835aa14e3e4e558f2e235da327"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-v100.1.0.xcframework.zip",
            checksum: "0604cc6f328a10f762c58f55a7757eb7b518278695713b020622b16106718b0a"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-v100.1.0.xcframework.zip",
            checksum: "728b07cf3c039493cd7c2e9e446eb6b3c90f070fabda07929034f44e51ee111e"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-v100.1.0.xcframework.zip",
            checksum: "1bbe8cabad2568ddf1bc4b9884a44ff38e3f8b994ec9dac6535d93069d4d9edf"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-v100.1.0.xcframework.zip",
            checksum: "613604e25359673ca292571ccaff183dc7f49d8bc7ca9d00cddab46e293e7d5c"
        ),
        .binaryTarget(
            name: "BiometricToken",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/BiometricToken-v100.1.0.xcframework.zip",
            checksum: "fb0ced347974df9b60866d8c65146bea5491f0638b7447d6c450a0a5d0fbc824"
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
