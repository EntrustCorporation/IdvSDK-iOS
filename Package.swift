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
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsCore-100.13.0.xcframework.zip",
            checksum: "29de57c589d25013eff203e24c6e051a926a92fa57b020c1af71965c8fb1023f"
        ),
        .binaryTarget(
            name: "AnalyticsEventsFace",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsFace-100.13.0.xcframework.zip",
            checksum: "e4fe6d676050fdd03618bd1a79d381b9f3f7a75c968d6fcfea1728fa1527c9b9"
        ),
        .binaryTarget(
            name: "AnalyticsEventsDocument",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsDocument-100.13.0.xcframework.zip",
            checksum: "9b627f69ca8c3b12784ba0cefb84e4ab1af7e59178df847d0142944d9f5b08da"
        ),
        .binaryTarget(
            name: "AnalyticsEventsNFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsNFC-100.13.0.xcframework.zip",
            checksum: "19e91ec3baf3cf18700d915826909d3fdf3a72e3bf6c49f5ef9c39aa8fb67eee"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-100.13.0.xcframework.zip",
            checksum: "769bc6b34cb4259869da2621804424a760e4cc9690e94f7bb7c12a01254e0252"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-100.13.0.xcframework.zip",
            checksum: "70c2f4c8c19f42181ed133962fe27522133c238611e84d13c514f2147ad322a5"
        ),
        .binaryTarget(
            name: "DeviceSecurity",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/DeviceSecurity-100.13.0.xcframework.zip",
            checksum: "c0d1d90f4438d51f7ac21b4f6b9d5ff7a57dd53405ac15914f5e64113436b307"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-100.13.0.xcframework.zip",
            checksum: "f265bb17ae96b7ce2a26ef92862f815861fbd2298c2c04b8b7bcb4f1b8f98db9"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-100.13.0.xcframework.zip",
            checksum: "8d4a14280adfa8b49a31233490ad0d383c7a31539fe5de23544506c06ea2810f"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-100.13.0.xcframework.zip",
            checksum: "f6f47ea9d86d75b01141970b4240f311b147873a33a3026370bf0722d70cbaf3"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-100.13.0.xcframework.zip",
            checksum: "719da87e68049d0dc50fc49518b607cdc4091157457f0e749b55b2f7c12eb2d0"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-100.13.0.xcframework.zip",
            checksum: "47579a52b7c52dfc741e2d02689cb8a03034dee711815b0f48d171ce57df9394"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-100.13.0.xcframework.zip",
            checksum: "44da04112f41c02e854753c4074e3e1f7edbb60a6bf2200333befee7bae060bb"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-100.13.0.xcframework.zip",
            checksum: "89b785dd01905da428c78d5489af303469ef81901249e3e5a7b197252c4ed474"
        ),
        .binaryTarget(
            name: "Document",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Document-100.13.0.xcframework.zip",
            checksum: "415f7786ff171f14e8473917b5adf580e2845cf9b4d388f0084c15fadc5c7976"
        ),
        .binaryTarget(
            name: "NFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/NFC-100.13.0.xcframework.zip",
            checksum: "f4cd1683335ae3edacfe27f19603e7ac1e278438e5f0756528fd551ffa6ffc57"
        ),
        .binaryTarget(
            name: "BiometricToken",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/BiometricToken-100.13.0.xcframework.zip",
            checksum: "6d79afede9ff7fb95adfb26d81490f4ca0a12decc7731e3f7175f8fa367bc07d"
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
