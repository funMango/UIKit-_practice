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
    let deviceImg: String
}

extension Game {
    static var data = [
        Game(title: "Zelda", rank: 1, deviceImg: "playstation.logo"),
        Game(title: "Mario", rank: 2, deviceImg: "playstation.logo"),
        Game(title: "Halo infinite", rank: 3, deviceImg: "xbox.logo"),
        Game(title: "Fortnine", rank: 4, deviceImg: "playstation.logo"),
        Game(title: "Far cry5", rank: 5, deviceImg: "xbox.logo"),
    ]
}
