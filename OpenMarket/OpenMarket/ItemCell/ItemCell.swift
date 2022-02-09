//
//  ItemCell.swift
//  OpenMarket
//
//  Created by yun on 2022/02/09.
//

import UIKit

class ItemCell: UITableViewCell {
    private lazy var presenter = ItemCellPresenter(cell: self)
    
    let label: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        presenter.cellInit()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ItemCell: ItemCellProtocol {
    func updateView() {
        contentView.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}


