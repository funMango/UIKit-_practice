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
        
        Game(title: "HALO Infinite",
             image: "HALO",
             publisher: "Xbox Game Studios",
             develoer: "343 Industries",
             description:
             """
             시즌 5: Reckoning에서는 공세에서 영감을 얻은 보상, 새로운 지도, 새로운 모드, 정교한 Forge용 AI 툴킷이 포함된 완전히 새로운 배틀 패스가 제공됩니다. 또한 시즌 5에서 이후에 선보이는 Firefight: King of the Hill에서는 참신한 반전이 담긴 사랑받는 협동 턴제 서바이벌 모드를 제공합니다.\n
             캠페인 네트워크 협동 및 임무 리플레이:
             캠페인 네트워크 협동을 통해 여러분과 최대 세 명의 친구가 Xbox와 PC 어디서든 14개의 새로운 도전 과제에 도전하고 배니시드와 싸워 Zeta Halo의 경이로움을 경험할 수 있습니다.
             임무 리플레이의 도입으로, 여러분은 마음에 드는 순간을 다시 체험하고, 수집품을 재발견하고, 경이로운 Zeta Halo를 혼자서 또는 최대 세 명의 화력조 팀원과 함께 탐험할 수 있습니다!

             """,
             releaseDate: "2023. 9. 29.",
             deviceImg: "xbox.logo"),
        
        Game(title: "EA SPORTS FC™ 24 Standard Edition",
             image: "fc24",
             publisher: "Electronic Arts",
             develoer: "EA Canada",
             description:
             """
             EA SPORTS FC™ 24는 The World’s Game의 새로운 시대를 엽니다. 19,000명 이상의 정식 라이선스 선수, 700개 이상의 팀, 30개 이상의 리그를 바탕으로 역대 최고로 현실감 넘치는 축구 경험을 선사합니다.\n

             HyperMotionV**, Opta에 의해 최적화된 플레이스타일, 향상된 Frostbite™ 엔진 등 모든 매치에서 비할 데 없는 현실감을 제공하는 세 가지 최첨단 기술로 게임을 더욱 가까이에서 즐기세요.
             HyperMotionV는 게임 내 움직임이 실제 경기장에서의 움직임을 정확하게 반영하도록 180개 이상의 남녀 프로 매치의 볼류메트릭 데이터를 사용하여 현실에 가까운 게임플레이를 구현합니다.
             플레이스타일은 Opta 및 기타 소스의 데이터를 각 선수의 현실감과 개성을 높이는 시그니처 능력으로 해석하여 선수들을 입체적으로 구현합니다.
             향상된 Frostbite™ 엔진은 The World’s Game에 생생한 디테일을 더해주며 각 경기에 새로운 차원의 몰입감을 선사합니다.
             """,
             releaseDate: "2023. 9. 29.",
             deviceImg: "xbox.logo"),
    ]
}
