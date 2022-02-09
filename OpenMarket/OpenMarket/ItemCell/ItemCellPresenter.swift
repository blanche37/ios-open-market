//
//  ItemCellPresenter.swift
//  OpenMarket
//
//  Created by yun on 2022/02/09.
//

import Foundation

protocol ItemCellProtocol {
    func updateView()
}
class ItemCellPresenter {
    let cell: ItemCellProtocol
    
    init(cell: ItemCellProtocol) {
        self.cell = cell
    }
    
    func cellInit() {
        cell.updateView()
    }
}
