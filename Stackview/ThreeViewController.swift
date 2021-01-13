//
//  ThreeViewController.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//


//
//  twoViewController.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//

import UIKit

class ThreeViewController: UIViewController {
    
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
        container.VStack(customeViews.view4,
                         customeViews.view5.HStack(customeViews.view1,
                                                   customeViews.view2.setWidth(50),
                                                   customeViews.view3.setWidth(100),
                                                   spacing: 8)
                            .height(100)
                            .setupSubview(backgroundColor: MyLittlePonyPalette.mauve, cornerRadius: 5)
                            .padding([.allMargins], amount: 8)
        )
        
    }
    
    private func style() {
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
  
}

