//
//  WeekView.swift
//  WorkoutApp
//
//  Created by Vladislav Ryabtsev on 28.02.2024.
//

import UIKit

final class WeekView: BaseView {
    
    private let calendar = Calendar.current
    private let stackView = UIStackView()
    
}

extension WeekView {
    override func addViews() {
        super.addViews()
        addView(stackView)
    }
    
   override func layoutViews() {
       super.layoutViews()
      
       NSLayoutConstraint.activate([
        stackView.topAnchor.constraint(equalTo: topAnchor),
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor)])
       
       
   }
    
   override func configureViews() {
       super.configureViews()
       
       stackView.spacing = 7
       stackView.distribution = .fillEqually
           
       var weekDays = calendar.shortStandaloneWeekdaySymbols
             
       if calendar.firstWeekday == 0 {
           let sun = weekDays.remove(at: 0)
           weekDays.append(sun)
       }
           
       weekDays.enumerated().forEach { index, name in
           let view = WeekDayView()
           view.configure(with: index, and: name)
           stackView.addArrangedSubview(view)
       }
       
    }
}

