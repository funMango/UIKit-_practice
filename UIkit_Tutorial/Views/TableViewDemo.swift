//
//  TableViewDemo.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/13.
//

import UIKit
import SwiftUI

//protocol sendData {
//    func send(data: Game)
//}

class TableViewDemo: UIViewController {
    
    var table: UITableView!

    let data = Game.data

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Game List"
        table = UITableView()
        table.delegate = self
        table.dataSource = self
        table.register(GameListCell.self, forCellReuseIdentifier: GameListCell.identifier)
        layout()
    }
           
    func layout() {
        view.addSubview(table)
        table.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            table.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            table.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            table.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            table.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
    
    struct TableViewDemo_Preview: PreviewProvider {
        static var previews: some View {
            TableViewDemo().showPreview()
        }
    }
}

extension TableViewDemo: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GameListCell.identifier, for: indexPath) as! GameListCell
        let game = data[indexPath.row]
        
        cell.gameImg.image = UIImage(named: game.image)
        cell.title.text = game.title
        cell.releaseDate.text = game.releaseDate
        cell.deviceImg.image = UIImage(systemName: game.deviceImg)
                                                                  
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let game = data[indexPath.row]
        self.navigationController?.pushViewController(GameDetailView(game: game), animated: true)
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120 // 수동으로 높이를 설정
    }
}
