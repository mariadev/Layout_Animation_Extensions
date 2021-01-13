//
//  SevenViewController.swift
//  Stackview
//
//  Created by Maria on 13/01/2021.
//

import UIKit

class SevenViewController: UIViewController {
    
    
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
        container.VStack(customeViews.view1.HStack(customeViews.view6,
                                                   customeViews.view7,
                                                   distribution: .fillEqually),
                         customeViews.view2.HStack(customeViews.view4,
                                                   customeViews.view5,
                                                   distribution: .fillEqually),
                         customeViews.view3.HStack(customeViews.view8,
                                                   customeViews.view9,
                                                   distribution: .fillEqually),
                         
                         spacing: 8,
                         distribution: .fillEqually
        )
        
    }
    
    private func style() {
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
 
}



