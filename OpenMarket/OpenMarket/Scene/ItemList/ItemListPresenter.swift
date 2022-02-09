//
//  ItemListPresenter.swift
//  OpenMarket
//
//  Created by yun on 2022/02/09.
//

import Foundation

protocol ItemListProtocol { }

class ItemListPresenter {
    private let viewController: ItemListProtocol
    
    init(viewController: ItemListProtocol) {
        self.viewController = viewController
    }
}
