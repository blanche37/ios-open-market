//
//  ItemViewController.swift
//  OpenMarket
//
//  Created by yun on 2022/02/09.
//

import UIKit

class ItemViewController: UIViewController {
    private lazy var presenter = ItemPresenter(viewController: self)
}

extension ItemViewController: ItemProtocol {
    
}
