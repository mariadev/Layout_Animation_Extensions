//
//  TitleSection.swift
//  Stackview
//
//  Created by Maria on 19/01/2021.
//

import UIKit

final class TitleSection: UICollectionReusableView {
    static let resuseIdentifier = String(describing: TitleSection.self)
    
    let textLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        textLabel.text = "hola"
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure() {
        addSubview(textLabel)
        textLabel.font = UIFont.preferredFont(forTextStyle: .title2)
    }
}
