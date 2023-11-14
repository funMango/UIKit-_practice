//
//  GameListCell.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/13.
//

import UIKit
import SwiftUI


class GameListCell: UITableViewCell {
    var game: Game = Game(title: "", rank: 0, deviceImg: "")
    
    lazy var deviceImg: UIImageView = {
        let temp = UIImageView()
        temp.image = UIImage(systemName: game.deviceImg)
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    lazy var name: UILabel = {
        let temp = UILabel()
        temp.text = game.title
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    lazy var rank: UILabel = {
        let temp = UILabel()
        temp.text = String(game.rank)
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    var stackView: UIStackView = {
        let temp = UIStackView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.axis = .horizontal
        temp.spacing = 8
        temp.distribution = .fill
        temp.alignment = .leading
        return temp
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    convenience init(style: UITableViewCell.CellStyle, reuseIdentifier: String?, game: Game) {
        self.init(style: style, reuseIdentifier: reuseIdentifier)
        self.game = game
        stackViewLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
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
            return GameListCell(style: .default, reuseIdentifier: "Cell", game: Game(title: "Zelda", rank: 1, deviceImg: "playstation.logo"))
        }
        
        func updateUIView(_ uiView: UITableViewCell, context:
                          UIViewRepresentableContext<CustomCellPreview.CellPreviewContainer>) {
            
        }
        
        typealias UIViewType = UITableViewCell
    }
}
