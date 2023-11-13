//
//  Game.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/13.
//

import Foundation

struct Game: Hashable {
    let title: String
    let rank: Int
    let image: String
}

extension Game {
    static var data = [
        Game(title: "밸런스 게임", rank: 1, image: "circle.square"),
        Game(title: "이구동성", rank: 2, image: "arcade.stick.console"),
        Game(title: "OX 게임", rank: 3, image: "gamecontroller.fill"),
        Game(title: "상식퀴즈", rank: 4, image: "playstation.logo"),
        Game(title: "초성게임", rank: 5, image: "xbox.logo"),
    ]
}
