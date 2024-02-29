//
//  Date + extention.swift
//  WorkoutApp
//
//  Created by Vladislav Ryabtsev on 28.02.2024.
//

import Foundation


extension Date {
   
    private var calendar: Calendar {
        return Calendar.current
    }
    
    
    var startOfWeek: Date {
        let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firstDay = calendar.date(from: components) else { return self}        
        return calendar.date(byAdding: .day, value: 0, to: firstDay) ?? self
    }
    
    
    func agoForeword(to days: Int) -> Date {
        calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    
    func stripTime() -> Date {
        let components = calendar.dateComponents([.year, .month,. day], from: self)
        return calendar.date(from: components) ?? self
    }
    
}
