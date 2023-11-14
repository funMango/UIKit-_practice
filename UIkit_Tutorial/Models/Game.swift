//
//  Game.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/13.
//

import Foundation

struct Game: Hashable {
    let title: String
    let image: String
    let publisher: String
    let develoer: String
    let description: String
    let releaseDate: String
    let deviceImg: String
}

extension Game {
    static var data = [
        Game(title: "ARK: Ultimate Survival Edition",
             image: "ARK",
             publisher: "Studio Wildcard",
             develoer: "Studio Wildcard",
             description: "Experience everything that the ARK franchise has to offer in this definitive collection! Tame and ride primeval creatures as you explore savage lands, team up with other players to compete in epic tribal battles, and travel together on the greatest Dinosaur-filled adventure of all time.",
             releaseDate: "2021. 5. 27.",
             deviceImg: "xbox.logo"),
        
        Game(title: "Assassin's Creed® Odyssey",
             image: "odyssey",
             publisher: "Ubisoft",
             develoer: "Ubisoft Quebec",
             description: "Assassin's Creed® Odyssey에서 당신의 운명을 시험해 보십시오. 낙오자에서 살아있는 전설이 되기까지, 긴 여정을 따라가며 당신의 과거에 숨겨진 비밀을 밝혀내고 고대 그리스의 운명을 바꾸어야 합니다.",
             releaseDate: "2018. 10. 5.",
             deviceImg: "xbox.logo"),
        
        Game(title: "ASSASSIN’S CREED® ORIGINS",
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
             deviceImg: "xbox.logo"),                
    ]
}
