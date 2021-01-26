//
//  ModelControllers.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//

import UIKit

class ModelControllers {
    let customeViews = CustomeColoredViews()
    
    func getLayout(item : Int, view: UIView) {
        
        switch item {
        case 0:
            return layout0(view: view)
        case 1:
            return layout1(view: view)
        case 2:
            return layout2(view: view)
        case 3:
            return layout3(view: view)
        case 4:
            return layout4(view: view)
        case 5:
            return layout5(view: view)
        case 6:
            return layout6(view: view)
        case 7:
            return layout7(view: view)
        case 8:
            return layout8(view: view)
        default:
            fatalError("not supported yet")
        }
        
        
    }
    
    private func layout0(view: UIView) {
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        container.VStack(customeViews.view1,
                         customeViews.view2,
                         customeViews.view2,
                         spacing: 8,
                         distribution: .fillEqually)
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    
    
    private func layout1(view: UIView) {
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        container.VStack(customeViews.view4.setHeight(100), customeViews.view5, spacing: 8)
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    private func layout2(view: UIView) {
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        container.VStack(customeViews.view4.setHeight(100),
                         customeViews.view5.HStack(customeViews.view1,
                                                   customeViews.view2,
                                                   customeViews.view3,
                                                   spacing: 8,
                                                   distribution: .fillEqually)
                         , spacing: 8)
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    func layout3(view: UIView) {
        let container = CustomUIView()
        view.addSubview(container)
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
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    func layout4(view: UIView) {
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        container.VStack(customeViews.view1.setHeight(50),
                         customeViews.view2.setHeight(50),
                         customeViews.view3.setHeight(50),
                         customeViews.view4.setHeight(50),
                         customeViews.view5,
                         spacing: 8
        )
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    func layout5(view: UIView) {
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        container.VStack(customeViews.view1,
                         customeViews.view2,
                         customeViews.view3,
                         customeViews.view4,
                         customeViews.view5,
                         spacing: 8,
                         distribution: .fillEqually
        )
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    func layout6(view: UIView) {
        let container = CustomUIView()
        view.addSubview(container)
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
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    
    func layout7(view: UIView){
        let container = CustomUIView()
        view.addSubview(container)
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
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    
    private func layout8(view: UIView){
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        
        let view1 = customeViews.view1
        container.addSubview(view1)
        view1.setAnchor(top: container.topAnchor, bottom: nil, right: container.leadingAnchor, left: container.trailingAnchor)
        view1.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.5,constant: 9)
        view1.dropShadow()
        
        let view2 = customeViews.view3
        container.addSubview(view2)
        view2.toBottomAndCenter(bottomView: container, centerView: container, constant: 20)
        view2.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.2)
        view2.setWidthWithMultiplier(viewWidth: container.widthAnchor, multiplier: 0.5)
        view2.dropShadow()
        view2.shake2()
        
        view.backgroundColor = .white
    }
    
    
}
