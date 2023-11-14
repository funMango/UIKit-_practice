//
//  GameListCell.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/13.
//

import UIKit
import SwiftUI


class GameListCell: UITableViewCell {
    var deviceImg = UIImageView()
    var name = UILabel()
    var rank = UILabel()
    let stackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        stackViewstyle()
        stackViewLayout()
    }
    
    convenience init(style: UITableViewCell.CellStyle, reuseIdentifier: String?, image: String, name: String, rank: Int) {
        self.init(style: style, reuseIdentifier: reuseIdentifier)
        self.deviceImg.image = UIImage(systemName: image)
        self.name.text = name
        self.rank.text = String(rank)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
    
    func stackViewstyle() {
        deviceImg.translatesAutoresizingMaskIntoConstraints = false
        deviceImg.contentMode = .scaleAspectFit
        
        name.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.distribution = .fill
        stackView.alignment = .leading
    }
    
    func stackViewLayout() {
        self.addSubview(stackView)
        stackView.addArrangedSubview(rank)
        stackView.addArrangedSubview(name)
        stackView.addArrangedSubview(UIView())
        stackView.addArrangedSubview(deviceImg)
        
        let safeArea = self.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -10),
        ])
    }
}

struct CustomCellPreview: PreviewProvider {
    static var previews: some View {
        CellPreviewContainer().frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center)
    }
    
    struct CellPreviewContainer: UIViewRepresentable {
        
        func makeUIView(context: UIViewRepresentableContext<CustomCellPreview.CellPreviewContainer>) -> UITableViewCell {
            return GameListCell(style: .default, reuseIdentifier: "Cell", image: "xbox.logo", name: "Zelda", rank: 1)
        }
        
        func updateUIView(_ uiView: UITableViewCell, context:
                          UIViewRepresentableContext<CustomCellPreview.CellPreviewContainer>) {
            
        }
        
        typealias UIViewType = UITableViewCell
    }
}
