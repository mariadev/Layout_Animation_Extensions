//
//  SixViewController.swift
//  Stackview
//
//  Created by Maria on 13/01/2021.
//

import UIKit

class SixViewController: UIViewController {
    
    
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
                         customeViews.view5.HStack(customeViews.view6,
                                                   customeViews.view7,
                                                   customeViews.view8,
                                                   customeViews.view9,
                                                   spacing: 8,
                                                   distribution: .fillEqually)
                            .setupSubview(backgroundColor: MyLittlePonyPalette.melon, cornerRadius: 5)
                            .padding([.allMargins], amount: 8),
                         
                         spacing: 8,
                         distribution: .fillEqually
        )
        
    }
    
    private func style() {
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    
}



