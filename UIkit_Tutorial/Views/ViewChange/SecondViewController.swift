//
//  SecondViewController.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/15.
//

import UIKit
import SwiftUI

class SecondViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Second View"
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationItem.title = "SecondVC"
        layout()
        
    }
    
    func layout() {
        self.view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }

    struct SecondViewController_Preview: PreviewProvider {
        static var previews: some View {
            SecondViewController().showPreview()
        }
    }

}
