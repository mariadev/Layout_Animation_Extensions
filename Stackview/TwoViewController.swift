//
//  twoViewController.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//

//
//  ViewController.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//

import UIKit

class TwoViewController: UIViewController {
    
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
        container.VStack(customeViews.view4.setHeight(100),
                         customeViews.view5.HStack(customeViews.view1,
                                                   customeViews.view2,
                                                   customeViews.view3,
                                                   spacing: 8,
                                                   distribution: .fillEqually)
                         , spacing: 8)
        
    }
    
    private func style() {
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    
}

