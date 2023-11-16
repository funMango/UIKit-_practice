//
//  TableViewDemo.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/13.
//

import UIKit
import SwiftUI

class TableViewDemo: UITableViewController, UISearchResultsUpdating {
    var gameData = Game.data
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationItem.title = "Game List"
        self.navigationItem.rightBarButtonItem = editButtonItem
        
        configSearchBar()
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
    
    func configSearchBar() {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "검색 입력"
        searchController.obscuresBackgroundDuringPresentation = true
        searchController.searchResultsUpdater = self
        
        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }

        gameData = Game.data.filter { $0.title.contains(text) }
        self.tableView.reloadData()
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
        return self.gameData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GameListCell.identifier, for: indexPath) as! GameListCell
        let game = gameData[indexPath.row]

        cell.gameImg.image = UIImage(named: game.image)
        cell.title.text = game.title
        cell.releaseDate.text = game.releaseDate
        cell.deviceImg.image = UIImage(systemName: game.deviceImg)

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let game = gameData[indexPath.row]
        self.navigationController?.pushViewController(GameDetailView(game: game), animated: true)
    }
    
    // 편집 모드에서 셀의 이동을 가능하게 합니다.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // 셀의 위치를 변경하고 데이터를 업데이트합니다.
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedItem = gameData.remove(at: sourceIndexPath.row)
        gameData.insert(movedItem, at: destinationIndexPath.row)
    }
    
    // 옆으로 밀어서 삭제기능 실행
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            gameData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // 필요한 경우 추가 구현
        }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

