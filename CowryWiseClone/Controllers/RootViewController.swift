//
//  ViewController.swift
//  CowryWiseClone
//
//  Created by waheedCodes on 02/10/2020.
//  Copyright © 2020 waheedCodes. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    let onBoardingCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .systemPink
        
        return collectionView
        
    }()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(onBoardingCollectionView)
        
        onBoardingCollectionView.anchorToTop(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
        
    }

}

