//
//  ItemListPresenter.swift
//  OpenMarket
//
//  Created by yun on 2022/02/09.
//

import UIKit

protocol ItemListProtocol {
    func updateNavigation()
    func updateView()
    func presentItemViewController()
}

class ItemListPresenter: NSObject {
    private let viewController: ItemListProtocol
    
    init(viewController: ItemListProtocol) {
        self.viewController = viewController
    }
    
    func viewDidLoad() {
        viewController.updateNavigation()
        viewController.updateView()
    }
    
    func didSelectRow() {
        viewController.presentItemViewController()
    }
}

extension ItemListPresenter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuse", for: indexPath) as? ItemCell else {
            return UITableViewCell()
        }
        cell.label.text = "테스트"
        return cell
    }
    
}
