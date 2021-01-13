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
    
    fileprivate var items: [String] = [
        "image0",
        "image1",
        "image2",
        "image3",
        "image4",
        "image5",
        "image6",
        "image7",
        "image8",
        "image9",
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 0
        
        let collection = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .white
        
        
        view.addSubview(collection)
        
        collection.dataSource = self
        collection.delegate = self
        
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CELL")
        collection.contentInset = UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
        
    }
    
}

extension CollectionView: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let item =  ModelControllers.getController(item: indexPath.row)
        present(item, animated: true, completion: nil)
    }
}

extension CollectionView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CELL", for: indexPath)
        cell.backgroundColor = .white
        
        let image = UIImage(named: self.items[indexPath.row])
        let cellImage = UIImageView(image: image)
        cell.contentView.addSubview(cellImage)
        layoutImage(imageView: cellImage, cell: cell)
        
        return cell
    }
    
}


extension CollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let rectShortSide = (collectionView.frame.width - 8) / 4
        let rectLongSide = (collectionView.frame.height - 8) / 4
        
        return CGSize(width: rectShortSide , height: rectLongSide)
    }
    
    func layoutImage(imageView: UIImageView, cell: UICollectionViewCell) {
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: cell.topAnchor, constant: 0).isActive = true
        imageView.leadingAnchor.constraint(equalTo: cell.leadingAnchor, constant: 4).isActive = true
        imageView.trailingAnchor.constraint(equalTo: cell.trailingAnchor, constant: -4).isActive = true
        imageView.bottomAnchor.constraint(equalTo: cell.bottomAnchor, constant: -0).isActive = true
    }
}


