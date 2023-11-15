//
//  FirstViewController.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/15.
//

import UIKit
import SwiftUI

class FirstViewController: UIViewController {
    static let FirstId = "first"
            
    var configuration = UIButton.Configuration.tinted()
    var titleContainer = AttributeContainer()
    var subtitleContainer = AttributeContainer()

    private lazy var sendBtn = UIButton(configuration: configuration, primaryAction: UIAction(handler: { _ in
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }))
    
    lazy var titleLabel: UILabel = {
        let title = UILabel(frame: CGRect(x: view.frame.width/2 - 125, y: 300, width: 250, height: 50))
        title.text = "First View"
        title.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return title
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationItem.title = "FirstVC"
        configStyle()
        configLayout()
    }
    
    func configStyle() {
        titleContainer.font = UIFont.boldSystemFont(ofSize: 20)
        subtitleContainer.foregroundColor = UIColor.white.withAlphaComponent(0.5)
        
        configuration.attributedTitle = AttributedString("Title", attributes: titleContainer)
        configuration.attributedSubtitle = AttributedString("Subtitle", attributes: subtitleContainer)
        configuration.image = UIImage(systemName: "swift")
        configuration.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: 20)
        configuration.imagePadding = 10
        configuration.titlePadding = 3
        configuration.title = "send"
        configuration.subtitle = "Go to second"
        configuration.image = UIImage(systemName: "heart")        
    }
    
    func configLayout() {
        self.view.addSubview(sendBtn)
        self.view.addSubview(titleLabel)
        
        sendBtn.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sendBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            sendBtn.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            sendBtn.heightAnchor.constraint(equalToConstant: 60),
            sendBtn.widthAnchor.constraint(equalToConstant: 150),
            
            titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
        
    struct FirstViewController_Preview: PreviewProvider {
        static var previews: some View {
            FirstViewController().showPreview()
        }
    }
}



