//
//  Date+String.swift
//  FLDateKit
//
//  Created by Abhishek Thapliyal on 25/02/20.
//  Copyright © 2020 Abhishek Thapliyal. All rights reserved.
//

import Foundation


public extension Date {
    
    private func getDateFormatter(format: String,
                                  am: String = "AM",
                                  pm: String = "PM") -> DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.amSymbol = am
        formatter.pmSymbol = pm
        return formatter
    }
    
}


// MARK: TODAY, YESTERDAY, TOMORROW

public extension Date {
    
    var yesterday: Date {
        return Calendar.current.date(byAdding: .day,
                                     value: -1,
                                     to: noon)!
    }
    
    var tomorrow: Date {
        return Calendar.current.date(byAdding: .day,
                                     value: 1,
                                     to: noon)!
    }
    
    var noon: Date {
        return Calendar.current.date(bySettingHour: 12,
                                     minute: 0,
                                     second: 0,
                                     of: self)!
    }
    
    var isDateToday: Bool {
        let formatter = self.getDateFormatter(format: DateFormat.ddMMMyyyy.value)
        let selfDateString = formatter.string(from: self)
        let current = formatter.string(from: Date())
        return selfDateString == current
    }
    
    var isDateYesterDay: Bool {
        let formatter = self.getDateFormatter(format: DateFormat.ddMMMyyyy.value)
        let selfDateString = formatter.string(from: self)
        let current = formatter.string(from: self.yesterday)
        return selfDateString == current
    }
    
    var isDateTomorrow: Bool {
        let formatter = self.getDateFormatter(format: DateFormat.ddMMMyyyy.value)
        let selfDateString = formatter.string(from: self)
        let current = formatter.string(from: self.tomorrow)
        return selfDateString == current
    }
    
}
