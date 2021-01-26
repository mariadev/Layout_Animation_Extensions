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
        "image8",

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
        
        collection.register(TitleSection.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "Views")
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: verticalCell)
        collection.register(AlbumCell.self, forCellWithReuseIdentifier: horizontalCell)
    }
    
}

extension CollectionView: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        push (item : indexPath.row)
    }
    
    func push (item : Int) {
        detailViewController.item = item
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
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: verticalCell, for: indexPath)
            let image = UIImage(named: itemsSection1[indexPath.row])
            let cellImage = CustomUIImageView(image: image)
            cell.contentView.addSubview(cellImage)
            layoutImage(imageView: cellImage, cell: cell)
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: horizontalCell, for: indexPath) as! AlbumCell
        cell.parentViewController = self
        return cell
    }
}

extension CollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 1 {
            let rectShortSide = (collectionView.frame.width - 8) / 4
            let rectLongSide = (collectionView.frame.height - 8) / 4
            return CGSize(width: rectShortSide , height: rectLongSide)
        }
        return CGSize(width: view.frame.width , height: view.frame.height/3)
    }
    
    func layoutImage(imageView: CustomUIImageView, cell: UICollectionViewCell) {
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.setAnchor(top: cell.topAnchor, bottom: cell.bottomAnchor, right: cell.leadingAnchor, left: cell.trailingAnchor, paddingLeft: 4, paddingRight: 4)
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

