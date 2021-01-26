//
//  AlbumCell.swift
//  Stackview
//
//  Created by Maria on 25/01/2021.
//

import UIKit


class AlbumCell: UICollectionViewCell {
    
    fileprivate var itemsSection2: [String] = [
        "image0",
        "image1",
        "image2",
        "image3",
        "image4",
        "image5",
        "image6",
        "image7",
        
    ]
    
    let parent = CollectionView()
    let horizontalCell = "cell"
    
    let collectionView: CustomUICollectionView = {
        let cv = CustomUICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        return cv
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        setupLayout()
        appyTheme()
    }
    
    func setUp () {
        addSubview(collectionView)
        collectionView.edgeTo(self)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: horizontalCell)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AlbumCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let rectShortSide = (collectionView.frame.width - 8) / 4
        let rectLongSide = (collectionView.frame.height - 8) / 1.2
        
        return CGSize(width: rectShortSide , height: rectLongSide)
    }
    
    func layoutImage(imageView: CustomUIImageView, cell: UICollectionViewCell) {
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.setAnchor(top: cell.topAnchor, bottom: cell.bottomAnchor, right: cell.leadingAnchor, left: cell.trailingAnchor, paddingLeft: 4, paddingRight: 4)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
    
}

extension AlbumCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemsSection2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: horizontalCell, for: indexPath)
        let image = UIImage(named: self.itemsSection2[indexPath.row])
        let cellImage = CustomUIImageView(image: image)
        cell.contentView.addSubview(cellImage)
        layoutImage(imageView: cellImage, cell: cell)
        
        return cell
        
    }
    
}

extension AlbumCell: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        parent.push(item : indexPath.row)
        print(indexPath.row)
    }
}

extension AlbumCell {
    
    func  setupLayout () {
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .horizontal
        collectionView.contentInset = UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
        
    }
    
    func appyTheme() {
        collectionView.backgroundColor = .clear
        
    }
    
}
