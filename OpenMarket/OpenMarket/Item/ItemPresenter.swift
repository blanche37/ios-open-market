//
//  ItemPresenter.swift
//  OpenMarket
//
//  Created by yun on 2022/02/09.
//

import Foundation

protocol ItemProtocol {
    
}

class ItemPresenter {
    private let viewController: ItemProtocol
    
    init(viewController: ItemProtocol) {
        self.viewController = viewController
    }
}
