//
//  FiveViewController.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//


import UIKit

class FiveViewController: UIViewController {
    
    
    let container = UIView()
    let customeViews = CustomeViews()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(container)
        layout()
        style()
        
    }
    
    private func layout() {
        container.edgeTo(view)
        container.VStack(customeViews.view1,
                         customeViews.view2,
                         customeViews.view3,
                         customeViews.view4,
                         customeViews.view5,
                         spacing: 8,
                         distribution: .fillEqually
        )
        
    }
    
    private func style() {
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
     
}


