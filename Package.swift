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
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", exact: "2.5.3"),
        .package(url: "https://github.com/bckr/MRZParser", exact: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "AnalyticsEvents",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEvents-v100.0.0.xcframework.zip",
            checksum: "007bcacb927bc1824f280b29133a7d14dfdd1131c1e083a5115fdc9c4128d0a7"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-v100.0.0.xcframework.zip",
            checksum: "032801931700818f8e047f6bb50d72705c3f78abc29b4a80ac10e1f39ef3993f"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-v100.0.0.xcframework.zip",
            checksum: "204a4c967e4a5fca03128e4490f9a58fe389aab54cd7a1ade5a63db3cd99b4bd"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-v100.0.0.xcframework.zip",
            checksum: "b34de96cea4faa55a8ce2bc5000d519d836a36613581b25f2785d1a26fbad46e"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-v100.0.0.xcframework.zip",
            checksum: "9f8ca0100abd125a1f06684007530db0a76b5e2be22cab4cbd84a776c2875ce1"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-v100.0.0.xcframework.zip",
            checksum: "903929c0af6257a928d7661bca7167c834fc59b3888a2c92c1b4e1fb59411874"
        ),
        .binaryTarget(
            name: "UITokens",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/UITokens-v100.0.0.xcframework.zip",
            checksum: "a1fb38f39b28c8185a57cbdaf8bfbd13b9de39da9f292726624377e0689a8d42"
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
