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
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsCore-100.16.0.xcframework.zip",
            checksum: "c8bf045d038ec97489623c11784b0e94cdcdadcd3cc326268efa99f2063a56bf"
        ),
        .binaryTarget(
            name: "AnalyticsEventsFace",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsFace-100.16.0.xcframework.zip",
            checksum: "c09a6e1ef451fe29109754cddda1ded57615d814dc6f2695d9f42afc63f78a5d"
        ),
        .binaryTarget(
            name: "AnalyticsEventsDocument",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsDocument-100.16.0.xcframework.zip",
            checksum: "ff25e8d923832c55237fff7ce321bf00341160f459936d9560de2588e092955b"
        ),
        .binaryTarget(
            name: "AnalyticsEventsNFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsNFC-100.16.0.xcframework.zip",
            checksum: "278732c8f5d8579f9b99009b9a0b2c84062d18dd6dc34f51be466dff09b41d43"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-100.16.0.xcframework.zip",
            checksum: "e8a831f6a4a3de0080ed47f9925bee9a8b7c408e818b5c033fa174d3d4456a92"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-100.16.0.xcframework.zip",
            checksum: "183770ff809073b30a32fda152da227ae9773b6a8f5b7cc79e03c746836eee5b"
        ),
        .binaryTarget(
            name: "DeviceSecurity",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/DeviceSecurity-100.16.0.xcframework.zip",
            checksum: "5eb7771f036f412e56b4346449a0b2762890cbcc8637ff5b239e55529170c19e"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-100.16.0.xcframework.zip",
            checksum: "e7916d158cb5f67101c4154bb64f63c97a9ae27712ed20c8276a305616ba5fc0"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-100.16.0.xcframework.zip",
            checksum: "b890a7dca5864091084d94a7a90213747113aad0e9f998f209a12b8b304e59e0"
        ),
        .binaryTarget(
            name: "EntrustIdvTrial",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdvTrial-100.16.0.xcframework.zip",
            checksum: "1fa333332c08e620d26b092c4f0da1193ec1c8404ee2e16d778acae0b4fccbf1"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-100.16.0.xcframework.zip",
            checksum: "b6c60f104285a00a831c5b15870a292b7223d724bffa8666c1482d34284313c0"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-100.16.0.xcframework.zip",
            checksum: "05fd83020e4d8a84aaf89d1f3c58e25e2b78aa49957e9bb7914159aa0cde5acc"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-100.16.0.xcframework.zip",
            checksum: "77456be4a0ddf1c468f2fe73710f0c904f7677706264fdc817f96e9237a66a96"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-100.16.0.xcframework.zip",
            checksum: "a78cced91c7da04b801ca589b0ed2631e4aa77d86b056b93e5856da5c7ff64c8"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-100.16.0.xcframework.zip",
            checksum: "b18708f06bf966375af6314e8e08d9f03274133e3a1b524e75102e6bd8419c93"
        ),
        .binaryTarget(
            name: "Document",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Document-100.16.0.xcframework.zip",
            checksum: "47f6d781ce13a682d7f5cdfec6808cb729d300492bdd2764845a4f8a2afdc099"
        ),
        .binaryTarget(
            name: "NFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/NFC-100.16.0.xcframework.zip",
            checksum: "75412f68ee384bc83f51945f7f37d9ccb7c435bc08d0674b041d2cc0394e32c6"
        ),
        .binaryTarget(
            name: "BiometricToken",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/BiometricToken-100.16.0.xcframework.zip",
            checksum: "22e4e73ba0123be4ee5c18465741eb35a4bc0945afbf296593a15b75c3e6e6ff"
        ),
        .binaryTarget(
            name: "Consent",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Consent-100.16.0.xcframework.zip",
            checksum: "f2c2354b9b4e5870533af81bca12db7e1807411ed6e3e96cd62e3a9cbc467231"
        ),
        .binaryTarget(
            name: "Retry",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Retry-100.16.0.xcframework.zip",
            checksum: "f2132c56c8a61ca5d9b7636e4825d887f3ec7706213f6b4a71d6a84f54864f3d"
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
