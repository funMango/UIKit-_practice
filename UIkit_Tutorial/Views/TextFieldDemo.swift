//
//  TextFieldDemo.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/13.
//

import UIKit
import SwiftUI

class TextFieldDemo: UIViewController, UITextFieldDelegate {
    let textField = UITextField()
    let lbl_result = UILabel()
    let btn_change = UIButton()
    
    override func viewDidLoad() {
        textField.delegate = self
        view.backgroundColor = .white
        configTextField()
        configTextLabel()
        configChangeBtn()
        
        super.viewDidLoad()        
    }
    
    func configTextField() {
        textField.placeholder = "숫자를 입력해 주세요."
        
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = view.safeAreaLayoutGuide
        textField.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 30).isActive = true
        textField.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20).isActive = true
        textField.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20).isActive = true
    }
    
    func configTextLabel() {
        lbl_result.text = "Answer"
        
        view.addSubview(lbl_result)
        lbl_result.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            lbl_result.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lbl_result.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func configChangeBtn() {
        btn_change.setTitle("변환", for: .normal)
        btn_change.backgroundColor = .purple
        
        view.addSubview(btn_change)
        btn_change.translatesAutoresizingMaskIntoConstraints = false
        
        btn_change.addTarget(self, action: #selector(changeBtnTapped), for: .touchUpInside)
        
        let safeArea = view.safeAreaLayoutGuide
        btn_change.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -20).isActive = true
        btn_change.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20).isActive = true
        btn_change.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20).isActive = true        
    }
    
    func toInt(_ value: String) -> String {
        if let number = Int(value) {
            return String(number)
        }
        return "error"
    }
    
    @objc func changeBtnTapped() {
        let converted = toInt(textField.text ?? "")
        lbl_result.text = converted
    }
}

struct TextFieldDemo_Preview: PreviewProvider {
    static var previews: some View {
        TextFieldDemo().showPreview()
    }
}
