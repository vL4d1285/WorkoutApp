//
//  BaseController.swift
//  WorkoutApp
//
//  Created by Vladislav Ryabtsev on 18.02.2024.
//

import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
    }
    
    
}

@objc extension BaseController {
    func addViews() {}
    
    func layoutViews() {}
    
    func configure() {
        view.backgroundColor = Resources.Colors.background
    }
        
    
    
}
