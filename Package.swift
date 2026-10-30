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
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsCore-100.17.1.xcframework.zip",
            checksum: "e636916b844b5895d84bba6ff6fd6edb4b88b13c370d813c32e4953ab60ec19e"
        ),
        .binaryTarget(
            name: "AnalyticsEventsFace",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsFace-100.17.1.xcframework.zip",
            checksum: "185de334c43057ea0122a6f3bd812efa3d2ab7ff93591f0d7d1aa98bfe840e33"
        ),
        .binaryTarget(
            name: "AnalyticsEventsDocument",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsDocument-100.17.1.xcframework.zip",
            checksum: "aa4d79113c65405ed92157c2554cb1d831ad3e61d2d18a5a6f6ff34dd637dfc9"
        ),
        .binaryTarget(
            name: "AnalyticsEventsNFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEventsNFC-100.17.1.xcframework.zip",
            checksum: "77de0964c4d3f1fae66f03aa7fcdfd79050bcadcda1f3c0de026ec9ebfe83a23"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-100.17.1.xcframework.zip",
            checksum: "648714bcf8969813ce94aa5c02352e5ab88e6505985c6bf1248819b8e9d2a725"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-100.17.1.xcframework.zip",
            checksum: "6ee8f978963723bd9dc8fa041a2bb457e5d11bd6189a974d6deb019138455501"
        ),
        .binaryTarget(
            name: "DeviceSecurity",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/DeviceSecurity-100.17.1.xcframework.zip",
            checksum: "26b7c7d3008fcf9959d4e3358a8f2d1cc342f0f6f559732507cf78d75ad8f38f"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-100.17.1.xcframework.zip",
            checksum: "0f2d35f8c47e3d2ea293936758f7a12f7b16f0c94b0c34ae70fc888479db409f"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-100.17.1.xcframework.zip",
            checksum: "bca704d418ca0c9966ade1e2cc29172761a88fee9bb0f2a03da124975a22193e"
        ),
        .binaryTarget(
            name: "EntrustIdvTrial",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdvTrial-100.17.1.xcframework.zip",
            checksum: "8acc31211a4de0679d09235c09f2d8001183263772ebd90f68855ac63e621491"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-100.17.1.xcframework.zip",
            checksum: "504ddb639b834a3077a28b484ac2aa7b8cb7502de4dd320c79d5407168b02869"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-100.17.1.xcframework.zip",
            checksum: "81afbf960ddc4457ab5ee3b7e230086042c52b31db501d36d2b5738567ce134a"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-100.17.1.xcframework.zip",
            checksum: "509073625dc46dd1143d9a9862e572af2139bec993b0e1a97ba2ce6f7903a81e"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-100.17.1.xcframework.zip",
            checksum: "e0d6d8df2d270ce1235c4f70908f5c474891055e130665976563e664f82dcf8d"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-100.17.1.xcframework.zip",
            checksum: "a23c9aae43414a04e1fc9551261993edde6d9e90029dc43ab6e3c59f3ddeb616"
        ),
        .binaryTarget(
            name: "Document",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Document-100.17.1.xcframework.zip",
            checksum: "7bbbd375c92d2917c1e308bca80b8302caaf364305b32554d1135f6edfc772ae"
        ),
        .binaryTarget(
            name: "NFC",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/NFC-100.17.1.xcframework.zip",
            checksum: "64630b9e7191eb118a75a3d4581fa6575fa57eaa786772c92f94f4d5515d2ec8"
        ),
        .binaryTarget(
            name: "BiometricToken",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/BiometricToken-100.17.1.xcframework.zip",
            checksum: "2630d48715b911a118a38b1e2ab295ad4fd0b34d86454d5b9ca06c0a1d72c828"
        ),
        .binaryTarget(
            name: "Consent",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Consent-100.17.1.xcframework.zip",
            checksum: "f0e258be723547f950142f6de1aa6a89acade38a155a6288ca4d389a42e07907"
        ),
        .binaryTarget(
            name: "Retry",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Retry-100.17.1.xcframework.zip",
            checksum: "876c9a7804601215ba9a249baeeb920e772d971ce189f5232247d754494b677d"
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
