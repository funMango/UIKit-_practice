//
//  GameListCell.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/13.
//

import UIKit
import SwiftUI


class GameListCell: UITableViewCell {
    static let identifier = "cell"
    
    let gameImg = UIImageView()
    let title = UILabel()
    let releaseDate = UILabel()
    let deviceImg = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        styled()
        layout()
    }
            
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
    
    func styled() {
        gameImg.contentMode = .scaleAspectFill
        gameImg.translatesAutoresizingMaskIntoConstraints = false
                
        title.font = UIFont.systemFont(ofSize: 15)
        title.translatesAutoresizingMaskIntoConstraints = false
        
        releaseDate.textColor = .gray
        releaseDate.font = UIFont.systemFont(ofSize: 12)
        releaseDate.translatesAutoresizingMaskIntoConstraints = false
        
        deviceImg.tintColor = .gray
        deviceImg.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout() {
        contentView.addSubview(gameImg)
        contentView.addSubview(title)
        contentView.addSubview(releaseDate)
        contentView.addSubview(deviceImg)
        
        NSLayoutConstraint.activate([
            gameImg.widthAnchor.constraint(equalToConstant: 50),
            gameImg.heightAnchor.constraint(equalToConstant: 100),
            gameImg.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            gameImg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            title.leadingAnchor.constraint(equalTo: gameImg.trailingAnchor, constant: 15),
            
            releaseDate.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 3),
            releaseDate.leadingAnchor.constraint(equalTo: gameImg.trailingAnchor, constant: 15),
            
            deviceImg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            deviceImg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
        ])
    }
    
    func configure(with game: Game) {
        gameImg.image = UIImage(named: game.image)
        title.text = game.title
        releaseDate.text = game.releaseDate
        deviceImg.image = UIImage(systemName: game.deviceImg)
    }

}

struct CustomCellPreview: PreviewProvider {
    static var previews: some View {
        CellPreviewContainer().frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)
    }

    struct CellPreviewContainer: UIViewRepresentable {

        func makeUIView(context: UIViewRepresentableContext<CustomCellPreview.CellPreviewContainer>) -> UITableViewCell {
            let game = Game(title: "ASSASSIN’S CREED® ORIGINS",
                 image: "OdysseyOrigin",
                 publisher: "Ubisoft",
                 develoer: "Ubisoft",
                 description:
                 """
                 ASSASSIN’S CREED® ORIGINS에서 펼쳐지는 새로운 시작
                 위엄과 음모가 공존하던 시대, 고대 이집트가 무자비한 권력 투쟁 속에 사라져 갈 위기에 처해 있습니다. 암살단이 창립된 그때로 돌아가 잔혹한 비밀과 잊혀진 신화의 베일을 벗기십시오.
                 전설 속의 국가를 체험하십시오
                 나일 강을 항해하고, 이 거대하고 예측불가한 지역을 탐험하며 피라미드의 신비를 밝히거나 위험한 고대 세력 및 야수들과 싸우십시오.
                 """,
                 releaseDate: "2017. 10. 27.",
                 deviceImg: "xbox.logo")
            let gameCell = GameListCell()
            
            gameCell.gameImg.image = UIImage(named: game.image)
            gameCell.title.text = game.title
            gameCell.releaseDate.text = game.releaseDate
            gameCell.deviceImg.image = UIImage(systemName: game.deviceImg)
            
            
            return gameCell
        }

        func updateUIView(_ uiView: UITableViewCell, context:
                          UIViewRepresentableContext<CustomCellPreview.CellPreviewContainer>) {

        }

        typealias UIViewType = UITableViewCell
    }
}
