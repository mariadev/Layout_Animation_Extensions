//
//  Section1CellView.swift
//  Stackview
//
//  Created by Maria on 28/01/2021.
//

import Foundation
import UIKit

class Section1CustomeCellCollectionView: UICollectionViewCell {
    
    let label = CustomUILabel()
    let imageItem = CustomUIImageView()
    let view = CustomUIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    func setUp () {
        contentView.addSubview(view)
        view.addSubview(label)
        view.addSubview(imageItem)
        
        view.edgeTo(contentView)
        imageItem.setAnchor(top: label.bottomAnchor, bottom: view.bottomAnchor, right: view.trailingAnchor, left: view.leadingAnchor,  paddingLeft: 4, paddingRight: 4)
        label.toTopAndCenter(topView:  view, centerView:  view)
        
        imageItem.contentMode = .scaleAspectFill
        imageItem.clipsToBounds = true
        imageItem.layer.cornerRadius = 15
        
        label.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.subheadline)
        label.textColor = .darkText
        
    }


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




