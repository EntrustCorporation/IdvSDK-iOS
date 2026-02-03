//
//  SDKBaseViewController.swift
//
//  Copyright © 2016-2026 Entrust. All rights reserved.
//

import UIKit

class SDKBaseViewController: UIViewController {
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubviews()
    }

    // MARK: - Configure Subviews

    private func configureSubviews() {
        view.backgroundColor = .white

        let launchEntrustButton = UIButton(
            configuration: .borderedProminent(),
            primaryAction: UIAction(title: "Launch Entrust SDK 🚀", handler: { [weak self] _ in
                self?.launchSDK()
            })
        )

        launchEntrustButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(launchEntrustButton)

        NSLayoutConstraint.activate([
            launchEntrustButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            launchEntrustButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        launchEntrustButton.tintColor = .systemBlue
    }

    func launchSDK() {
        fatalError("Abstract function \(#function) not overridden")
    }
}
