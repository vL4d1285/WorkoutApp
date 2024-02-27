//
//  OverviewController.swift
//  WorkoutApp
//
//  Created by Vladislav Ryabtsev on 07.02.2024.
//

import UIKit

class OverviewController: BaseController {

    private let navBar = OverviewNavBar()
        

}

extension OverviewController {
    
    override func addViews() {
        super.addViews()
        view.addSubview(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
        navBar.translatesAutoresizingMaskIntoConstraints = false
        
            
    }
}


