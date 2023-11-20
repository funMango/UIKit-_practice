//
//  Favorite.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/20.
//

import Foundation

struct Favorite {
    var data : [Game] = []
    
    mutating func save(with game: Game) {
        if data.contains(game) {
            self.data = data.filter{ $0 != game }
            data.insert(game, at: 0)
            return
        }
        
        data.append(game)
    }
    
    mutating func remove(index: Int) -> Game? {
        if index < data.count {
            return data.remove(at: index)
        }
        return nil
    }
    
//    mutating func remove(item: Game) -> Game? {
//        if data.contains(item) {
//            self.data = data.filter{ $0 != item }
//            return item
//        }
//        return nil
//    }
           
    mutating func insert(item: Game, at idx: Int) {
        data.insert(item, at: idx)
    }
    
    func isContain(item: Game) -> Bool {
        return data.contains(item)
    }
}
