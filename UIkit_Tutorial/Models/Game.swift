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
        
        Game(title: "Battlefield™ 2042",
             image: "Battlefield",
             publisher: "Electronic Arts",
             develoer: "DICE",
             description:
             """
             Battlefield™ 2042는 프랜차이즈의 상징인 전면전으로의 복귀를 알리는 1인칭 슈팅 게임입니다. 최첨단 무기고를 지원받으며 격렬하고 몰입도 높은 멀티플레이어 전투에 참여하세요.
             """,
             releaseDate: "2021. 6. 2.",
             deviceImg: "playstation.logo"),
        
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
        
        Game(title: "Car Mechanic Simulator 2021",
             image: "CarMechanic",
             publisher: "PlayWay SA",
             develoer: "Red Dot Games",
             description:
             """
             Car Mechanic Simulator 2021 is new production with well settled player base. Start as a fresh owner of a car garage and work your way to service empire. Get your hands dirty in highly realistic simulation game with great attention to details. Get ready to work on 4000+ unique parts and over 72 cars. Roll up your sleeves and immerse yourself into highly realistic garage environment.
             """,
             releaseDate: "2023. 6. 1.",
             deviceImg: "playstation.logo"),
        
        Game(title: "EA SPORTS™ FIFA 23",
             image: "FiFA23",
             publisher: "Electronic Arts",
             develoer: "EA Canada",
             description:
             """
             EA SPORTS™ FIFA 23에서 6월 27일에 추가 비용 없이 출시되는 FIFA Women's World Cup Australia and New Zealand 2023™을 통해 여자 국제 축구의 정점을 경험해 보세요*. 국가의 색깔을 대표하고 치열한 토너먼트를 플레이하며 역대 최고로 몰입감 넘치는 EA SPORTS™ FIFA Women's World Cup™을 경험해 보세요. 32개 출전 국가, 커스텀 경기장 외관, 시네마틱, 매치 프레젠테이션, 전용 해설 및 마지막 순간에 높이 들어 올리게 될 빛나는 트로피가 생생한 현실감을 더해줍니다.
             """,
             releaseDate: "2022. 9. 30.",
             deviceImg: "xbox.logo"),
    ]
}
