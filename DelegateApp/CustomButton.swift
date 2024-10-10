//
//  CustomButton.swift
//  DelegateApp
//
//  Created by brubru on 07.10.2024.
//

import UIKit

class CustomButton: UIButton {
	
	init(textButton: String, bgColor: UIColor) {
		super.init(frame: .zero)
		setupButton(text: textButton, bgColor: bgColor)
	}
	
	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

}

// MARK: - Setup View
extension CustomButton {
	private func addAction() {
		let action = UIAction { _ in
			// Здесь будет экшен кнопки
		}
		addAction(action, for: .touchUpInside)
	}
	private func setupButton(text: String, bgColor: UIColor) {
		setTitle(text, for: .normal)
		setTitleColor(.white, for: .normal)
		backgroundColor = bgColor
		layer.cornerRadius = Constant.cornerRadius
		
		heightAnchor.constraint(equalToConstant: 50).isActive = true
		widthAnchor.constraint(equalToConstant: 200).isActive = true
	}
}

// MARK: - Constants
private extension CustomButton {
	enum Constant {
		static let cornerRadius: CGFloat = 10
	}
}
