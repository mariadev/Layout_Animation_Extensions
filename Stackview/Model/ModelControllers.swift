//
//  ModelControllers.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//

import UIKit

class ModelControllers {
    
   static func getController(item : Int) -> UIViewController {
        
        switch item {
        case 0:
            return ZeroViewController()
            
        case 1:
            return OneViewController()
            
        case 2:
            return TwoViewController()
            
        case 3:
            return ThreeViewController()
            
        case 4:
            return FourViewController()
            
        case 5:
            return FiveViewController()
            
        case 6:
            return SixViewController()
            
        case 7:
            return SevenViewController()
            
        default:
            fatalError("not supported yet")
        }
        
    }
}
