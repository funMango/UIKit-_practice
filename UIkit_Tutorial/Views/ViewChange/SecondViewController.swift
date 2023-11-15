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
    
    lazy var button: UIButton = {
        let btn = UIButton(frame: CGRect(x: view.frame.width/2 - 75, y: 650, width: 150, height: 50),
                           primaryAction: UIAction(handler: { _ in
            // 서브스크립트로 접근하기
            let fisrtIndex = self.navigationController!.viewControllers.startIndex
            let firstVC = self.navigationController?.viewControllers[fisrtIndex] as! FirstViewController
            
            // 데이터 전달
            firstVC.titleLabel.text = "Changed"
            self.navigationController?.popViewController(animated: true)
        }))
        btn.setTitle("전달하고 뒤로가기", for: .normal)
        btn.backgroundColor = .systemBlue
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationItem.title = "SecondVC"
        layout()
    }
    
    func layout() {
        self.view.addSubview(titleLabel)
        self.view.addSubview(button)
        
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
