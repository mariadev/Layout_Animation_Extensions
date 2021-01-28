//
//  ViewController.swift
//  Stackview
//
//  Created by Maria on 12/01/2021.
//

import UIKit

class DetailViewController: UIViewController {
    let model = ModelControllers()
    let customeViews = CustomeColoredViews()
    var item = Int()
    var section = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.getLayout(item : item, view: view, section: section)
    }
    
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = false
    }
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
    }
    
}
