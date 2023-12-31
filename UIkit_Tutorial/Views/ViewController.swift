//
//  ViewController.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/10.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    let testLabel = TestLabel()
    
    let lblTest = UILabel()
    let btnTest = UIButton()
    let testSlider = UISlider()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testLabel.configLbltest(lblTest)
        
        configureLblTest(lblTest)
        configBtnTest()
        configTestSlider()
    }
    
    func configureLblTest(_ label: UILabel) {
        view.addSubview(label)
        
        let safeArea = view.safeAreaLayoutGuide
        label.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16).isActive = true
        label.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 25).isActive = true
        label.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16).isActive = true
    }
    
    func configBtnTest() {
        
        btnTest.setTitle("Click", for: .normal)
        btnTest.backgroundColor = .purple
        btnTest.translatesAutoresizingMaskIntoConstraints = false
        
        btnTest.addTarget(self, action: #selector(btnTestTapped), for: .touchUpInside)
        
        view.addSubview(btnTest)
        
        let safeArea = view.safeAreaLayoutGuide
        btnTest.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20).isActive = true
        btnTest.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -20).isActive = true
        btnTest.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20).isActive = true
    }
    
    @objc func btnTestTapped() {
        lblTest.text = "Thank you"
    }
    
    func configTestSlider() {
        
        testSlider.translatesAutoresizingMaskIntoConstraints = false
        testSlider.maximumValue = 10
        testSlider.minimumValue = 0
        testSlider.value = 5
                
        view.addSubview(testSlider)
                
        let safeArea = view.safeAreaLayoutGuide
        
        let leading = NSLayoutConstraint(item: testSlider,
                                                 attribute: .leading,
                                                 relatedBy: .equal,
                                                 toItem: safeArea,
                                                 attribute: .leading,
                                                 multiplier: 1,
                                                 constant: 50)
        
        let trailing = NSLayoutConstraint(item: testSlider,
                                                 attribute: .trailing,
                                                 relatedBy: .equal,
                                                 toItem: safeArea,
                                                 attribute: .trailing,
                                                 multiplier: 1,
                                                 constant: -50)
        
        let top = NSLayoutConstraint(item: testSlider,
                                                 attribute: .top,
                                                 relatedBy: .equal,
                                                 toItem: safeArea,
                                                 attribute: .top,
                                                 multiplier: 1,
                                                 constant: 100)
        
        NSLayoutConstraint.activate([leading, trailing, top])
    }
}

struct ViewController_PreView: PreviewProvider {
    static var previews: some View {
        ViewController().showPreview()
    }
}
