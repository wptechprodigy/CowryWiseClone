//
//  PageCell.swift
//  CowryWiseClone
//
//  Created by waheedCodes on 02/10/2020.
//  Copyright © 2020 waheedCodes. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        setupViews()
        
    }
    
    func setupViews() {
        
        backgroundColor = .systemPink
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
