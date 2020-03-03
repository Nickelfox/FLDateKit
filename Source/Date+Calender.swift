//
//  Date+Calender.swift
//  FLDateKitDemo
//
//  Created by Abhishek Thapliyal on 03/03/20.
//  Copyright © 2020 Abhishek Thapliyal. All rights reserved.
//

import Foundation

public extension Date {
    
    // -1 for previous, +1 for next & Empty for 0
    static func getDates(days: Int) -> [Date] {
        
        if days == 0 { return [] }
        
        let today = Date()
        var dates: [Date] = [today]
        let upperBound = abs(days)
        
        for i in 1..<upperBound {
            let factor = days > 0 ? i : -i
            if let date = Calendar.current.date(byAdding: .day,
                                                value: factor,
                                                to: today) {
                if days > 0 {
                    dates.append(date)
                } else {
                    dates.insert(date, at: 0)
                }
            }
        }
        return dates
    }
    
    static func getMonths(range: Int) -> [Date] {
        
        if range == 0 { return [] }
        
        let today = Date()
        var dates: [Date] = [today]
        let upperbound = abs(range)
        
        for i in 1..<upperbound {
            let factor = range > 0 ? i : -i
            if let month = Calendar.current.date(byAdding: .month,
                                                 value: factor,
                                                 to: today) {
                if range > 0 {
                    dates.append(month)
                } else {
                    dates.insert(month, at: 0)
                }
            }
        }
        return dates
    }
}

extension Date {
    
    var currentWeek: [Date] {
        
        var arrThisWeek: [Date] = []
        
        for i in 0..<7 {
            arrThisWeek.append(Calendar.current.date(byAdding: .day,
                                                     value: i,
                                                     to: self.startOfWeek)!)
        }
        
        return arrThisWeek
    }
    
    func nextWeek(date: Date) -> [Date] {
        
        var nextWeek: [Date] = []
        
        for i in 1...7 {
            nextWeek.append(Calendar.current.date(byAdding: .day,
                                                  value: i,
                                                  to: date)!)
        }
        
        return nextWeek
    }
    
    private func previousWeek(date: Date) -> [Date] {
        
        var previousWeek: [Date] = []
        
        for i in 1...7 {
            previousWeek.append(Calendar.current.date(byAdding: .day,
                                                      value: -i,
                                                      to: date)!)
        }
        
        return previousWeek
    }
    
    private var startOfWeek: Date {
        let gregorian = Calendar(identifier: .gregorian)
        let component = gregorian.dateComponents([.yearForWeekOfYear, .weekOfYear],
                                                 from: self)
        let sunday = gregorian.date(from: component)
        return gregorian.date(byAdding: .day, value: 1, to: sunday!)!
    }
    
    func getPreviousWeeks(range: Int) -> [(monday: Date, sunday: Date)] {
        
        var weeks: [(monday: Date, sunday: Date)] = []
        
        var sunday = self.currentWeek.first!
        let monday = self.currentWeek.last!
        weeks.append((monday: monday, sunday: sunday))
        sunday = self.startOfWeek
        
        for _ in 1..<range {
            let previousWeek = self.previousWeek(date: sunday)
            weeks.insert((monday: previousWeek.first!, sunday: previousWeek.last!), at: 0)
            sunday = previousWeek.last!
        }
        
        return weeks
    }
    
}
