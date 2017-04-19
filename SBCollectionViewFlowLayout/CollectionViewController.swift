//
//  CollectionViewController.swift
//  SBCollectionViewFlowLayout
//
//  Created by L on 16/8/18.
//  Copyright © 2016年 c0ming. All rights reserved.
//

import UIKit

private let reuseIdentifier = "NumberCell_ReuseID"

class CollectionViewController: UICollectionViewController, SBCollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "SectionBackground"
        self.collectionView?.backgroundColor = UIColor.white
        self.collectionView?.alwaysBounceVertical = true
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 6
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 2
        case 1:
            return 5
        case 2:
            return 8
        case 3:
            return 12
        case 4:
            return 20
        case 5:
            return 33
        default:
            return 59
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:NumberCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! NumberCell
    
        cell.backgroundColor = UIColor.groupTableViewBackground
        cell.Number_Label.text = String(indexPath.row)
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let numberOfItems = collectionView.numberOfItems(inSection: section)
        return numberOfItems > 0 ? UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10) : UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, backgroundColorForSectionAt section: Int) -> UIColor {

        
        switch section {
        case 0:
            return UIColor.red
        case 1:
            return UIColor.orange
        case 2:
            return UIColor.brown
        case 3:
            return UIColor.init(colorLiteralRed: 0.3, green: 0.34, blue: 0.41, alpha: 1.0)
        case 4:
            return UIColor.lightGray
        case 5:
            return UIColor.green
        default:
            return UIColor.black
        }
    }
}
