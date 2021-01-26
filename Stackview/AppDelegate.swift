//
//  AppDelegate.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.makeKeyAndVisible()
        let collectionViewNavigation = CollectionView().wrappedInNavigation()
        
        collectionViewNavigation.navigationBar.setBackgroundImage(UIImage(), for: .default)
        collectionViewNavigation.navigationBar.shadowImage = UIImage()
        collectionViewNavigation.navigationBar.isTranslucent = true
        
        window?.rootViewController = collectionViewNavigation
        return true
    }
    
    
}
