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
}

extension ItemListPresenter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuse", for: indexPath)
        cell.textLabel?.text = "테스트"
        return cell
    }
    
}
