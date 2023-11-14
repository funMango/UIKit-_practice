//
//  TableViewDemo.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/13.
//

import UIKit
import SwiftUI

class TableViewDemo: UIViewController {
    
    var table: UITableView!

    let data = Game.data

    override func viewDidLoad() {
        super.viewDidLoad()
        table = UITableView()
        table.delegate = self
        table.dataSource = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        layout()
    }
    
    func layout() {
        view.addSubview(table)
        table.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            table.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            table.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            table.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            table.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
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
        let game = data[indexPath.row]
        let cell = GameListCell(style: .default, reuseIdentifier: "cell", image: game.deviceImg, name: game.title, rank: game.rank)
                
        return cell
    }
}
