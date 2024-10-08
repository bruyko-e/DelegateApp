//
//  ViewController.swift
//  DelegateApp
//
//  Created by brubru on 07.10.2024.
//

import UIKit

class ViewController: UIViewController {

	private let customButton = CustomButton(textButton: "Pressed me", bgColor: .systemRed)
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		view.addSubview(customButton)
		
		setupLayout()
	}
}

extension ViewController {
	func setupLayout() {
		customButton.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			customButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
		])
	}
}
