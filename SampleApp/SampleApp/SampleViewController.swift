//
//  SampleViewController.swift
//
//  Copyright © 2016-2026 Entrust. All rights reserved.
//

import EntrustIdv
import UIKit

class SampleViewController: SDKBaseViewController {
    // Create a SDK token for this applicant in your backend and use it here
    private let sdkToken = "<Your sdk token>"

    // For Studio flows, create a Studio-type SDK token for this applicant instead (in your backend) and use it here
    // Workflow Run ID is required for Studio-type SDK tokens and it's embedded in the studio token
    private let studioToken = "Your studio token"

    // Language keys: https://sdk.onfido.com/capture/i18n/index.json
    // Custom translations for a module name and a language: https://sdk.onfido.com/capture/i18n/welcome/en_US.min.json
    // Commons translations for a language: https://sdk.onfido.com/capture/i18n/common/en_US.min.json
    let customTranslations = Localisation(
        language: "en_US",
        allowedLanguages: ["en_US"],
        overrides: [
            "en_US": [
                "welcome.title": "Custom welcome title",
                "welcome.button.default": "Custom button text"
            ]
        ],
    )

    let customTheme = Theme(
        mode: .light,
        branding: Branding(
            text: "Brand Name",
            logo: "<logo_file_path>",
        ),
        lightColors: [
            .backgroundColorOverlay: "#10598A85"
        ],
        darkColors: [
            .backgroundColorOverlay: "#10598A85"
        ],
    )

    override func launchSDK() {
        // Setting up callbacks
        let callbacks = Callbacks(onComplete: onComplete, onError: onError, onUserExit: onUserExit)

        // Configuring the SDK for a studio flow
        let configuration = Configuration(
            theme: customTheme,
            localisation: customTranslations
        )
        let studioSDKParameters = StudioParameters(
            sdkToken: studioToken,
            configuration: configuration
        )
        // Classic flow example (unused)
        _ = ClassicParameters(
            sdkToken: sdkToken,
            steps: [Welcome(), Document(), FaceMotion()], // example step configuration
            configuration: configuration
        )

        // Initialising the SDK
        let entrustSDK = EntrustIdv(
            sdkParameters: studioSDKParameters,
            callbacks: callbacks
        )

        // Launching the flow
        entrustSDK.start(from: self)
    }

    func onComplete(results: [String: any CaptureResult]) {
        print("Completed with results: \(results)")
        dismiss(animated: true)
    }

    func onError(error: IdvError) {
        print("Encountered an error: \(error)")
        dismiss(animated: true)
    }

    func onUserExit(reason: UserAction) {
        print("User exit: \(reason)")
        dismiss(animated: true)
    }
}
