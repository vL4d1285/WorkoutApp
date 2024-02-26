//
//  OverviewNavBar.swift
//  WorkoutApp
//
//  Created by Vladislav Ryabtsev on 26.02.2024.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(with: Resources.Colors.separator,
                        height: 1)
    }
    
    func addAllWorkoutsButtonAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAditingAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
    override func addViews() {
        super.addViews()
        addSubview(titleLabel)
        addSubview(allWorkoutsButton)
        addSubview(addButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15)
        
        ])
    }
    
    override func configure() {
        super.configure()
        
        backgroundColor = .white
        
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = Resources.Strings.NavBar.overview
        titleLabel.textColor = Resources.Colors.darkGrey
        titleLabel.font = Resources.Fonts.helveticaRegular(with: 22)
        
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkoutsButton)
                
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setImage(Resources.Images.Common.add, for: .normal)
    
    }
    
}

