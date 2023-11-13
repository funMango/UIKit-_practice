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
    let stack_btn = UIStackView()
    let btn_button = UIButton()
    let btn_send = UIButton()
    let lbl_result = UILabel()
    let lbl_state = UILabel()
    let btn_change = UIButton()
    
    
    override func viewDidLoad() {
        textField.delegate = self
        view.backgroundColor = .white
        configTextField()
        stackStyle()
        stackLayout()
        configLblResult()
        configBtnChange()
        
        
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
    
    func stackStyle() {
        btn_button.translatesAutoresizingMaskIntoConstraints = false
        btn_button.setTitle("Button", for: .normal)
        btn_button.backgroundColor = .blue
        
        btn_send.translatesAutoresizingMaskIntoConstraints = false
        btn_send.setTitle("send", for: .normal)
        btn_send.backgroundColor = .darkGray
        
        stack_btn.translatesAutoresizingMaskIntoConstraints = false
        stack_btn.axis = .horizontal
        stack_btn.spacing = 8
    }
    
    func stackLayout() {
        view.addSubview(stack_btn)
        stack_btn.addArrangedSubview(btn_button)
        stack_btn.addArrangedSubview(UIView())
        stack_btn.addArrangedSubview(btn_send)
        stack_btn.distribution = .fill
        
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            stack_btn.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20),
            stack_btn.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20),
            stack_btn.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20),
        ])
    }
             
    func configLblResult() {
        lbl_result.text = "0"
        
        view.addSubview(lbl_result)
        lbl_result.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            lbl_result.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lbl_result.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func configLblState() {
        lbl_state.text = "number"
    }
    
    func configBtnChange() {
        btn_change.setTitle("변환", for: .normal)
        btn_change.backgroundColor = .purple
        //btn_change.titleLabel?.adjustsFontSizeToFitWidth = true
        
        view.addSubview(btn_change)
        btn_change.translatesAutoresizingMaskIntoConstraints = false
        
        btn_change.addTarget(self, action: #selector(BtnChangeTapped), for: .touchUpInside)
        
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
    
    @objc func BtnChangeTapped() {
        let converted = toInt(textField.text ?? "0")
        lbl_result.text = converted
    }
}

struct TextFieldDemo_Preview: PreviewProvider {
    static var previews: some View {
        TextFieldDemo().showPreview()
    }
}
