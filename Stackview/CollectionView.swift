//
//  CollectionView.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//

//
//  ViewController.swift
//  sectionOne
//
//  Created by Maria on 04/12/2020.
//

import UIKit


class CollectionView: UIViewController {
    
    fileprivate var itemsSection1: [String] = [
        "image1.0",
        "image1.0",
        "image1.0",
        "image1.0",
        "image1.0",
        "image1.0",
        "image1.0",
        
    ]
    
    fileprivate var labelTextSection1: [String] = [
        "Shake",
        "Fadein",
        "FadeOut",
        "FadeColor",
        "PopIn",
        "PopOut",
        "Hop",
    ]
    
    let collection = UICollectionView(frame: UIScreen.main.bounds, collectionViewLayout: UICollectionViewFlowLayout())
    let detailViewController = DetailViewController()
    
    let backgroundImageView = CustomUIImageView()
    
    let verticalCell = "verticalCell"
    let horizontalCell = "horizontalCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        appyTheme()
        
        collection.dataSource = self
        collection.delegate = self
        
        collection.register(Section1CustomeCellCollectionView.self, forCellWithReuseIdentifier: verticalCell)
        collection.register(Section0CustomeCellCollectionView.self, forCellWithReuseIdentifier: horizontalCell)
        collection.register(CustomeTitleSectionCollectionView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CustomeTitleSectionCollectionView.identifier)
    }
    
}

extension CollectionView: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailViewController = DetailViewController()
        detailViewController.item = indexPath.row
        detailViewController.section = indexPath.section
        navigationController?.pushViewController( detailViewController , animated: true)
    }
}

extension CollectionView: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (section == 1) {
            return itemsSection1.count
        }
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (indexPath.section == 1) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: verticalCell, for: indexPath) as! Section1CustomeCellCollectionView
            let image = UIImage(named: itemsSection1[indexPath.row])
            let text = labelTextSection1[indexPath.row]
            cell.label.text = text
            cell.imageItem.image = image
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: horizontalCell, for: indexPath) as! Section0CustomeCellCollectionView
        cell.parentViewController = self
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if (indexPath.section == 1) {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CustomeTitleSectionCollectionView.identifier, for: indexPath) as! CustomeTitleSectionCollectionView
            header.configure()
            header.label.text = "Animations"
            return header
        }
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CustomeTitleSectionCollectionView.identifier, for: indexPath) as! CustomeTitleSectionCollectionView
        header.configure()
        header.label.text = "StackViews"
        return header
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: 50)
    }
}

extension CollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let rectShortSide = (collectionView.frame.width) / 4
        let rectLongSide = (collectionView.frame.height) / 4
        if indexPath.section == 1 {
            let rectLongSide = (collectionView.frame.height) / 3.4
            return CGSize(width: rectShortSide , height: rectLongSide)
        }
        return CGSize(width: view.frame.width , height: rectLongSide)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 1 {
            return UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)
        }
        return UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)
    }
    
}

extension CollectionView {
    
    func setupLayout () {
        
        let layout = collection.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .vertical
        
        view.addSubview(backgroundImageView)
        backgroundImageView.edgeTo(view)
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.image = UIImage(named: "background")
        
        collection.contentInset = UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
        view.addSubview(collection)
    }
    
    func appyTheme() {
        collection.backgroundColor = .clear
    }
}

