//
//  fourViewController.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//

import UIKit

class FourViewController: UIViewController {
    
    
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
        container.VStack(customeViews.view1.setHeight(50),
                         customeViews.view2.setHeight(50),
                         customeViews.view3.setHeight(50),
                         customeViews.view4.setHeight(50),
                         customeViews.view5,
                         spacing: 8
        )
        
    }
    
    private func style() {
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
      
}


