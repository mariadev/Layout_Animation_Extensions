//
//  ModelControllers.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//

import UIKit

class ModelControllers {
    let customeViews = CustomeColoredViews()
    
    func getLayout(item : Int, view: UIView, section: Int) {
        
        if section == 0 {
            switch item {
            case 0:
                return layoutSection0Item0(view: view)
            case 1:
                return layoutSection0Item1(view: view)
            case 2:
                return layoutSection0Item1(view: view)
            case 3:
                return layoutSection0Item3(view: view)
            case 4:
                return layoutSection0Item4(view: view)
            case 5:
                return layoutSection0Item5(view: view)
            case 6:
                return layoutSection0Item6(view: view)
            case 7:
                return layoutSection0Item7(view: view)
            case 8:
                return layoutSection0Item8(view: view)
            default:
                fatalError("not supported yet")
            }
        }
        
        if section == 1 {
            switch item {
            case 0:
                return layoutSection1Item0(view: view)
            case 1:
                return layoutSection1Item1(view: view)
            case 2:
                return layoutSection1Item2(view: view)
            case 3:
                return layoutSection1Item3(view: view)
            case 4:
                return layoutSection1Item4(view: view)
            case 5:
                return layoutSection1Item5(view: view)
            case 6:
                return layoutSection1Item6(view: view)
            default:
                fatalError("not supported yet")
            }
        }
    
    }
    
    private func layoutSection0Item0(view: UIView) {
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
    
    
    private func layoutSection0Item1(view: UIView) {
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        container.VStack(customeViews.view4.setHeight(100), customeViews.view5, spacing: 8)
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    private func layoutSection0Item2(view: UIView) {
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
    func layoutSection0Item3(view: UIView) {
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
        )
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    func layoutSection0Item4(view: UIView) {
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
    func layoutSection0Item5(view: UIView) {
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
    func layoutSection0Item6(view: UIView) {
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
                            .setupSubview(backgroundColor: MyLittlePonyPalette.melon, cornerRadius: 5),
                         
                         spacing: 8,
                         distribution: .fillEqually
        )
        container.backgroundColor = MyLittlePonyPalette.babyPowder
        
    }
    
    func layoutSection0Item7(view: UIView){
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
    
    func layoutSection0Item8(view: UIView){
        let formView = FormView()
        view.addSubview(formView)
        formView.edgeToSafeArea(view, constant: 20)
        view.backgroundColor = .white
        
    }
    
    private func layoutSection1Item0(view: UIView){
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        
        let view1 = customeViews.view1
        container.addSubview(view1)
        view1.setAnchor(top: container.topAnchor, bottom: nil, right: container.trailingAnchor , left: container.leadingAnchor)
        view1.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.5,constant: 9)
        view1.dropShadow()
        
        let view2 = customeViews.view0
        container.addSubview(view2)
        view2.toBottomAndCenter(bottomView: container, centerView: container, constant: 20)
        view2.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.2)
        view2.setWidthWithMultiplier(viewWidth: container.widthAnchor, multiplier: 0.5)
        view2.dropShadow()
        view2.shake()
        
        view.backgroundColor = .white
    }
    
    private func layoutSection1Item1(view: UIView){
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        
        let view1 = customeViews.view1
        container.addSubview(view1)
        view1.setAnchor(top: container.topAnchor, bottom: nil, right: container.trailingAnchor, left:  container.leadingAnchor)
        view1.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.5,constant: 9)
        view1.dropShadow()
        
        let view3 = customeViews.view2
        container.addSubview(view3)
        view3.toBottomAndCenter(bottomView: container, centerView: container, constant: 20)
        view3.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.2)
        view3.setWidthWithMultiplier(viewWidth: container.widthAnchor, multiplier: 0.5)
        view3.dropShadow()
        view3.fadeIn()
        
        view.backgroundColor = .white
    }
    
    private func layoutSection1Item2(view: UIView){
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        
        let view1 = customeViews.view1
        container.addSubview(view1)
        view1.setAnchor(top: container.topAnchor, bottom: nil, right: container.trailingAnchor, left: container.leadingAnchor)
        view1.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.5,constant: 9)
        view1.dropShadow()
        
        let view10 = customeViews.view3
        container.addSubview(view10)
        view10.toBottomAndCenter(bottomView: container, centerView: container, constant: 20)
        view10.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.2)
        view10.setWidthWithMultiplier(viewWidth: container.widthAnchor, multiplier: 0.5)
        view10.dropShadow()
        view10.fadeOut()
        
        view.backgroundColor = .white
    }
    
    private func layoutSection1Item3(view: UIView){
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        
        let view1 = customeViews.view1
        container.addSubview(view1)
        view1.setAnchor(top: container.topAnchor, bottom: nil, right:container.trailingAnchor, left: container.leadingAnchor)
        view1.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.5,constant: 9)
        view1.dropShadow()
        
        let view4 = customeViews.view4
        container.addSubview(view4)
        view4.toBottomAndCenter(bottomView: container, centerView: container, constant: 20)
        view4.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.2)
        view4.setWidthWithMultiplier(viewWidth: container.widthAnchor, multiplier: 0.5)
        view4.dropShadow()
        view4.fadeColor()
        
        view.backgroundColor = .white
    }
    
    private func layoutSection1Item4(view: UIView){
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        
        let view1 = customeViews.view1
        container.addSubview(view1)
        view1.setAnchor(top: container.topAnchor, bottom: nil, right: container.trailingAnchor, left: container.leadingAnchor)
        view1.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.5,constant: 9)
        view1.dropShadow()
        
        let view5 = customeViews.view5
        container.addSubview(view5)
        view5.toBottomAndCenter(bottomView: container, centerView: container, constant: 20)
        view5.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.2)
        view5.setWidthWithMultiplier(viewWidth: container.widthAnchor, multiplier: 0.5)
        view5.dropShadow()
        view5.popIn()

        view.backgroundColor = .white
    }
    
    private func layoutSection1Item5(view: UIView){
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        
        let view1 = customeViews.view1
        container.addSubview(view1)
        view1.setAnchor(top: container.topAnchor, bottom: nil, right: container.trailingAnchor, left: container.leadingAnchor)
        view1.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.5,constant: 9)
        view1.dropShadow()
        
        let view2 = customeViews.view6
        container.addSubview(view2)
        view2.toBottomAndCenter(bottomView: container, centerView: container, constant: 20)
        view2.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.2)
        view2.setWidthWithMultiplier(viewWidth: container.widthAnchor, multiplier: 0.5)
        view2.dropShadow()
        view2.popOut()
        view.backgroundColor = .white
    }
    
    private func layoutSection1Item6(view: UIView){
        let container = CustomUIView()
        view.addSubview(container)
        container.edgeTo(view)
        
        let view1 = customeViews.view1
        container.addSubview(view1)
        view1.setAnchor(top: container.topAnchor, bottom: nil, right: container.trailingAnchor, left: container.leadingAnchor)
        view1.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.5,constant: 9)
        view1.dropShadow()
        
        let view2 = customeViews.view7
        container.addSubview(view2)
        view2.toBottomAndCenter(bottomView: container, centerView: container, constant: 20)
        view2.setHeightMultiplier(viewHeight: container.heightAnchor, multiplier: 0.2)
        view2.setWidthWithMultiplier(viewWidth: container.widthAnchor, multiplier: 0.5)
        view2.dropShadow()
        view2.hop()
        
        view.backgroundColor = .white
    }
    
    
}
