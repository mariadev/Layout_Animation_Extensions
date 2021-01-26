//
//  UIView+.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//


import UIKit

protocol LayoutHelper {
    
    func edgeTo(_ view: UIView,
                constant: CGFloat)
    
    func setAnchor(top: NSLayoutYAxisAnchor?,
                   bottom: NSLayoutYAxisAnchor?,
                   right: NSLayoutXAxisAnchor?,
                   left: NSLayoutXAxisAnchor?,
                   paddingTop: CGFloat,
                   paddingBottom: CGFloat,
                   paddingLeft: CGFloat,
                   paddingRight: CGFloat
    )
    
    func edgeToSafeArea(_ view: UIView, constant: CGFloat)
    
    func setWidthWithMultiplier(viewWidth: NSLayoutDimension,
                                multiplier: CGFloat,
                                constant: CGFloat)
    func setHeightMultiplier(viewHeight: NSLayoutDimension,
                             multiplier: CGFloat,
                             constant: CGFloat)
    func setHeight(_ height: CGFloat) -> UIView
    func setWidth(_ width: CGFloat) -> UIView 
    
}

protocol LayoutHelperUIViewUIStackHelper  {
    func Stack(_ axis: NSLayoutConstraint.Axis,
               views: [UIView], spacing: CGFloat,
               alignment: UIStackView.Alignment,
               distribution: UIStackView.Distribution)
    -> CustomUIStackView
    func VStack(_ views: UIView...,
                spacing: CGFloat,
                alignment: UIStackView.Alignment,
                distribution: UIStackView.Distribution)
    -> CustomUIStackView
    func HStack(_ views: UIView...,
                spacing: CGFloat,
                alignment: UIStackView.Alignment,
                distribution: UIStackView.Distribution)
    -> CustomUIStackView
}

extension LayoutHelper where Self: UIView {
    
    func edgeTo(_ view: UIView,
                constant: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: view.topAnchor, constant: constant).isActive = true
        leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constant).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: constant).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: constant).isActive = true
        
    }
    
    func edgeToSafeArea(_ view: UIView,
                        constant: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constant).isActive = true
        leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: constant).isActive = true
        trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: constant).isActive = true
        bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: constant).isActive = true
        
    }
    
    func setAnchor(top: NSLayoutYAxisAnchor?,
                   bottom: NSLayoutYAxisAnchor?,
                   right: NSLayoutXAxisAnchor?,
                   left: NSLayoutXAxisAnchor?,
                   paddingTop: CGFloat = 0,
                   paddingBottom: CGFloat = 0,
                   paddingLeft: CGFloat = 0,
                   paddingRight: CGFloat = 0) {
        
        translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        if let left = left {
            trailingAnchor.constraint(equalTo: left, constant: -paddingRight).isActive = true
        }
        if let right = right {
            leadingAnchor.constraint(equalTo: right, constant: paddingLeft).isActive = true
        }
    }
    
    func setWidthWithMultiplier(viewWidth: NSLayoutDimension,
                                multiplier: CGFloat = 0,
                                constant: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalTo: viewWidth, multiplier: multiplier, constant: constant).isActive = true
        
    }
    func setHeightMultiplier(viewHeight: NSLayoutDimension,
                             multiplier: CGFloat = 0,
                             constant: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalTo: viewHeight, multiplier: multiplier, constant: constant).isActive = true
        
    }
    
    func setHeight(_ height: CGFloat) -> UIView {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
    
    func setWidth(_ width: CGFloat) -> UIView {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }
    
}

extension LayoutHelperUIViewUIStackHelper where Self: UIView {
    @discardableResult
    func Stack(_ axis: NSLayoutConstraint.Axis = .vertical,
               views: [UIView],
               spacing: CGFloat = 0,
               alignment: UIStackView.Alignment = .fill,
               distribution: UIStackView.Distribution = .fill)
    -> CustomUIStackView {
        let stackView = CustomUIStackView(arrangedSubviews: views)
        stackView.axis = axis
        stackView.spacing = spacing
        stackView.alignment = alignment
        stackView.distribution = distribution
        addSubview(stackView)
        stackView.edgeTo(self)
        return stackView
    }
    @discardableResult
    func VStack(_ views: UIView...,
                spacing: CGFloat = 0,
                alignment: UIStackView.Alignment = .fill,
                distribution: UIStackView.Distribution = .fill)
    -> CustomUIStackView {
        print(views)
        return Stack(.vertical,
                     views: views,
                     spacing: spacing,
                     alignment: alignment,
                     distribution: distribution)
    }
    
    @discardableResult
    func HStack(_ views: UIView...,
                spacing: CGFloat = 0,
                alignment: UIStackView.Alignment = .fill,
                distribution: UIStackView.Distribution = .fill)
    -> CustomUIStackView {
        return Stack(.horizontal,
                     views: views,
                     spacing: spacing,
                     alignment: alignment,
                     distribution: distribution)
    }
    
}

class CustomUIView : UIView, LayoutHelper, LayoutHelperUIViewUIStackHelper {
    
}
class CustomUIImageView : UIImageView, LayoutHelper {
    
}


