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
                "EntrustDependencies",
                "NFCDependencies"
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
        .package(url: "https://github.com/krzyzanowskim/OpenSSL", .upToNextMajor(from: "3.6.2000")),
    ],
    targets: [
        .binaryTarget(
            name: "AnalyticsEventsCore",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsCore-100.19.0.xcframework.zip",
            checksum: "45b6930a03bdec73ed22e5207f1633a249f1a307d9de5a6080569142c4ab44f4"
        ),
        .binaryTarget(
            name: "AnalyticsEventsFace",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsFace-100.19.0.xcframework.zip",
            checksum: "97d00d0a3c0c869038fbdb04f4ab74c8e8070ec320a6dda151aa163c7dd24e8b"
        ),
        .binaryTarget(
            name: "AnalyticsEventsDocument",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsDocument-100.19.0.xcframework.zip",
            checksum: "bd9974a7b9605c3ccf99ae6523f0c98b1c55e813fae9aa316d6cee2729c9c468"
        ),
        .binaryTarget(
            name: "AnalyticsEventsNFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsNFC-100.19.0.xcframework.zip",
            checksum: "ac1bd200403a3098630b743ff1fa05602cac7fb526465c46653bc47c0b544dd4"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-100.19.0.xcframework.zip",
            checksum: "bf2917e77267ad92e1b01224dafd95f06145918b360ce490a9954759699a2d96"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-100.19.0.xcframework.zip",
            checksum: "239fc6af7ce758e482606bd76a8d09d78782dbc79b21e1050374b292056076d7"
        ),
        .binaryTarget(
            name: "DeviceSecurity",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/DeviceSecurity-100.19.0.xcframework.zip",
            checksum: "76400d4dff1802a26ad929d804832d3140d6a02ccbe8952a00e505d466672f4f"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-100.19.0.xcframework.zip",
            checksum: "02456c069ef53b52fda73442dce49326bf3737c8b478fd6a0915b72cf3c67696"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-100.19.0.xcframework.zip",
            checksum: "963b531f96514679120c97b4d386f4251522dd01ad99b769446a191b266c7181"
        ),
        .binaryTarget(
            name: "EntrustIdvTrial",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdvTrial-100.19.0.xcframework.zip",
            checksum: "85e51916b7fa9f1004ba528258ddb23a60d62e6d6dc5888343aeb6a8e9e9b315"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-100.19.0.xcframework.zip",
            checksum: "b5cd664eb1e88a43ade90b54714b0de04c63b74b59fa48360335e0a5b337535f"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-100.19.0.xcframework.zip",
            checksum: "f75c12a254744e3e49b8a69ec15d7e0c13265cc4202ddb8160d09acf80bc8959"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-100.19.0.xcframework.zip",
            checksum: "525ac77b9b97981b8b72a1b2c88c1ac895d16f47acf7649733d2e275ab44e5cb"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-100.19.0.xcframework.zip",
            checksum: "f280ad929b4bec712215bad9879e789ca55c836196a9b03301659a12eb6059e3"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-100.19.0.xcframework.zip",
            checksum: "7fc11a0b3e6027c8b0fda369426c5385a94bc21c6584e85ea205ccfac66367ef"
        ),
        .binaryTarget(
            name: "Document",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Document-100.19.0.xcframework.zip",
            checksum: "5c36f5801fc07b52096e29c178277491a7ee9f3f1be3de9ef61811a55735ef9e"
        ),
        .binaryTarget(
            name: "NFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/NFC-100.19.0.xcframework.zip",
            checksum: "fd2537f3369608cf2b2806b3247f58331fd6c4956ba91cab5db135b26781bed7"
        ),
        .binaryTarget(
            name: "BiometricToken",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/BiometricToken-100.19.0.xcframework.zip",
            checksum: "91555e3e795caff9ad1a031a7533f6290574b09612440c052f6380b4686233e2"
        ),
        .binaryTarget(
            name: "Consent",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Consent-100.19.0.xcframework.zip",
            checksum: "23e7ccac8c752362f8dc160ed0e5f11ad3e3a56561b178d7e43021897ef945e2"
        ),
        .binaryTarget(
            name: "Retry",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Retry-100.19.0.xcframework.zip",
            checksum: "2d1f94bef15e2be0bebd231c557771c9f028e94ce093b350a4dc7ad32f7cf4a6"
        ),
        .target(
            name: "EntrustDependencies",
            dependencies: [
                .product(name: "FactoryKit", package: "Factory"),
                .product(name: "MRZParserKit", package: "MRZParser"),
            ]
        ),
        .target(
            name: "NFCDependencies",
            dependencies: [
                .product(name: "OpenSSL", package: "OpenSSL"),
            ]
        )
    ]
)
