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
                "UITokens"
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
                "TranslationKeys"
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
                "TranslationKeys"
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
                "TranslationKeys"
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
                "TranslationKeys"
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
                "TranslationKeys"
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
                "TranslationKeys"
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
                "TranslationKeys"
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
                "TranslationKeys"
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/OpenSSL", .upToNextMajor(from: "3.6.2000")),
    ],
    targets: [
        .binaryTarget(
            name: "AnalyticsEventsCore",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsCore-100.20.0.xcframework.zip",
            checksum: "550c72f8078a8f03fe4a0da6330ff37261d52c470b1d00661ead02357b853701"
        ),
        .binaryTarget(
            name: "AnalyticsEventsFace",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsFace-100.20.0.xcframework.zip",
            checksum: "d2ae9088460ab8a6a0456e12d7d3d69214fe0b093a939416199864c97dc862a8"
        ),
        .binaryTarget(
            name: "AnalyticsEventsDocument",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsDocument-100.20.0.xcframework.zip",
            checksum: "db9184708de4a81ff4e55113a7dbf1cff5be3914522a9ba91fe05fdf3f6b4dde"
        ),
        .binaryTarget(
            name: "AnalyticsEventsNFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsNFC-100.20.0.xcframework.zip",
            checksum: "b1492934ab2445e4be87f355699a365b9b8208076fc95750b202ef27fff4d5f0"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-100.20.0.xcframework.zip",
            checksum: "9fd6a25027b846522e282f0ca0bbca2ba91f08c1919494b9a654439934483dcc"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-100.20.0.xcframework.zip",
            checksum: "39d88c8ccbea3cae763c712aba516a582fe505428ee1e8aec3ed82fce22cc774"
        ),
        .binaryTarget(
            name: "DeviceSecurity",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/DeviceSecurity-100.20.0.xcframework.zip",
            checksum: "c4225593837d3394fe7eeb67db5f62b77eca42a8562ecd836f81344032cc14ff"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-100.20.0.xcframework.zip",
            checksum: "bbf22a42f91fa73c5d8c11806c49411a8d2889cb7541c90ae2598f2d4e5608ca"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-100.20.0.xcframework.zip",
            checksum: "815a125943bf3a89b3948f0494de40384d90d85a89fe6889e72ee66fd3f264a0"
        ),
        .binaryTarget(
            name: "EntrustIdvTrial",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdvTrial-100.20.0.xcframework.zip",
            checksum: "0471aab52deed8c135912d2114cb177b9b3cb97fee398190d15fa5b4f17388cd"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-100.20.0.xcframework.zip",
            checksum: "e1d431ad795a4290f0adea35ddc88867ebc1dc1c6a3b194a4590546948eda9c9"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-100.20.0.xcframework.zip",
            checksum: "3f7405a0f2c7796ab1faf1c71be8a83a307c5e844c0457fdfb3064924a11562f"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-100.20.0.xcframework.zip",
            checksum: "555419f206a8388633a37ba824178fb0474a10ffa787fb68558996e6e9bdbeab"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-100.20.0.xcframework.zip",
            checksum: "148aae68be1f9e560d7d7b7b91bf675cffa367a132915aa3593ba940fdb3e6ba"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-100.20.0.xcframework.zip",
            checksum: "8639c59e3c25db463a959629a0cf4a570c76d985afa7df5ff8a8cecd61db1bcb"
        ),
        .binaryTarget(
            name: "Document",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Document-100.20.0.xcframework.zip",
            checksum: "d00fac80816f8b92d17eaea42a71f9639c11e287030474062d68647bdb4c0fa4"
        ),
        .binaryTarget(
            name: "NFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/NFC-100.20.0.xcframework.zip",
            checksum: "3230018c9a8b58f94e7369ff2d4003f61bfde88ad0e67c10c47ca73d70803d5f"
        ),
        .binaryTarget(
            name: "BiometricToken",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/BiometricToken-100.20.0.xcframework.zip",
            checksum: "3e97cb7d7ac3c42adf11ddf5ab44bd59a313de8916477abcceafe551b97784f6"
        ),
        .binaryTarget(
            name: "Consent",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Consent-100.20.0.xcframework.zip",
            checksum: "dde5e7a23905d38b136cda91632449b14e6791c62a99e82396c902cba3a85f2d"
        ),
        .binaryTarget(
            name: "Retry",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Retry-100.20.0.xcframework.zip",
            checksum: "0778ac71c9e688f7505bb8be08df7803676533f0c431e4116419078abd989694"
        ),
        .target(
            name: "NFCDependencies",
            dependencies: [
                .product(name: "OpenSSL", package: "OpenSSL"),
            ]
        )
    ]
)
