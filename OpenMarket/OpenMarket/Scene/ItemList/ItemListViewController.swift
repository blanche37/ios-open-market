//
//  OpenMarket - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ItemListViewController: UIViewController {
    private lazy var presenter = ItemListPresenter(viewController: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ItemListViewController: ItemListProtocol {
    
}

