//
//  GameDetailView.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/15.
//

import UIKit
import SwiftUI

class GameDetailView: UIViewController {
    private var game = Game(
       title: "Default",
       image: "OdysseyOrigin",
       publisher: "Default",
       develoer: "Default",
       description:
           """
           ASSASSIN’S CREED® ORIGINS에서 펼쳐지는 새로운 시작
           위엄과 음모가 공존하던 시대, 고대 이집트가 무자비한 권력 투쟁 속에 사라져 갈 위기에 처해 있습니다. 암살단이 창립된 그때로 돌아가 잔혹한 비밀과 잊혀진 신화의 베일을 벗기십시오.\n
           전설 속의 국가를 체험하십시오\n
           나일 강을 항해하고, 이 거대하고 예측불가한 지역을 탐험하며 피라미드의 신비를 밝히거나 위험한 고대 세력 및 야수들과 싸우십시오.\n
           ASSASSIN’S CREED® ORIGINS에서 펼쳐지는 새로운 시작
           위엄과 음모가 공존하던 시대, 고대 이집트가 무자비한 권력 투쟁 속에 사라져 갈 위기에 처해 있습니다. 암살단이 창립된 그때로 돌아가 잔혹한 비밀과 잊혀진 신화의 베일을 벗기십시오.\n
           전설 속의 국가를 체험하십시오\n
           나일 강을 항해하고, 이 거대하고 예측불가한 지역을 탐험하며 피라미드의 신비를 밝히거나 위험한 고대 세력 및 야수들과 싸우십시오.
           """,
       releaseDate: "2017. 10. 27.",
       deviceImg: "xbox.logo")
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    init(game: Game) {
        self.game = game
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var gameImage: UIImageView = {
      let imageView = UIImageView()
      imageView.contentMode = .scaleAspectFit
      imageView.image = UIImage(named: game.image)
      return imageView
    }()
    
    lazy var gameTitle: UILabel = {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        title.text = game.title
        return title
    }()
    
    lazy var publisherLabel: UILabel = {
        let publisher = UILabel()
        publisher.font = UIFont.systemFont(ofSize: 20)
        publisher.text = game.publisher
        return publisher
    }()
    
    lazy var descriptionLabel: UILabel = {
        let description = UILabel()
        description.font = UIFont.systemFont(ofSize: 15)
        description.text = game.description
        description.numberOfLines = 0
        description.sizeToFit()
        return description
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        layout()
    }
    
    func layout() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(gameImage)
        contentView.addSubview(gameTitle)
        contentView.addSubview(publisherLabel)
        contentView.addSubview(descriptionLabel)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
        ])
        
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
            
        ])
        
        
        let contentViewHeight = contentView.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor)
        contentViewHeight.priority = .defaultLow
        contentViewHeight.isActive = true
        
        let imageHeightConstraint = gameImage.heightAnchor.constraint(equalTo: gameImage.widthAnchor)
            imageHeightConstraint.priority = .defaultHigh
        gameImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gameImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            gameImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            gameImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            gameImage.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: -20),
            imageHeightConstraint,
        ])
        
        
        gameTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gameTitle.topAnchor.constraint(equalTo: gameImage.bottomAnchor, constant: 10),
            gameTitle.leadingAnchor.constraint(equalTo: gameImage.leadingAnchor, constant: 36),
            gameTitle.trailingAnchor.constraint(equalTo: gameImage.trailingAnchor, constant: -36),
        ])

        
        publisherLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            publisherLabel.topAnchor.constraint(equalTo: gameTitle.bottomAnchor, constant: 0),
            publisherLabel.leadingAnchor.constraint(equalTo: gameImage.leadingAnchor, constant: 36),
            publisherLabel.trailingAnchor.constraint(equalTo: gameImage.trailingAnchor, constant: -36),
        ])

        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: publisherLabel.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: gameImage.leadingAnchor, constant: 36),
            descriptionLabel.trailingAnchor.constraint(equalTo: gameImage.trailingAnchor, constant: -36),
            descriptionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
        ])
    }
}

struct GameDetailView_Preview: PreviewProvider {
    static var previews: some View {
        GameDetailView(game: Game(
            title: "Default",
            image: "OdysseyOrigin",
            publisher: "Default",
            develoer: "Default",
            description:
                """
                ASSASSIN’S CREED® ORIGINS에서 펼쳐지는 새로운 시작
                위엄과 음모가 공존하던 시대, 고대 이집트가 무자비한 권력 투쟁 속에 사라져 갈 위기에 처해 있습니다. 암살단이 창립된 그때로 돌아가 잔혹한 비밀과 잊혀진 신화의 베일을 벗기십시오.\n
                전설 속의 국가를 체험하십시오\n
                나일 강을 항해하고, 이 거대하고 예측불가한 지역을 탐험하며 피라미드의 신비를 밝히거나 위험한 고대 세력 및 야수들과 싸우십시오.\n
                ASSASSIN’S CREED® ORIGINS에서 펼쳐지는 새로운 시작
                위엄과 음모가 공존하던 시대, 고대 이집트가 무자비한 권력 투쟁 속에 사라져 갈 위기에 처해 있습니다. 암살단이 창립된 그때로 돌아가 잔혹한 비밀과 잊혀진 신화의 베일을 벗기십시오.\n
                전설 속의 국가를 체험하십시오\n
                나일 강을 항해하고, 이 거대하고 예측불가한 지역을 탐험하며 피라미드의 신비를 밝히거나 위험한 고대 세력 및 야수들과 싸우십시오.
                """,
            releaseDate: "2017. 10. 27.",
            deviceImg: "xbox.logo")).showPreview()
    }
}



