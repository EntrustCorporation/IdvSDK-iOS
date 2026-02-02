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

        let launchOnfidoButton = UIButton(
            configuration: .borderedProminent(),
            primaryAction: UIAction(title: "Launch Entrust SDK 🚀", handler: { [weak self] _ in
                self?.launchSDK()
            })
        )

        launchOnfidoButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(launchOnfidoButton)

        NSLayoutConstraint.activate([
            launchOnfidoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            launchOnfidoButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        launchOnfidoButton.tintColor = .systemBlue
    }

    func launchSDK() {
        fatalError("Abstract function \(#function) not overridden")
    }
}
