//
//  BaseController.swift
//  WorkoutApp
//
//  Created by Vladislav Ryabtsev on 18.02.2024.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layoutViews()
        configure()
        
    }
    
    
}

@objc extension BaseController {
    func addViews() {}
    
    func layoutViews() {}
    
    func configure() {
        view.backgroundColor = R.Colors.background
    }
    
    @objc func navBarLeftButtonHandler() {
        print("левая нажата")
    }
    
    @objc func navBarRightButtonHandler() {
        print("правая нажата")
    }
    
    
}

extension BaseController {
    func addNavBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inactive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
        
    }
    
}


