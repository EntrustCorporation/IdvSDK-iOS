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
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsCore-100.15.0.xcframework.zip",
            checksum: "bd34a2ba48cfa52e00dab76cc414824a10fb90e44538af90e94ba8de6506a813"
        ),
        .binaryTarget(
            name: "AnalyticsEventsFace",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsFace-100.15.0.xcframework.zip",
            checksum: "92f1b1acacb68603447a4c445a9f48f3e15882a03661977488d8faefb4e21a1d"
        ),
        .binaryTarget(
            name: "AnalyticsEventsDocument",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsDocument-100.15.0.xcframework.zip",
            checksum: "79f0d1169963587e31c668c4cb6e387c3338ddc63358866ccbed132a0a9bd2d7"
        ),
        .binaryTarget(
            name: "AnalyticsEventsNFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsNFC-100.15.0.xcframework.zip",
            checksum: "5a94f54b534c73dffb59dd356286fc9c713b09c46e4f8f18e2f6d67d05b818b7"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-100.15.0.xcframework.zip",
            checksum: "cfd7fe544797e0f94b801ba8dc7b638572b3fb6ce5fab2757f68b1305dae7497"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-100.15.0.xcframework.zip",
            checksum: "b680591127d7bf2efac67f5ec348c3aedc08f1c33f2f70a9a41a3756db5e9d0e"
        ),
        .binaryTarget(
            name: "DeviceSecurity",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/DeviceSecurity-100.15.0.xcframework.zip",
            checksum: "fddea8a18c2be10a7c9e759caa5037a6662db8c29295055e82927aa3c46e1ec0"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-100.15.0.xcframework.zip",
            checksum: "6ab73bdb55df7ef54cdcf4a2bebaa30a6cb3c60634dd43b2b333e8b0a4550ad1"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-100.15.0.xcframework.zip",
            checksum: "aa20f668a9bcc007b5c4667aea5082c89c17dbf41d0802850148b5c945f00dbe"
        ),
        .binaryTarget(
            name: "EntrustIdvTrial",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdvTrial-100.15.0.xcframework.zip",
            checksum: "797618ac0e19c1b3e13f17cff7b1d013be1d61531d760f77f6c34941616bb5cb"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-100.15.0.xcframework.zip",
            checksum: "bff884f6c2a12514afc98b8bf53131dfde44d71fb8dcb997603bbcd51856a580"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-100.15.0.xcframework.zip",
            checksum: "458821dc10c71188fefe2ea0c08cfadc66569acd2eb2ad8a5df217d0d3c5cebc"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-100.15.0.xcframework.zip",
            checksum: "6e5694117d2a36fe576708815b9f3705609e96e1f5e1447b2fc45d4145d0b40e"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-100.15.0.xcframework.zip",
            checksum: "6fa18b8a14e8dae2ef562c72f3853d6b59ce73dd5b3ec210712851ef08f9d643"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-100.15.0.xcframework.zip",
            checksum: "c2c813b74275ca21e543697b3125cf687ee4e660423a2b8de5b8c942e2f7c63c"
        ),
        .binaryTarget(
            name: "Document",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Document-100.15.0.xcframework.zip",
            checksum: "1df14f9ae3eb62e9cde6f58137d63dc737d2d82aaf6a51453af6453f28a88fc9"
        ),
        .binaryTarget(
            name: "NFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/NFC-100.15.0.xcframework.zip",
            checksum: "da6596b0a5164733ced860efcbdaa9ddb8e1ef4213e436c77f5cc5dd83162f1b"
        ),
        .binaryTarget(
            name: "BiometricToken",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/BiometricToken-100.15.0.xcframework.zip",
            checksum: "19288f4242ad785cc3255e10204cd390d1ab14977489d278b488689923878ee2"
        ),
        .binaryTarget(
            name: "Consent",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Consent-100.15.0.xcframework.zip",
            checksum: "9bff0d1e83a67ce0f71f585d64d523c4126dcb1ad27f6e7b32d39e121824414b"
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
