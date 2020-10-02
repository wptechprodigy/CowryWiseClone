//
//  ViewController.swift
//  CowryWiseClone
//
//  Created by waheedCodes on 02/10/2020.
//  Copyright © 2020 waheedCodes. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UICollectionViewDelegateFlowLayout {
    
    static let identifier = "CellIdentifier"
    
    lazy var onBoardingCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        return collectionView
        
    }()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.addSubview(onBoardingCollectionView)
        
        onBoardingCollectionView.anchorToTop(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
        
        onBoardingCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: RootViewController.identifier)
        
    }

}
