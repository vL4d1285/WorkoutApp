//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by Vladislav Ryabtsev on 08.02.2024.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.darkGrey
        ]
        
    }
    
}
