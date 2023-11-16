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
              
//    lazy var gameImg: UIImageView = {
//        let temp = UIImageView()
//        temp.contentMode = .scaleAspectFill
//        //temp.image = UIImage(named: game.image)
//        temp.translatesAutoresizingMaskIntoConstraints = false
//        return temp
//    }()
//
//    lazy var title: UILabel = {
//        let temp = UILabel()
//        //temp.text = game.title
//        temp.font = UIFont.systemFont(ofSize: 15)
//        temp.translatesAutoresizingMaskIntoConstraints = false
//        return temp
//    }()
//
//    lazy var releaseDate: UILabel = {
//        let temp = UILabel()
//        //temp.text = game.releaseDate
//        temp.textColor = .gray
//        temp.font = UIFont.systemFont(ofSize: 12)
//        temp.translatesAutoresizingMaskIntoConstraints = false
//        return temp
//    }()
//
//    lazy var deviceImg: UIImageView = {
//        let temp = UIImageView()
//        //temp.image = UIImage(systemName: game.deviceImg)
//        temp.tintColor = .gray
//        temp.translatesAutoresizingMaskIntoConstraints = false
//        return temp
//    }()
    
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
        self.addSubview(gameImg)
        self.addSubview(title)
        self.addSubview(releaseDate)
        self.addSubview(deviceImg)
                
        let safeArea = self.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            gameImg.widthAnchor.constraint(equalToConstant: 50),
            gameImg.heightAnchor.constraint(equalToConstant: 100),
            gameImg.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10),
            gameImg.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20),
            
            title.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10),
            title.leadingAnchor.constraint(equalTo: gameImg.trailingAnchor, constant: 15),
            
            releaseDate.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 3),
            releaseDate.leadingAnchor.constraint(equalTo: gameImg.trailingAnchor, constant: 15),
            
            deviceImg.bottomAnchor.constraint(equalTo: gameImg.bottomAnchor, constant: -10),
            deviceImg.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -10),
            
        ])
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
