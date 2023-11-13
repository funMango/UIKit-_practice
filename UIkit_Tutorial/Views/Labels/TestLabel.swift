//
//  TestLabel.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/10.
//

import UIKit

class TestLabel {
    
    func configLbltest(_ label: UILabel) {
        label.text = "Take your time, please"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .italicSystemFont(ofSize: 17)
        label.textColor = .red
        label.numberOfLines = 0
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
    }
    
}
