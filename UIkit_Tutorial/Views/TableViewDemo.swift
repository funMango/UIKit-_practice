//
//  TableViewDemo.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/13.
//

import UIKit
import SwiftUI

class TableViewDemo: UITableViewController {
    var data = Game.data

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationItem.title = "Game List"
        self.navigationItem.rightBarButtonItem = editButtonItem
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    struct TableViewDemo_Preview: PreviewProvider {
        static var previews: some View {
            TableViewDemo().showPreview()
        }
    }

    // loadView를 사용하여 tableView를 직접 할당
    override func loadView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(GameListCell.self, forCellReuseIdentifier: GameListCell.identifier)
        view = tableView
    }
}

extension TableViewDemo {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GameListCell.identifier, for: indexPath) as! GameListCell
        let game = data[indexPath.row]

        cell.gameImg.image = UIImage(named: game.image)
        cell.title.text = game.title
        cell.releaseDate.text = game.releaseDate
        cell.deviceImg.image = UIImage(systemName: game.deviceImg)

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let game = data[indexPath.row]
        self.navigationController?.pushViewController(GameDetailView(game: game), animated: true)
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            data.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // 필요한 경우 추가 구현
        }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
