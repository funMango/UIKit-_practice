//
//  FavoriteListView.swift
//  UIkit_Tutorial
//
//  Created by 이민호 on 2023/11/20.
//

import UIKit
import SwiftUI

class FavoriteListView: UITableViewController {
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationItem.title = "Favorites"
        self.navigationItem.rightBarButtonItem = editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func loadView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(GameListCell.self, forCellReuseIdentifier: GameListCell.identifier)
        view = tableView
    }
    
    func save(with game: Game) {
        appDelegate?.favorite.save(with: game)
    }
    
    struct FavoriteListView_Preview: PreviewProvider {
        static var previews: some View {
            FavoriteListView().showPreview()
        }
    }
}

extension FavoriteListView {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = appDelegate?.favorite.data.count {
            return count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GameListCell.identifier, for: indexPath) as! GameListCell
        if let game = appDelegate?.favorite.data[indexPath.row] {
            cell.configure(with: game)
        }
                
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let game = appDelegate?.favorite.data[indexPath.row] {            
            self.navigationController?.pushViewController(GameDetailView(game: game), animated: true)
        }
    }
    
//    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//
//    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//        let movedItem = favorite.remove(index: sourceIndexPath.row)
//        if let item = movedItem {
//            favorite.insert(item: item, at: destinationIndexPath.row)
//        }
//    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
