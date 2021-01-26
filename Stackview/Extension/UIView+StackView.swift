//
//  UIView+StackView.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//

import UIKit

//extension UIView {
//    
//    fileprivate func Stack(_ axis: NSLayoutConstraint.Axis = .vertical, views: [UIView], spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView {
//       let stackView = CustomUIStackView(arrangedSubviews: views)
//        stackView.axis = axis
//        stackView.spacing = spacing
//        stackView.alignment = alignment
//        stackView.distribution = distribution
//        addSubview(stackView)
//        stackView.edgeTo(self)
//        return stackView
//    }
//    
//    @discardableResult
//    open func VStack(_ views: UIView..., spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView {
//       print(views)
//        return Stack(.vertical, views: views, spacing: spacing, alignment: alignment, distribution: distribution)
//    }
//    
//    @discardableResult
//    open func HStack(_ views: UIView..., spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView {
//        return Stack(.horizontal, views: views, spacing: spacing, alignment: alignment, distribution: distribution)
//    }
//    
//}
