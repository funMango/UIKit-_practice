//
//  TestView.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/14.
//

import UIKit
import SwiftUI

class TestView: UIViewController {
    
    lazy var testImg: UIImageView = {
        let temp = UIImageView()
        temp.contentMode = .scaleAspectFill
        temp.image = UIImage(named: "ARK")
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        // Do any additional setup after loading the view.
    }
    
    func layout() {
        self.view.addSubview(testImg)
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            testImg.widthAnchor.constraint(equalToConstant: 50),
            testImg.heightAnchor.constraint(equalToConstant: 100),
            
            testImg.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 20),
            testImg.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20),
            //testImg.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20),
           
        ])
    }
}

struct TestView_PreView: PreviewProvider {
    static var previews: some View {
        TestView().showPreview()
    }
}
