//
//  ViewController.swift
//  CowryWiseClone
//
//  Created by waheedCodes on 02/10/2020.
//  Copyright © 2020 waheedCodes. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    static let identifier = "CellIdentifier"
    
    lazy var onBoardingCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .systemPink
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        return collectionView
        
    }()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(onBoardingCollectionView)
        
        onBoardingCollectionView.anchorToTop(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
        
        onBoardingCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: RootViewController.identifier)
        
    }

}

extension RootViewController: UICollectionViewDelegate {
    
}

extension RootViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RootViewController.identifier, for: indexPath)
        
        cell.backgroundColor = .systemBlue
        
        return cell
        
    }
    
}
