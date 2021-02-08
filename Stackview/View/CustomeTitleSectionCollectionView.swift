//
//  TitleSection.swift
//  Stackview
//
//  Created by Maria on 19/01/2021.
//

import UIKit

final class CustomeTitleSectionCollectionView: UICollectionReusableView {
    
    static let identifier: String = "TitleSection"
    
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        style()
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure() {
        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
    private func style() {
        label.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.title1)
        label.textColor = .darkText
    }
}
