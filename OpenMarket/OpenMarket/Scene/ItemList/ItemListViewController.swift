//
//  OpenMarket - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit
import SnapKit

class ItemListViewController: UIViewController {
    private lazy var presenter = ItemListPresenter(viewController: self)

    private lazy var tableView: UITableView = {
       let tableView = UITableView()
        tableView.dataSource = presenter
        tableView.delegate = self
        tableView.register(ItemCell.self, forCellReuseIdentifier: "reuse")
        return tableView
    }()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        
    }
}

extension ItemListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectRow()
    }
}

extension ItemListViewController: ItemListProtocol {
    func updateNavigation() {
        self.navigationItem.title = "야아 마켓"
    }
    
    func updateView() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(self.view)
        }
    }
    
    func presentItemViewController() {
        let vc = ItemViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}



